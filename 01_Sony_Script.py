import pandas as pd
import numpy as np

# Import source files, create and treatment of the data frames
df_sellout_1 = pd.read_excel('BW_CPFR_OUTLET_HU10.xls', sheet_name='1')
df_sellout_1[['Calendar Year/Week','Customer']] = df_sellout_1[['Calendar Year/Week','Customer']].astype(np.str)

df_sellout_2 = pd.read_excel('BW_CPFR_OUTLET_HU10.xls', sheet_name='2')
df_sellout_2 = df_sellout_2[~df_sellout_2['Material'].isin(['Material'])]

df_sellout_3 = pd.read_excel('BW_CPFR_OUTLET_HU10.xls', sheet_name='3')
df_sellout_3 = df_sellout_3[~df_sellout_3['Material'].isin(['Material'])]

df_sellout = pd.concat([df_sellout_1,df_sellout_2,df_sellout_3])
df_sellout.drop(['Europe Prod Hier 5','Mat Name','Saleable SoH Qty'], axis=1, inplace=True)
df_sellout[['Sellthru Qty']] = df_sellout[['Sellthru Qty']].astype(np.int64)

df_netsales = pd.read_excel('BW_SDS_HU10(006).xls')
df_netsales.columns = df_netsales.iloc[0]
df_netsales.drop(df_netsales.index[:1], axis=0, inplace=True)
df_netsales.drop(['Calendar Year/Month','Europe Prod Hier 3','Sales Quantity','P5 Net Sales LC','Material Name'], axis=1, inplace=True)
df_netsales.rename(columns={'P5 Net Sales EUR':'NetSales'}, inplace=True)
df_netsales[['NetSales']] = df_netsales[['NetSales']].astype(np.float64)

# Merge data frames into a unique and create the Sell Out NS column
df_source = (pd.merge(df_netsales, df_sellout, on=['Calendar Year/Week','Material','Customer'], how='outer'))
df_source = df_source.replace(np.nan, 0, int==True)
df_source = (df_source.groupby(['Calendar Year/Week','Customer','Material'], as_index=False)
            .agg({'Sellthru Qty':'sum', 'NetSales':'mean'})
            .rename(columns={'NetSales':'NS Average'}))
n_column = df_source['Calendar Year/Week'].str.split('.', n=1, expand = True)
df_source['Week'] = n_column[0]
df_source['Year'] = n_column[1]
df_source.drop(['Calendar Year/Week'], axis = 1, inplace = True)
df_source = df_source.reindex(columns=['Year','Week','Customer','Material','NS Average','Sellthru Qty'])
df_source['Sell Out NS'] = df_source['NS Average'] * df_source['Sellthru Qty']
df_source[['Year','Week']] = df_source[['Year','Week']].astype(np.int64)

# Stratification of the Material and Customer information for each week and exportation to excel as report file
writer = pd.ExcelWriter('Top5NS_Report.xlsx', engine='openpyxl')

x = df_source['Week'].max()

list = [x-1, x-2, x-3]

for i in list:
    df_material = df_source.copy()
    df_material.drop(['Customer'], axis=1, inplace=True)
    df_material = df_material.loc[df_material['Week']== i]
    df_material['% Ratio'] = df_material['Sell Out NS'] / df_material.groupby('Week')['Sell Out NS'].sum()[i] * 100
    df_material['% Ratio'] = df_material['% Ratio'].replace(np.nan, 0, int==True)
    df_material['Rank'] = df_material['Sell Out NS'].rank(method='min',na_option='top', ascending=False)
    df_material.sort_values(by=['Sell Out NS','NS Average'], ascending=False, inplace = True)
    df_material = df_material.reindex(columns=['Rank','Year','Week','Material','NS Average','Sellthru Qty','Sell Out NS','% Ratio'])
    df_material.drop(df_material.index[5:], axis=0, inplace=True)
    df_material.to_excel(writer, sheet_name='Material_W'+str(i), index=False)

    df_customer = df_source.copy()
    df_customer.drop(['Material'], axis=1, inplace=True)
    df_customer = df_customer.loc[df_customer['Week']== i]
    df_customer['% Ratio'] = df_customer['Sell Out NS'] / df_customer.groupby('Week')['Sell Out NS'].sum()[i] * 100
    df_customer['% Ratio'] = df_customer['% Ratio'].replace(np.nan, 0, int==True)
    df_customer['Rank'] = df_customer['Sell Out NS'].rank(method='min',na_option='top', ascending=False)
    df_customer.sort_values(by=['Sell Out NS','NS Average'], ascending=False, inplace = True)
    df_customer = df_customer.reindex(columns=['Rank','Year','Week','Customer','NS Average','Sellthru Qty','Sell Out NS','% Ratio'])
    df_customer.drop(df_customer.index[5:], axis=0, inplace=True)
    df_customer.to_excel(writer, sheet_name='Customer_W'+str(i), index=False)

writer.save()

print('Top5NS_Report was generated successfully!')
