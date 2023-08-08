# CREATING CUSTOMER TABLE NAMED CUSTOMER_T

CREATE TABLE CUSTOMER_T (ID NUMBER,
                         NAME VARCHAR(50) PRIMARY KEY,
                         GENDER VARCHAR(5),
                         MOBILE VARCHAR(10) NOT NULL,
                         EMAIL VARCHAR(50) );
                         
INSERT INTO CUSTOMER_T VALUES (100, 'RAM', 'M', '2233442233', 'RAM@GMAIL.COM');
INSERT INTO CUSTOMER_T VALUES (101, 'RAMAN', 'M', '9988334400', 'RAMAN@GMAIL.COM');
INSERT INTO CUSTOMER_T VALUES (102, 'SIYA', 'F', '1234512345', 'SIYA@GMAIL.COM');
INSERT INTO CUSTOMER_T VALUES (103, 'MILI', 'F', '7676564513', 'MILI@GMAIL.COM');
INSERT INTO CUSTOMER_T VALUES (104, 'RAMANA', 'M', '2233442290', 'RAMANA@GMAIL.COM');

SELECT * FROM CUSTOMER_T;

........................................................................



................................................................



.............................................................
