-- for ms sql server

create database	SaleCo	
use SaleCo

CREATE TABLE CUSTOMER (
  CUS_CODE      INT PRIMARY KEY identity,
  CUS_LNAME     VARCHAR(15),
  CUS_FNAME     VARCHAR(15),
  CUS_INITIAL   VARCHAR(1),
  CUS_AREACODE  VARCHAR(3),
  CUS_PHONE     VARCHAR(8),
  CUS_BALANCE   FLOAT(8)
);

INSERT INTO CUSTOMER(CUS_LNAME, CUS_FNAME, CUS_INITIAL, CUS_AREACODE, CUS_PHONE, CUS_BALANCE) VALUES
  ('Ramas','Alfred','A','615','844-2573','0'),
  ('Dunne','Leona','K','713','894-1238','0'),
  ('Smith','Kathy','W','615','894-2285','345.859985351562'),
  ('Olowski','Paul','F','615','894-2180','536.75'),
  ('Orlando','Myron','','615','222-1672','0'),
  ('O''Brian','Amy','B','713','442-3381','0'),
  ('Brown','James','G','615','297-1228','221.190002441406'),
  ('Williams','George','','615','290-2556','768.929992675781'),
  ('Farriss','Anne','G','713','382-7185','216.550003051758'),
  ('Smith','Olette','K','615','297-3809','0');

CREATE TABLE EMP (
  EMP_NUM       INT identity(100,1) PRIMARY KEY  ,
  EMP_TITLE     VARCHAR(4),
  EMP_LNAME     VARCHAR(15),
  EMP_FNAME     VARCHAR(15),
  EMP_INITIAL   VARCHAR(1),
  EMP_DOB       DATETIME,
  EMP_HIRE_DATE DATETIME,
  EMP_AREACODE  VARCHAR(3),
  EMP_PHONE     VARCHAR(8),
  EMP_MGR       INT
);
INSERT INTO EMP(EMP_TITLE, EMP_LNAME, EMP_FNAME, EMP_INITIAL, EMP_DOB, EMP_HIRE_DATE, EMP_AREACODE, EMP_PHONE, EMP_MGR) VALUES
  ('Mr.','Kolmycz','George','D','1945-6-15','1985-3-15','615','324-5456',NULL),
  ('Ms.','Lewis','Rhonda','G','1965-3-19','1986-4-25','615','324-4472','100'),
  ('Mr.','VanDam','Rhett','','1958-11-14','1990-12-20','901','675-8993','100'),
  ('Ms.','Jones','Anne','M','1974-10-16','1994-8-28','615','898-3456','100'),
  ('Mr.','Lange','John','P','1971-11-8','1994-10-20','901','504-4430','105'),
  ('Mr.','Williams','Robert','D','1975-3-14','1998-11-8','615','890-3220', NULL),
  ('Mrs.','Smith','Jeanine','K','1968-2-12','1989-1-5','615','324-7883','105'),
  ('Mr.','Diante','Jorge','D','1974-8-21','1994-7-2','615','890-4567','105'),
  ('Mr.','Wiesenbach','Paul','R','1966-2-14','1992-11-18','615','897-4358',NULL),
  ('Mr.','Smith','George','K','1961-6-18','1989-4-14','901','504-3339','108'),
  ('Mrs.','Genkazi','Leighla','W','1970-5-19','1990-12-1','901','569-0093','108'),
  ('Mr.','Washington','Rupert','E','1966-1-3','1993-6-21','615','890-4925','105'),
  ('Mr.','Johnson','Edward','E','1961-5-14','1983-12-1','615','898-4387','100'),
  ('Ms.','Smythe','Melanie','P','1970-9-15','1999-5-11','615','324-9006','105'),
  ('Ms.','Brandon','Marie','G','1956-11-2','1979-11-15','901','882-0845','108'),
  ('Mrs.','Saranda','Hermine','R','1972-7-25','1993-4-23','615','324-5505','105'),
  ('Mr.','Smith','George','A','1965-11-8','1988-12-10','615','890-2984','108');

