# 1. Prepare tables
# - Company table fields (CompanyID, CompanyName)									+ populate with Dummy data
# - Customer belongs to Company fields (CustomerID, CustomerName, CompanyID)		+ populate with Dummy data
# - Customer has Net Sales		fields (CustomerID, Quarter, Amount)				+ populate with Dummy data Quurter like 2019Q1

DROP DATABASE IF EXISTS SALES_DB;
CREATE DATABASE IF NOT EXISTS SALES_DB;
USE SALES_DB;

CREATE TABLE COMPANY (
	COMPANY_ID INT AUTO_INCREMENT NOT NULL,
    COMPANY_NAME VARCHAR(100) NOT NULL,
    PRIMARY KEY (COMPANY_ID),
    UNIQUE KEY (COMPANY_NAME)
    );
    
CREATE TABLE CUSTOMER (
	CUSTOMER_ID INT AUTO_INCREMENT NOT NULL,
    CUSTOMER_NAME VARCHAR(100) 	NOT NULL,
    COMPANY_ID INT NOT NULL,
	PRIMARY KEY (CUSTOMER_ID),
    UNIQUE KEY (CUSTOMER_NAME),
    FOREIGN KEY (COMPANY_ID)  REFERENCES COMPANY (COMPANY_ID) ON DELETE CASCADE
    );
    
CREATE TABLE CUSTOMER_NETSALE (
	CUSTOMER_ID INT,
    YEAR_QUARTER VARCHAR(100) NOT NULL,
    AMOUNT DECIMAL(10,2),
    FOREIGN KEY (CUSTOMER_ID)  REFERENCES CUSTOMER (CUSTOMER_ID) ON DELETE CASCADE
    );
    
    
INSERT INTO COMPANY (COMPANY_NAME) VALUES ('Elit Etiam Laoreet LLP'),
('Vulputate Incorporated'),
('Ante Ipsum Foundation'),
('Cras Vehicula Industries'),
('Scelerisque Mollis Phasellus Consulting'),
('Vivamus Molestie Company'),
('Aliquam Nisl Nulla Consulting'),
('Quam Incorporated'),
('Urna Nullam Ltd'),
('Nibh Vulputate Associates'),
('Ipsum Limited'),
('Lectus Pede Et Corp.'),
('Orci Quis Lectus Associates'),
('Duis Ltd'),
('Penatibus Foundation');

INSERT INTO CUSTOMER (CUSTOMER_NAME, COMPANY_ID) VALUES ('Colton X. Gould', '9'),
('Baxter D. Norton', '2'),
('Kiara B. Mcdowell', '15'),
('Illiana M. Blackwell', '15'),
('Gay A. Townsend', '6'),
('Angelica W. Moon', '12'),
('Rae E. Bush', '2'),
('Illana G. Murray', '1'),
('Paloma C. Wright', '11'),
('Bryar P. Boyd', '4'),
('Marvin R. Bauer', '1'),
('Daphne U. David', '7'),
('Cassidy G. Perez', '15'),
('Gavin L. Knowles', '11'),
('Winter W. Curtis', '2'),
('Serena C. Summers', '2'),
('Logan V. West', '10'),
('Lars T. Greer', '7'),
('Keegan U. Robbins', '11'),
('Craig J. Callahan', '14'),
('Isaiah O. Frank', '4'),
('Xaviera X. Bartlett', '14'),
('Zenia R. Strong', '13'),
('Tyler G. Howell', '13'),
('Bruno J. Mendoza', '11'),
('Justine N. Dyer', '10'),
('Brendan G. Klein', '4'),
('Amena O. Moon', '9'),
('Zelda D. Douglas', '12'),
('Oliver H. Richards', '11'),
('Keane Q. Carr', '3'),
('Melinda O. Young', '3'),
('Felix I. Lee', '11'),
('Portia H. Howe', '7'),
('Pearl K. Dunn', '12'),
('Bertha X. Owens', '3'),
('Belle W. Wong', '5'),
('Ignatius J. Matthews', '9'),
('Stella D. Hernandez', '1'),
('Howard K. Jarvis', '5'),
('Tamekah S. Mayo', '2'),
('Mohammad C. Cervantes', '8'),
('Hall K. Drake', '7'),
('Karly W. Gentry', '15'),
('Hanna J. Klein', '1'),
('Germane N. Lott', '2'),
('Indira Q. Shepherd', '4'),
('Kenyon B. Cline', '2'),
('Griffin I. Fleming', '7'),
('Cameran Q. Cherry', '11'),
('Olivia M. Camacho', '8'),
('Gwendolyn L. Alvarez', '13'),
('Rudyard K. Wyatt', '14'),
('Rebekah Q. Newton', '11'),
('Kessie Y. Holman', '15'),
('Joelle V. Cardenas', '2'),
('Uriel P. Scott', '11'),
('Joshua F. Osborne', '9'),
('Evan W. Velasquez', '12'),
('Quinlan I. Cochran', '14');

INSERT INTO CUSTOMER_NETSALE (CUSTOMER_ID, YEAR_QUARTER, AMOUNT) VALUES ('1', '2018Q1', '1623'),
('1', '2018Q1', '1253'),
('1', '2018Q1', '497'),
('1', '2018Q1', '1131'),
('2', '2018Q1', '903'),
('4', '2018Q1', '1608'),
('5', '2018Q1', '655'),
('5', '2018Q1', '901'),
('5', '2018Q1', '1281'),
('5', '2018Q1', '523'),
('5', '2018Q1', '613'),
('7', '2018Q1', '1511'),
('7', '2018Q1', '1899'),
('7', '2018Q1', '698'),
('8', '2018Q1', '1643'),
('8', '2018Q1', '1432'),
('9', '2018Q1', '521'),
('9', '2018Q1', '1853'),
('10', '2018Q1', '1754'),
('11', '2018Q1', '777'),
('11', '2018Q1', '592'),
('11', '2018Q1', '1132'),
('12', '2018Q1', '1465'),
('12', '2018Q1', '1427'),
('12', '2018Q1', '1279'),
('12', '2018Q1', '1891'),
('12', '2018Q1', '1084'),
('12', '2018Q1', '1588'),
('13', '2018Q1', '1590'),
('13', '2018Q1', '975'),
('13', '2018Q1', '1889'),
('14', '2018Q1', '595'),
('14', '2018Q1', '886'),
('14', '2018Q1', '1347'),
('15', '2018Q1', '1281'),
('15', '2018Q1', '639'),
('17', '2018Q1', '850'),
('17', '2018Q1', '1055'),
('17', '2018Q1', '604'),
('18', '2018Q1', '1384'),
('18', '2018Q1', '479'),
('18', '2018Q1', '587'),
('19', '2018Q1', '1344'),
('19', '2018Q1', '773'),
('20', '2018Q1', '1706'),
('20', '2018Q1', '796'),
('21', '2018Q1', '900'),
('22', '2018Q1', '1997'),
('24', '2018Q1', '940'),
('25', '2018Q1', '1423'),
('26', '2018Q1', '1781'),
('27', '2018Q1', '1427'),
('28', '2018Q1', '1349'),
('28', '2018Q1', '1858'),
('30', '2018Q1', '757'),
('32', '2018Q1', '1546'),
('32', '2018Q1', '1291'),
('32', '2018Q1', '1463'),
('33', '2018Q1', '1150'),
('33', '2018Q1', '572'),
('33', '2018Q1', '558'),
('34', '2018Q1', '492'),
('34', '2018Q1', '797'),
('34', '2018Q1', '985'),
('34', '2018Q1', '865'),
('35', '2018Q1', '984'),
('36', '2018Q1', '1495'),
('36', '2018Q1', '1459'),
('37', '2018Q1', '1568'),
('37', '2018Q1', '1685'),
('38', '2018Q1', '987'),
('38', '2018Q1', '1949'),
('39', '2018Q1', '1348'),
('40', '2018Q1', '640'),
('40', '2018Q1', '1822'),
('41', '2018Q1', '1464'),
('42', '2018Q1', '542'),
('42', '2018Q1', '1485'),
('42', '2018Q1', '1777'),
('42', '2018Q1', '589'),
('42', '2018Q1', '1297'),
('43', '2018Q1', '951'),
('43', '2018Q1', '534'),
('43', '2018Q1', '745'),
('44', '2018Q1', '954'),
('44', '2018Q1', '1861'),
('44', '2018Q1', '667'),
('44', '2018Q1', '1251'),
('44', '2018Q1', '497'),
('45', '2018Q1', '1099'),
('45', '2018Q1', '705'),
('46', '2018Q1', '1232'),
('46', '2018Q1', '1362'),
('47', '2018Q1', '1302'),
('49', '2018Q1', '1605'),
('49', '2018Q1', '1563'),
('50', '2018Q1', '1740'),
('50', '2018Q1', '841'),
('51', '2018Q1', '1777'),
('52', '2018Q1', '1465'),
('52', '2018Q1', '1029'),
('52', '2018Q1', '645'),
('52', '2018Q1', '928'),
('53', '2018Q1', '1176'),
('53', '2018Q1', '781'),
('53', '2018Q1', '1472'),
('55', '2018Q1', '536'),
('55', '2018Q1', '1290'),
('56', '2018Q1', '706'),
('57', '2018Q1', '1722'),
('57', '2018Q1', '1540'),
('58', '2018Q1', '1040'),
('58', '2018Q1', '1706'),
('60', '2018Q1', '1072'),
('60', '2018Q1', '1012'),
('60', '2018Q1', '1135'),
('1', '2018Q2', '675'),
('1', '2018Q2', '1760'),
('1', '2018Q2', '1407'),
('1', '2018Q2', '1079'),
('1', '2018Q2', '1508'),
('1', '2018Q2', '1605'),
('2', '2018Q2', '1648'),
('2', '2018Q2', '1537'),
('3', '2018Q2', '1770'),
('3', '2018Q2', '1231'),
('3', '2018Q2', '1895'),
('3', '2018Q2', '596'),
('4', '2018Q2', '1329'),
('4', '2018Q2', '1871'),
('5', '2018Q2', '926'),
('6', '2018Q2', '769'),
('6', '2018Q2', '1268'),
('6', '2018Q2', '780'),
('8', '2018Q2', '1995'),
('8', '2018Q2', '1159'),
('9', '2018Q2', '455'),
('9', '2018Q2', '1302'),
('10', '2018Q2', '1663'),
('10', '2018Q2', '452'),
('11', '2018Q2', '1132'),
('12', '2018Q2', '1466'),
('12', '2018Q2', '1014'),
('12', '2018Q2', '944'),
('13', '2018Q2', '1904'),
('13', '2018Q2', '1674'),
('13', '2018Q2', '1777'),
('14', '2018Q2', '1904'),
('15', '2018Q2', '855'),
('17', '2018Q2', '504'),
('17', '2018Q2', '840'),
('17', '2018Q2', '1911'),
('18', '2018Q2', '1023'),
('18', '2018Q2', '1551'),
('18', '2018Q2', '1754'),
('19', '2018Q2', '595'),
('19', '2018Q2', '1984'),
('20', '2018Q2', '1878'),
('20', '2018Q2', '1478'),
('20', '2018Q2', '1035'),
('21', '2018Q2', '1954'),
('22', '2018Q2', '846'),
('23', '2018Q2', '689'),
('23', '2018Q2', '1402'),
('23', '2018Q2', '967'),
('24', '2018Q2', '757'),
('24', '2018Q2', '1601'),
('25', '2018Q2', '459'),
('25', '2018Q2', '1225'),
('25', '2018Q2', '901'),
('25', '2018Q2', '1220'),
('25', '2018Q2', '1608'),
('26', '2018Q2', '1158'),
('27', '2018Q2', '792'),
('27', '2018Q2', '1470'),
('27', '2018Q2', '1398'),
('28', '2018Q2', '1817'),
('28', '2018Q2', '1542'),
('29', '2018Q2', '1037'),
('30', '2018Q2', '1623'),
('30', '2018Q2', '860'),
('30', '2018Q2', '1293'),
('31', '2018Q2', '1400'),
('32', '2018Q2', '492'),
('33', '2018Q2', '1936'),
('33', '2018Q2', '1562'),
('34', '2018Q2', '828'),
('34', '2018Q2', '1050'),
('35', '2018Q2', '1393'),
('35', '2018Q2', '1935'),
('37', '2018Q2', '779'),
('38', '2018Q2', '1253'),
('38', '2018Q2', '1674'),
('39', '2018Q2', '1505'),
('40', '2018Q2', '1137'),
('40', '2018Q2', '1191'),
('41', '2018Q2', '1588'),
('41', '2018Q2', '1840'),
('42', '2018Q2', '1099'),
('43', '2018Q2', '812'),
('43', '2018Q2', '1721'),
('44', '2018Q2', '1702'),
('44', '2018Q2', '832'),
('45', '2018Q2', '900'),
('45', '2018Q2', '691'),
('46', '2018Q2', '1442'),
('46', '2018Q2', '844'),
('47', '2018Q2', '1050'),
('47', '2018Q2', '724'),
('48', '2018Q2', '1588'),
('50', '2018Q2', '963'),
('50', '2018Q2', '755'),
('50', '2018Q2', '1167'),
('50', '2018Q2', '1889'),
('51', '2018Q2', '528'),
('51', '2018Q2', '991'),
('51', '2018Q2', '1946'),
('52', '2018Q2', '1127'),
('52', '2018Q2', '700'),
('52', '2018Q2', '1663'),
('53', '2018Q2', '1660'),
('53', '2018Q2', '944'),
('53', '2018Q2', '498'),
('54', '2018Q2', '501'),
('55', '2018Q2', '1268'),
('55', '2018Q2', '969'),
('55', '2018Q2', '1987'),
('55', '2018Q2', '561'),
('55', '2018Q2', '583'),
('56', '2018Q2', '1560'),
('56', '2018Q2', '1577'),
('56', '2018Q2', '1075'),
('57', '2018Q2', '1677'),
('57', '2018Q2', '1686'),
('58', '2018Q2', '1888'),
('58', '2018Q2', '1632'),
('59', '2018Q2', '1521'),
('60', '2018Q2', '721'),
('60', '2018Q2', '1959'),
('1', '2018Q3', '563'),
('1', '2018Q3', '1902'),
('1', '2018Q3', '668'),
('2', '2018Q3', '1136'),
('2', '2018Q3', '1895'),
('3', '2018Q3', '731'),
('3', '2018Q3', '1498'),
('4', '2018Q3', '1365'),
('5', '2018Q3', '640'),
('5', '2018Q3', '1478'),
('6', '2018Q3', '684'),
('8', '2018Q3', '1227'),
('8', '2018Q3', '602'),
('8', '2018Q3', '529'),
('9', '2018Q3', '722'),
('9', '2018Q3', '496'),
('9', '2018Q3', '1478'),
('9', '2018Q3', '1456'),
('10', '2018Q3', '1786'),
('11', '2018Q3', '463'),
('12', '2018Q3', '1156'),
('12', '2018Q3', '1890'),
('12', '2018Q3', '750'),
('13', '2018Q3', '961'),
('13', '2018Q3', '1717'),
('13', '2018Q3', '606'),
('14', '2018Q3', '1288'),
('14', '2018Q3', '1804'),
('14', '2018Q3', '1038'),
('15', '2018Q3', '690'),
('16', '2018Q3', '1053'),
('16', '2018Q3', '1700'),
('16', '2018Q3', '793'),
('16', '2018Q3', '876'),
('16', '2018Q3', '1595'),
('17', '2018Q3', '1325'),
('18', '2018Q3', '1993'),
('19', '2018Q3', '1607'),
('19', '2018Q3', '588'),
('20', '2018Q3', '687'),
('20', '2018Q3', '801'),
('21', '2018Q3', '554'),
('21', '2018Q3', '891'),
('21', '2018Q3', '605'),
('21', '2018Q3', '1155'),
('22', '2018Q3', '1256'),
('23', '2018Q3', '490'),
('23', '2018Q3', '1141'),
('24', '2018Q3', '660'),
('26', '2018Q3', '1222'),
('26', '2018Q3', '656'),
('26', '2018Q3', '882'),
('26', '2018Q3', '1675'),
('26', '2018Q3', '1688'),
('27', '2018Q3', '1433'),
('28', '2018Q3', '812'),
('28', '2018Q3', '1577'),
('28', '2018Q3', '565'),
('28', '2018Q3', '1846'),
('29', '2018Q3', '1826'),
('29', '2018Q3', '1285'),
('29', '2018Q3', '1182'),
('29', '2018Q3', '1869'),
('29', '2018Q3', '1264'),
('30', '2018Q3', '1487'),
('30', '2018Q3', '1863'),
('31', '2018Q3', '1872'),
('31', '2018Q3', '1827'),
('32', '2018Q3', '780'),
('32', '2018Q3', '827'),
('32', '2018Q3', '1236'),
('32', '2018Q3', '711'),
('33', '2018Q3', '1221'),
('34', '2018Q3', '757'),
('36', '2018Q3', '1114'),
('36', '2018Q3', '1753'),
('36', '2018Q3', '829'),
('36', '2018Q3', '1601'),
('36', '2018Q3', '535'),
('36', '2018Q3', '1844'),
('37', '2018Q3', '989'),
('37', '2018Q3', '1534'),
('37', '2018Q3', '1163'),
('38', '2018Q3', '1281'),
('39', '2018Q3', '1119'),
('39', '2018Q3', '1695'),
('40', '2018Q3', '1717'),
('40', '2018Q3', '1188'),
('41', '2018Q3', '1023'),
('41', '2018Q3', '1661'),
('42', '2018Q3', '1750'),
('42', '2018Q3', '867'),
('43', '2018Q3', '1935'),
('45', '2018Q3', '533'),
('45', '2018Q3', '1445'),
('46', '2018Q3', '962'),
('46', '2018Q3', '1679'),
('46', '2018Q3', '1119'),
('47', '2018Q3', '1824'),
('47', '2018Q3', '1759'),
('47', '2018Q3', '486'),
('48', '2018Q3', '1692'),
('49', '2018Q3', '715'),
('50', '2018Q3', '788'),
('50', '2018Q3', '1666'),
('50', '2018Q3', '736'),
('51', '2018Q3', '1154'),
('51', '2018Q3', '792'),
('51', '2018Q3', '1055'),
('51', '2018Q3', '1495'),
('54', '2018Q3', '586'),
('54', '2018Q3', '1459'),
('54', '2018Q3', '721'),
('54', '2018Q3', '600'),
('55', '2018Q3', '1901'),
('55', '2018Q3', '1441'),
('56', '2018Q3', '563'),
('56', '2018Q3', '1320'),
('57', '2018Q3', '1396'),
('57', '2018Q3', '661'),
('57', '2018Q3', '1228'),
('58', '2018Q3', '603'),
('59', '2018Q3', '1260'),
('59', '2018Q3', '1282'),
('1', '2018Q4', '797'),
('3', '2018Q4', '928'),
('3', '2018Q4', '1736'),
('5', '2018Q4', '1618'),
('5', '2018Q4', '1849'),
('5', '2018Q4', '1533'),
('5', '2018Q4', '1892'),
('5', '2018Q4', '738'),
('6', '2018Q4', '874'),
('6', '2018Q4', '598'),
('6', '2018Q4', '882'),
('7', '2018Q4', '833'),
('8', '2018Q4', '831'),
('9', '2018Q4', '1116'),
('9', '2018Q4', '1310'),
('10', '2018Q4', '773'),
('10', '2018Q4', '731'),
('11', '2018Q4', '1253'),
('13', '2018Q4', '1881'),
('14', '2018Q4', '1035'),
('14', '2018Q4', '1479'),
('14', '2018Q4', '522'),
('14', '2018Q4', '1382'),
('14', '2018Q4', '1674'),
('14', '2018Q4', '890'),
('14', '2018Q4', '1427'),
('15', '2018Q4', '1416'),
('15', '2018Q4', '1028'),
('17', '2018Q4', '727'),
('18', '2018Q4', '1445'),
('18', '2018Q4', '1781'),
('19', '2018Q4', '980'),
('19', '2018Q4', '1332'),
('20', '2018Q4', '1583'),
('20', '2018Q4', '721'),
('20', '2018Q4', '1106'),
('22', '2018Q4', '1337'),
('22', '2018Q4', '1683'),
('22', '2018Q4', '1613'),
('22', '2018Q4', '1575'),
('23', '2018Q4', '640'),
('23', '2018Q4', '1810'),
('23', '2018Q4', '1530'),
('23', '2018Q4', '901'),
('24', '2018Q4', '642'),
('24', '2018Q4', '1758'),
('25', '2018Q4', '841'),
('26', '2018Q4', '1604'),
('26', '2018Q4', '519'),
('26', '2018Q4', '982'),
('27', '2018Q4', '1291'),
('27', '2018Q4', '1090'),
('29', '2018Q4', '1131'),
('30', '2018Q4', '1249'),
('30', '2018Q4', '1205'),
('30', '2018Q4', '1453'),
('31', '2018Q4', '882'),
('31', '2018Q4', '1486'),
('32', '2018Q4', '1745'),
('32', '2018Q4', '1847'),
('33', '2018Q4', '928'),
('33', '2018Q4', '589'),
('33', '2018Q4', '733'),
('34', '2018Q4', '1658'),
('34', '2018Q4', '467'),
('35', '2018Q4', '1662'),
('35', '2018Q4', '1843'),
('35', '2018Q4', '1064'),
('35', '2018Q4', '558'),
('35', '2018Q4', '724'),
('35', '2018Q4', '828'),
('35', '2018Q4', '540'),
('36', '2018Q4', '998'),
('37', '2018Q4', '560'),
('38', '2018Q4', '1037'),
('38', '2018Q4', '1740'),
('39', '2018Q4', '522'),
('39', '2018Q4', '455'),
('40', '2018Q4', '1117'),
('41', '2018Q4', '1165'),
('41', '2018Q4', '1543'),
('41', '2018Q4', '1846'),
('41', '2018Q4', '1867'),
('41', '2018Q4', '1268'),
('42', '2018Q4', '1721'),
('42', '2018Q4', '1430'),
('44', '2018Q4', '1168'),
('44', '2018Q4', '1620'),
('44', '2018Q4', '876'),
('45', '2018Q4', '1650'),
('45', '2018Q4', '988'),
('46', '2018Q4', '1207'),
('46', '2018Q4', '1973'),
('47', '2018Q4', '564'),
('47', '2018Q4', '458'),
('47', '2018Q4', '1716'),
('47', '2018Q4', '647'),
('48', '2018Q4', '1725'),
('48', '2018Q4', '982'),
('49', '2018Q4', '720'),
('49', '2018Q4', '1601'),
('49', '2018Q4', '1518'),
('49', '2018Q4', '957'),
('49', '2018Q4', '1448'),
('49', '2018Q4', '1676'),
('49', '2018Q4', '1244'),
('49', '2018Q4', '939'),
('49', '2018Q4', '1054'),
('50', '2018Q4', '1236'),
('50', '2018Q4', '1095'),
('51', '2018Q4', '606'),
('52', '2018Q4', '1970'),
('52', '2018Q4', '1934'),
('52', '2018Q4', '1889'),
('54', '2018Q4', '1707'),
('55', '2018Q4', '1493'),
('55', '2018Q4', '546'),
('55', '2018Q4', '719'),
('56', '2018Q4', '1181'),
('57', '2018Q4', '892'),
('57', '2018Q4', '654'),
('57', '2018Q4', '1416'),
('58', '2018Q4', '1647'),
('59', '2018Q4', '926'),
('59', '2018Q4', '1028'),
('59', '2018Q4', '936'),
('60', '2018Q4', '1369'),
('60', '2018Q4', '1582'),
('1', '2019Q1', '1340'),
('1', '2019Q1', '1642'),
('2', '2019Q1', '1442'),
('2', '2019Q1', '1627'),
('2', '2019Q1', '802'),
('3', '2019Q1', '1210'),
('3', '2019Q1', '769'),
('3', '2019Q1', '1076'),
('3', '2019Q1', '1314'),
('4', '2019Q1', '1848'),
('5', '2019Q1', '1956'),
('5', '2019Q1', '892'),
('6', '2019Q1', '1363'),
('8', '2019Q1', '749'),
('8', '2019Q1', '1757'),
('9', '2019Q1', '1423'),
('9', '2019Q1', '648'),
('9', '2019Q1', '1364'),
('11', '2019Q1', '1457'),
('11', '2019Q1', '1344'),
('11', '2019Q1', '955'),
('11', '2019Q1', '1360'),
('12', '2019Q1', '841'),
('13', '2019Q1', '1727'),
('13', '2019Q1', '589'),
('14', '2019Q1', '1533'),
('14', '2019Q1', '838'),
('15', '2019Q1', '1549'),
('15', '2019Q1', '1908'),
('15', '2019Q1', '1420'),
('16', '2019Q1', '815'),
('16', '2019Q1', '539'),
('17', '2019Q1', '852'),
('18', '2019Q1', '1894'),
('18', '2019Q1', '482'),
('18', '2019Q1', '1995'),
('18', '2019Q1', '1950'),
('18', '2019Q1', '871'),
('19', '2019Q1', '1375'),
('19', '2019Q1', '607'),
('19', '2019Q1', '1947'),
('20', '2019Q1', '548'),
('21', '2019Q1', '971'),
('21', '2019Q1', '1438'),
('21', '2019Q1', '1416'),
('22', '2019Q1', '1622'),
('22', '2019Q1', '1914'),
('23', '2019Q1', '1601'),
('23', '2019Q1', '1240'),
('24', '2019Q1', '1536'),
('24', '2019Q1', '1918'),
('25', '2019Q1', '1051'),
('25', '2019Q1', '1500'),
('26', '2019Q1', '1237'),
('26', '2019Q1', '1363'),
('27', '2019Q1', '1851'),
('28', '2019Q1', '912'),
('29', '2019Q1', '773'),
('29', '2019Q1', '617'),
('29', '2019Q1', '594'),
('30', '2019Q1', '538'),
('30', '2019Q1', '1093'),
('31', '2019Q1', '452'),
('31', '2019Q1', '1159'),
('33', '2019Q1', '884'),
('33', '2019Q1', '1574'),
('33', '2019Q1', '766'),
('33', '2019Q1', '1701'),
('34', '2019Q1', '1641'),
('34', '2019Q1', '1557'),
('35', '2019Q1', '1602'),
('35', '2019Q1', '1715'),
('35', '2019Q1', '1106'),
('36', '2019Q1', '1536'),
('38', '2019Q1', '1544'),
('39', '2019Q1', '461'),
('39', '2019Q1', '1668'),
('39', '2019Q1', '1197'),
('40', '2019Q1', '1395'),
('40', '2019Q1', '573'),
('41', '2019Q1', '1973'),
('42', '2019Q1', '1412'),
('42', '2019Q1', '1610'),
('43', '2019Q1', '593'),
('44', '2019Q1', '1482'),
('44', '2019Q1', '1914'),
('44', '2019Q1', '1869'),
('44', '2019Q1', '1109'),
('44', '2019Q1', '1251'),
('44', '2019Q1', '537'),
('45', '2019Q1', '1492'),
('45', '2019Q1', '1625'),
('46', '2019Q1', '1404'),
('46', '2019Q1', '1690'),
('47', '2019Q1', '1360'),
('47', '2019Q1', '997'),
('47', '2019Q1', '1775'),
('47', '2019Q1', '1683'),
('48', '2019Q1', '966'),
('49', '2019Q1', '995'),
('49', '2019Q1', '605'),
('50', '2019Q1', '1006'),
('51', '2019Q1', '1643'),
('51', '2019Q1', '1307'),
('51', '2019Q1', '1443'),
('52', '2019Q1', '505'),
('53', '2019Q1', '1476'),
('54', '2019Q1', '1642'),
('56', '2019Q1', '1040'),
('56', '2019Q1', '895'),
('57', '2019Q1', '1907'),
('57', '2019Q1', '1887'),
('58', '2019Q1', '1826'),
('58', '2019Q1', '1740'),
('59', '2019Q1', '1001'),
('60', '2019Q1', '1383'),
('60', '2019Q1', '1834'),
('60', '2019Q1', '1079'),
('1', '2019Q2', '1903'),
('1', '2019Q2', '1504'),
('2', '2019Q2', '546'),
('2', '2019Q2', '461'),
('2', '2019Q2', '1451'),
('2', '2019Q2', '1574'),
('2', '2019Q2', '635'),
('3', '2019Q2', '775'),
('3', '2019Q2', '684'),
('3', '2019Q2', '474'),
('4', '2019Q2', '1384'),
('4', '2019Q2', '1765'),
('4', '2019Q2', '1383'),
('5', '2019Q2', '694'),
('5', '2019Q2', '670'),
('5', '2019Q2', '1461'),
('5', '2019Q2', '1591'),
('6', '2019Q2', '1879'),
('6', '2019Q2', '1307'),
('6', '2019Q2', '1744'),
('7', '2019Q2', '1377'),
('7', '2019Q2', '1196'),
('8', '2019Q2', '496'),
('8', '2019Q2', '1588'),
('9', '2019Q2', '1657'),
('9', '2019Q2', '854'),
('10', '2019Q2', '1264'),
('11', '2019Q2', '1739'),
('11', '2019Q2', '621'),
('12', '2019Q2', '1463'),
('13', '2019Q2', '794'),
('13', '2019Q2', '1346'),
('14', '2019Q2', '567'),
('17', '2019Q2', '675'),
('17', '2019Q2', '467'),
('17', '2019Q2', '1235'),
('17', '2019Q2', '1097'),
('18', '2019Q2', '1927'),
('18', '2019Q2', '498'),
('20', '2019Q2', '1106'),
('20', '2019Q2', '1931'),
('20', '2019Q2', '1089'),
('21', '2019Q2', '1181'),
('21', '2019Q2', '510'),
('21', '2019Q2', '1219'),
('21', '2019Q2', '1194'),
('23', '2019Q2', '1777'),
('24', '2019Q2', '506'),
('24', '2019Q2', '1392'),
('24', '2019Q2', '1787'),
('26', '2019Q2', '1877'),
('26', '2019Q2', '1240'),
('26', '2019Q2', '939'),
('26', '2019Q2', '1976'),
('27', '2019Q2', '921'),
('27', '2019Q2', '1386'),
('27', '2019Q2', '1246'),
('27', '2019Q2', '1802'),
('28', '2019Q2', '1994'),
('28', '2019Q2', '1451'),
('28', '2019Q2', '792'),
('28', '2019Q2', '816'),
('28', '2019Q2', '870'),
('29', '2019Q2', '1349'),
('30', '2019Q2', '1654'),
('30', '2019Q2', '1364'),
('30', '2019Q2', '1415'),
('30', '2019Q2', '1711'),
('31', '2019Q2', '954'),
('32', '2019Q2', '1845'),
('33', '2019Q2', '1790'),
('34', '2019Q2', '1704'),
('34', '2019Q2', '1006'),
('34', '2019Q2', '603'),
('35', '2019Q2', '643'),
('37', '2019Q2', '851'),
('37', '2019Q2', '1817'),
('37', '2019Q2', '613'),
('37', '2019Q2', '1740'),
('38', '2019Q2', '1795'),
('38', '2019Q2', '895'),
('38', '2019Q2', '1098'),
('38', '2019Q2', '1430'),
('39', '2019Q2', '1312'),
('39', '2019Q2', '1100'),
('40', '2019Q2', '1207'),
('40', '2019Q2', '1597'),
('41', '2019Q2', '1348'),
('41', '2019Q2', '1287'),
('42', '2019Q2', '1169'),
('42', '2019Q2', '787'),
('43', '2019Q2', '1141'),
('43', '2019Q2', '1529'),
('44', '2019Q2', '1161'),
('44', '2019Q2', '1037'),
('44', '2019Q2', '1859'),
('44', '2019Q2', '787'),
('44', '2019Q2', '1213'),
('45', '2019Q2', '759'),
('45', '2019Q2', '1417'),
('46', '2019Q2', '986'),
('47', '2019Q2', '879'),
('49', '2019Q2', '1838'),
('49', '2019Q2', '1419'),
('51', '2019Q2', '1656'),
('51', '2019Q2', '1197'),
('51', '2019Q2', '1579'),
('52', '2019Q2', '1994'),
('52', '2019Q2', '464'),
('54', '2019Q2', '1396'),
('54', '2019Q2', '1948'),
('54', '2019Q2', '512'),
('55', '2019Q2', '532'),
('55', '2019Q2', '828'),
('55', '2019Q2', '1832'),
('55', '2019Q2', '1640'),
('56', '2019Q2', '1552'),
('56', '2019Q2', '1772'),
('57', '2019Q2', '511'),
('57', '2019Q2', '1898'),
('57', '2019Q2', '1579'),
('57', '2019Q2', '1820'),
('58', '2019Q2', '475'),
('58', '2019Q2', '1401'),
('59', '2019Q2', '1331'),
('59', '2019Q2', '1949'),
('59', '2019Q2', '1932'),
('60', '2019Q2', '837'),
('60', '2019Q2', '1220'),
('60', '2019Q2', '1215'),
('1', '2019Q3', '1201'),
('1', '2019Q3', '1805'),
('2', '2019Q3', '1366'),
('2', '2019Q3', '1620'),
('2', '2019Q3', '1807'),
('3', '2019Q3', '946'),
('3', '2019Q3', '1579'),
('4', '2019Q3', '1705'),
('4', '2019Q3', '1560'),
('5', '2019Q3', '1869'),
('5', '2019Q3', '649'),
('5', '2019Q3', '470'),
('5', '2019Q3', '1143'),
('5', '2019Q3', '573'),
('7', '2019Q3', '1084'),
('8', '2019Q3', '1478'),
('8', '2019Q3', '1101'),
('8', '2019Q3', '1364'),
('8', '2019Q3', '1177'),
('8', '2019Q3', '1863'),
('9', '2019Q3', '1727'),
('9', '2019Q3', '706'),
('9', '2019Q3', '919'),
('9', '2019Q3', '537'),
('9', '2019Q3', '477'),
('11', '2019Q3', '1264'),
('11', '2019Q3', '1026'),
('11', '2019Q3', '1044'),
('11', '2019Q3', '1696'),
('12', '2019Q3', '1546'),
('12', '2019Q3', '864'),
('13', '2019Q3', '680'),
('13', '2019Q3', '1648'),
('13', '2019Q3', '1320'),
('14', '2019Q3', '1960'),
('15', '2019Q3', '535'),
('16', '2019Q3', '1543'),
('16', '2019Q3', '1819'),
('16', '2019Q3', '1378'),
('17', '2019Q3', '639'),
('17', '2019Q3', '570'),
('17', '2019Q3', '1298'),
('17', '2019Q3', '1025'),
('18', '2019Q3', '603'),
('18', '2019Q3', '680'),
('19', '2019Q3', '1590'),
('20', '2019Q3', '2000'),
('21', '2019Q3', '1046'),
('21', '2019Q3', '1545'),
('21', '2019Q3', '1101'),
('21', '2019Q3', '1233'),
('23', '2019Q3', '522'),
('23', '2019Q3', '848'),
('23', '2019Q3', '1664'),
('24', '2019Q3', '561'),
('24', '2019Q3', '1294'),
('25', '2019Q3', '1751'),
('25', '2019Q3', '993'),
('26', '2019Q3', '1776'),
('27', '2019Q3', '592'),
('27', '2019Q3', '1706'),
('27', '2019Q3', '1187'),
('28', '2019Q3', '1582'),
('28', '2019Q3', '1583'),
('28', '2019Q3', '1783'),
('29', '2019Q3', '1894'),
('29', '2019Q3', '1814'),
('29', '2019Q3', '1017'),
('29', '2019Q3', '1095'),
('30', '2019Q3', '834'),
('30', '2019Q3', '1459'),
('30', '2019Q3', '1720'),
('31', '2019Q3', '1167'),
('31', '2019Q3', '715'),
('31', '2019Q3', '560'),
('31', '2019Q3', '524'),
('31', '2019Q3', '604'),
('32', '2019Q3', '765'),
('33', '2019Q3', '1102'),
('33', '2019Q3', '1371'),
('33', '2019Q3', '852'),
('33', '2019Q3', '1288'),
('34', '2019Q3', '1941'),
('35', '2019Q3', '694'),
('35', '2019Q3', '629'),
('35', '2019Q3', '1099'),
('35', '2019Q3', '556'),
('36', '2019Q3', '741'),
('36', '2019Q3', '1220'),
('36', '2019Q3', '1498'),
('36', '2019Q3', '810'),
('37', '2019Q3', '584'),
('37', '2019Q3', '661'),
('38', '2019Q3', '848'),
('38', '2019Q3', '1313'),
('38', '2019Q3', '1519'),
('39', '2019Q3', '1789'),
('39', '2019Q3', '620'),
('40', '2019Q3', '1476'),
('41', '2019Q3', '1668'),
('44', '2019Q3', '1191'),
('45', '2019Q3', '663'),
('46', '2019Q3', '1046'),
('46', '2019Q3', '1426'),
('46', '2019Q3', '1216'),
('46', '2019Q3', '1322'),
('47', '2019Q3', '1649'),
('49', '2019Q3', '1448'),
('50', '2019Q3', '907'),
('51', '2019Q3', '1970'),
('51', '2019Q3', '871'),
('51', '2019Q3', '1421'),
('52', '2019Q3', '473'),
('52', '2019Q3', '1508'),
('54', '2019Q3', '1050'),
('55', '2019Q3', '1959'),
('56', '2019Q3', '543'),
('56', '2019Q3', '559'),
('56', '2019Q3', '1439'),
('58', '2019Q3', '1282'),
('58', '2019Q3', '1121'),
('58', '2019Q3', '1080'),
('58', '2019Q3', '1758'),
('59', '2019Q3', '940'),
('59', '2019Q3', '1770'),
('59', '2019Q3', '1691'),
('60', '2019Q3', '1318'),
('1', '2019Q4', '1040'),
('1', '2019Q4', '511'),
('1', '2019Q4', '1826'),
('2', '2019Q4', '915'),
('2', '2019Q4', '1389'),
('2', '2019Q4', '1015'),
('2', '2019Q4', '1834'),
('2', '2019Q4', '1923'),
('3', '2019Q4', '516'),
('3', '2019Q4', '993'),
('3', '2019Q4', '1677'),
('3', '2019Q4', '1718'),
('4', '2019Q4', '1591'),
('4', '2019Q4', '1634'),
('5', '2019Q4', '662'),
('5', '2019Q4', '516'),
('5', '2019Q4', '1022'),
('5', '2019Q4', '1430'),
('6', '2019Q4', '1635'),
('8', '2019Q4', '1426'),
('8', '2019Q4', '599'),
('8', '2019Q4', '1895'),
('9', '2019Q4', '1994'),
('9', '2019Q4', '529'),
('10', '2019Q4', '1483'),
('12', '2019Q4', '1347'),
('12', '2019Q4', '861'),
('12', '2019Q4', '729'),
('12', '2019Q4', '1665'),
('13', '2019Q4', '947'),
('13', '2019Q4', '1356'),
('13', '2019Q4', '694'),
('13', '2019Q4', '980'),
('13', '2019Q4', '1345'),
('14', '2019Q4', '1598'),
('14', '2019Q4', '622'),
('14', '2019Q4', '563'),
('14', '2019Q4', '1235'),
('14', '2019Q4', '1873'),
('15', '2019Q4', '719'),
('16', '2019Q4', '1391'),
('16', '2019Q4', '1060'),
('17', '2019Q4', '1883'),
('17', '2019Q4', '1044'),
('18', '2019Q4', '1715'),
('18', '2019Q4', '865'),
('18', '2019Q4', '1221'),
('18', '2019Q4', '1020'),
('20', '2019Q4', '1079'),
('20', '2019Q4', '1315'),
('20', '2019Q4', '1358'),
('21', '2019Q4', '1788'),
('21', '2019Q4', '1595'),
('22', '2019Q4', '720'),
('22', '2019Q4', '1395'),
('22', '2019Q4', '1670'),
('23', '2019Q4', '1012'),
('23', '2019Q4', '1248'),
('25', '2019Q4', '757'),
('26', '2019Q4', '1035'),
('26', '2019Q4', '1342'),
('27', '2019Q4', '1074'),
('28', '2019Q4', '1412'),
('28', '2019Q4', '1062'),
('28', '2019Q4', '1175'),
('28', '2019Q4', '728'),
('29', '2019Q4', '634'),
('29', '2019Q4', '501'),
('30', '2019Q4', '547'),
('30', '2019Q4', '1303'),
('30', '2019Q4', '1281'),
('30', '2019Q4', '988'),
('32', '2019Q4', '1983'),
('32', '2019Q4', '1005'),
('33', '2019Q4', '1058'),
('33', '2019Q4', '1092'),
('33', '2019Q4', '1479'),
('34', '2019Q4', '1656'),
('34', '2019Q4', '1073'),
('35', '2019Q4', '870'),
('35', '2019Q4', '1964'),
('36', '2019Q4', '1285'),
('36', '2019Q4', '1204'),
('37', '2019Q4', '521'),
('38', '2019Q4', '774'),
('39', '2019Q4', '1016'),
('40', '2019Q4', '1508'),
('42', '2019Q4', '943'),
('42', '2019Q4', '1914'),
('42', '2019Q4', '975'),
('42', '2019Q4', '1552'),
('43', '2019Q4', '1770'),
('43', '2019Q4', '1613'),
('43', '2019Q4', '1078'),
('44', '2019Q4', '1106'),
('45', '2019Q4', '1843'),
('45', '2019Q4', '945'),
('46', '2019Q4', '1448'),
('47', '2019Q4', '1091'),
('48', '2019Q4', '1021'),
('49', '2019Q4', '1573'),
('49', '2019Q4', '1732'),
('49', '2019Q4', '1257'),
('49', '2019Q4', '1276'),
('50', '2019Q4', '1546'),
('51', '2019Q4', '1365'),
('51', '2019Q4', '1873'),
('51', '2019Q4', '1683'),
('51', '2019Q4', '1258'),
('52', '2019Q4', '983'),
('52', '2019Q4', '1905'),
('52', '2019Q4', '630'),
('55', '2019Q4', '1260'),
('55', '2019Q4', '1276'),
('55', '2019Q4', '1221'),
('55', '2019Q4', '1566'),
('55', '2019Q4', '1164'),
('56', '2019Q4', '1095'),
('56', '2019Q4', '1523'),
('56', '2019Q4', '1449'),
('57', '2019Q4', '1569'),
('57', '2019Q4', '1394'),
('57', '2019Q4', '1590'),
('58', '2019Q4', '1622'),
('58', '2019Q4', '1905'),
('58', '2019Q4', '464'),
('58', '2019Q4', '720'),
('59', '2019Q4', '1129'),
('59', '2019Q4', '1302'),
('59', '2019Q4', '489'),
('60', '2019Q4', '1795'),
('60', '2019Q4', '1770'),
('60', '2019Q4', '577'),
('60', '2019Q4', '678');