CREATE TABLE EMPLOYEE (
  EMP_NUM       INT PRIMARY KEY identity,
  EMP_TITLE     VARCHAR(4),
  EMP_LNAME     VARCHAR(15),
  EMP_FNAME     VARCHAR(15),
  EMP_INITIAL   VARCHAR(1),
  EMP_DOB       DATETIME,
  EMP_HIRE_DATE DATETIME,
  EMP_YEARS     INT,
  EMP_AREACODE  VARCHAR(3),
  EMP_PHONE     VARCHAR(8)
);
INSERT INTO EMPLOYEE(EMP_TITLE, EMP_LNAME, EMP_FNAME, EMP_INITIAL, EMP_DOB, EMP_HIRE_DATE, EMP_YEARS, EMP_AREACODE, EMP_PHONE) VALUES
  ('Mr.','Kolmycz','George','D','1942-6-15','1985-3-15','18','615','324-5456'),
  ('Ms.','Lewis','Rhonda','G','1965-3-19','1986-4-25','16','615','324-4472'),
  ('Mr.','VanDam','Rhett','','1958-11-14','1990-12-20','12','901','675-8993'),
  ('Ms.','Jones','Anne','M','1974-10-16','1994-8-28','8','615','898-3456'),
  ('Mr.','Lange','John','P','1971-11-8','1994-10-20','8','901','504-4430'),
  ('Mr.','Williams','Robert','D','1975-3-14','1998-11-8','4','615','890-3220'),
  ('Mrs.','Smith','Jeanine','K','1968-2-12','1989-1-5','14','615','324-7883'),
  ('Mr.','Diante','Jorge','D','1974-8-21','1994-7-2','8','615','890-4567'),
  ('Mr.','Wiesenbach','Paul','R','1966-2-14','1992-11-18','10','615','897-4358'),
  ('Mr.','Smith','George','K','1961-6-18','1989-4-14','13','901','504-3339'),
  ('Mrs.','Genkazi','Leighla','W','1970-5-19','1990-12-1','12','901','569-0093'),
  ('Mr.','Washington','Rupert','E','1966-1-3','1993-6-21','9','615','890-4925'),
  ('Mr.','Johnson','Edward','E','1961-5-14','1983-12-1','19','615','898-4387'),
  ('Ms.','Smythe','Melanie','P','1970-9-15','1999-5-11','3','615','324-9006'),
  ('Ms.','Brandon','Marie','G','1956-11-2','1979-11-15','23','901','882-0845'),
  ('Mrs.','Saranda','Hermine','R','1972-7-25','1993-4-23','9','615','324-5505'),
  ('Mr.','Smith','George','A','1965-11-8','1988-12-10','14','615','890-2984');

CREATE TABLE VENDOR (
  V_CODE      INT PRIMARY KEY,
  V_NAME      VARCHAR(15),
  V_CONTACT   VARCHAR(50),
  V_AREACODE  VARCHAR(3),
  V_PHONE     VARCHAR(8),
  V_STATE     VARCHAR(2),
  V_ORDER     VARCHAR(1)
);
INSERT INTO VENDOR(V_CODE, V_NAME, V_CONTACT, V_AREACODE, V_PHONE, V_STATE, V_ORDER) VALUES
  ('21225','Bryson, Inc.','Smithson','615','223-3234','TN','Y'),
  ('21226','SuperLoo, Inc.','Flushing','904','215-8995','FL','N'),
  ('21231','D&E Supply','Singh','615','228-3245','TN','Y'),
  ('21344','Gomez Bros.','Ortega','615','889-2546','KY','N'),
  ('22567','Dome Supply','Smith','901','678-1419','GA','N'),
  ('23119','Randsets Ltd.','Anderson','901','678-3998','GA','Y'),
  ('24004','Brackman Bros.','Browning','615','228-1410','TN','N'),
  ('24288','ORDVA, Inc.','Hakford','615','898-1234','TN','Y'),
  ('25443','B&K, Inc.','Smith','904','227-0093','FL','N'),
  ('25501','Damal Supplies','Smythe','615','890-3529','TN','N'),
  ('25595','Rubicon Systems','Orton','904','456-0092','FL','Y');

CREATE TABLE INVOICE (
  INV_NUMBER  INT PRIMARY KEY identity,
  CUS_CODE    INT,
  INV_DATE    DATETIME,
  FOREIGN KEY(CUS_CODE) REFERENCES CUSTOMER(CUS_CODE)
);
INSERT INTO INVOICE(CUS_CODE, INV_DATE) VALUES
  (1,'2016-1-16'),
  (2,'2016-1-16'),
  (3,'2016-1-16'),
  (4,'2016-1-17'),
  (5,'2016-1-17'),
  (6,'2016-1-17'),
  (7,'2016-1-17'),
  (8,'2016-1-17');

CREATE TABLE PRODUCT (
  P_CODE      VARCHAR(10) PRIMARY KEY,
  P_DESCRIPT  VARCHAR(35),
  P_INDATE    DATETIME,
  P_QOH       INT,
  P_MIN       INT,
  P_PRICE     FLOAT(8),
  P_DISCOUNT  FLOAT(8),
  V_CODE      INT,
  FOREIGN KEY (V_CODE) REFERENCES VENDOR(V_CODE)
);
INSERT INTO PRODUCT(P_CODE, P_DESCRIPT, P_INDATE, P_QOH, P_MIN, P_PRICE, P_DISCOUNT, V_CODE) VALUES
  ('11QER/31','Power painter, 15 psi., 3-nozzle','2015-11-3','8','5','109.99','0','25595'),
  ('13-Q2/P2','7.25-in. pwr. saw blade',         '2015-12-13','32','15', '14.99','0.05','21344'),
  ('14-Q1/L3','9.00-in. pwr. saw blade',         '2015-11-13','18','12','17.49','0','21344'),
  ('1546-QQ2','Hrd. cloth, 1/4-in., 2x50',       '2016-1-15','15','8','39.95','0','23119'),
  ('1558-QW1','Hrd. cloth, 1/2-in., 3x50',       '2016-1-15','23','5','43.99','0','23119'),
  ('2232/QTY','B\&D jigsaw, 12-in. blade',       '2015-12-30','8','5','109.92','0.05','24288'),
  ('2232/QWE','B\&D jigsaw, 8-in. blade',        '2015-12-24','6','5','99.87','0.05','24288'),
  ('2238/QPD','B\&D cordless drill, 1/2-in.',    '2016-1-20','12','5','38.95','0.05','25595'),
  ('23109-HB','Claw hammer',                     '2016-1-20','23','10','9.95','0.1','21225'),
  ('23114-AA','Sledge hammer, 12 lb.',           '2016-1-2','8','5','14.40','0.05', NULL),
  ('54778-2T','Rat-tail file, 1/8-in. fine',     '2015-12-15','43','20','4.99','0','21344'),
  ('89-WRE-Q','Hicut chain saw, 16 in.',         '2016-2-7','11','5','256.99','0.05','24288'),
  ('PVC23DRT','PVC pipe, 3.5-in., 8-ft',         '2016-2-20','188','75','5.87','0', NULL),
  ('SM-18277','1.25-in. metal screw, 25',        '2016-3-1','172','75','6.99','0','21225'),
  ('SW-23116','2.5-in. wd. screw, 50',           '2016-2-24','237','100','8.45','0','21231'),
  ('WR3/TT3','Steel matting, 4''x8''x1/6", .5" mesh','2016-1-17','18','5','119.95','0.1','25595');

CREATE TABLE LINE (
  INV_NUMBER  INT,
  LINE_NUMBER INT,
  P_CODE      VARCHAR(10),
  LINE_UNITS  FLOAT(8),
  LINE_PRICE  FLOAT(8),
  PRIMARY KEY(INV_NUMBER, LINE_NUMBER),
  FOREIGN KEY(INV_NUMBER) REFERENCES INVOICE(INV_NUMBER),
  FOREIGN KEY(P_CODE) REFERENCES PRODUCT(P_CODE)
);
INSERT INTO LINE(INV_NUMBER, LINE_NUMBER, P_CODE, LINE_UNITS, LINE_PRICE) VALUES
  (1,'1','13-Q2/P2','1','14.99'),
  (1,'2','23109-HB','1','9.95'),
  (2,'1','54778-2T','2','4.99'),
  (3,'1','2238/QPD','1','38.95'),
  (3,'2','1546-QQ2','1','39.95'),
  (3,'3','13-Q2/P2','5','14.99'),
  (4,'1','54778-2T','3','4.99'),
  (4,'2','23109-HB','2','9.95'),
  (5,'1','PVC23DRT','12','5.87'),
  (6,'1','SM-18277','3','6.99'),
  (6,'2','2232/QTY','1','109.92'),
  (6,'3','23109-HB','1','9.95'),
  (6,'4','89-WRE-Q','1','256.99'),
  (7,'1','13-Q2/P2','2','14.99'),
  (7,'2','54778-2T','1','4.99'),
  (8,'1','PVC23DRT','5','5.87'),
  (8,'2','WR3/TT3','3','119.95'),
  (8,'3','23109-HB','1','9.95');


