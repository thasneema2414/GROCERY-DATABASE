
--CREATING CUSTOMER TABLE NAMED CUSTOMER_T

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

  -- CREATE PRODUCT TABLE NAMED PRODUCT_T
  
  CREATE TABLE PRODUCT_T (P_ID NUMBER PRIMARY KEY,
                        P_NAME VARCHAR(50) NOT NULL,
                        P_CATEGORY VARCHAR(30),
                        UNIT_PRICE NUMBER NOT NULL,
                        PRODUCT_DESCRIPTION VARCHAR(200) );
                        
INSERT INTO PRODUCT_T VALUES (10, 'SHIRT', 'CLOTH', 550, 'LINEN BLACK SMALL SIZE');
INSERT INTO PRODUCT_T VALUES (11, 'FRYING PAN', 'UTENSIL', 700, 'BLACK MEDIUM SIZE');
INSERT INTO PRODUCT_T VALUES (15, 'HANGER', 'UTILITY', 2200, 'PLASTIC HANGERS');
INSERT INTO PRODUCT_T VALUES (18, 'KURTHI', 'CLOTH', 400, 'COTTON WHITE EXTRA LARGE SIZE');
INSERT INTO PRODUCT_T VALUES (20, 'PISTACIO', 'FOOD', 1300, 'SALTED CRUNCHY PISTA');

SELECT * FROM PRODUCT_T;


................................................................

  --CREATE TABLE ORDER_T

CREATE TABLE ORDER_T (ORDER_ID NUMBER PRIMARY KEY,
                      CUSTOMER_ID NUMBER,
                      PRODUCT_ID NUMBER,
                      ORDER_DATE DATE NOT NULL,
                      QUATITY NUMBER,
                      STATUS VARCHAR(20), 
                      FOREIGN KEY(CUSTOMER_ID) REFERENCES CUSTOMER_T (ID),
                      FOREIGN KEY (PRODUCT_ID) REFERENCES PRODUCT_T (P_ID) );
                 
INSERT INTO ORDER_T VALUES (10001, 101, 15, '12-03-2023', 3, 'COMPLETED');
INSERT INTO ORDER_T VALUES (10002, 100, 18, '12-03-2023', 1, 'RETURNED');
INSERT INTO ORDER_T VALUES (10003, 100, 18, '11-04-2023', 2, 'REFUNDED');
INSERT INTO ORDER_T VALUES (10004, 104, 11, '12-05-2023', 1, 'COMPLETED');
INSERT INTO ORDER_T VALUES (10005, 101, 20, '10-03-2023', 2, 'COMPLETED');
INSERT INTO ORDER_T VALUES (10006, 104, 11, '11-06-2023', 3, 'RETURNED');
INSERT INTO ORDER_T VALUES (10007, 104, 10, '12-04-2023', 2, 'COMPLETED');
INSERT INTO ORDER_T (ORDER_ID, CUSTOMER_ID, PRODUCT_ID, ORDER_DATE, STATUS) VALUES (10008, 104, 10, '02-03-2023', 'COMPLETED');


SELECT * FROM ORDER_T;


.............................................................

  --CREATE TABLE PAYMENT_T

CREATE TABLE PAYMENT (PY_ID NUMBER PRIMARY KEY,
                      PRODUCT_ID NUMBER,
                      PAYMENT_TYPE VARCHAR(30),
                      PY_DATE DATE NOT NULL,
                      AMOUNT NUMBER,
                      FOREIGN KEY (PRODUCT_ID) REFERENCES PRODUCT_T(P_ID));
                      
INSERT INTO PAYMENT VALUES (100000, 10, 'CASH', '12-04-2023', 1300);
INSERT INTO PAYMENT VALUES (100001, 11, 'CARD', '12-06-2023', 500);
INSERT INTO PAYMENT VALUES (100002, 11, 'CASH', '11-06-2023', 2000);
INSERT INTO PAYMENT VALUES (100003, 15, 'CASH', '12-03-2023', 2300);
INSERT INTO PAYMENT VALUES (100004, 10, 'CASH', '12-04-2023', 1300);
INSERT INTO PAYMENT VALUES (100005, 18, 'GPAY', '13-03-2023', 450);
INSERT INTO PAYMENT VALUES (100006, 18, 'CASH', '11-04-2023', 900);
INSERT INTO PAYMENT VALUES (100007, 10, 'GPAY', '02-03-2023', 1300);

SELECT * FROM PAYMENT;

--------------------------------------------------------------------------------------------

-- CREATE REVIEW TABLE

CREATE TABLE REVIEW_T (R_ID NUMBER PRIMARY KEY,
                       PRODUCT_ID NUMBER,
                       REVIEW_DATE DATE NOT NULL,
                       REVIEW_TEXT VARCHAR(200),
                       RATING NUMBER(2),
                       FOREIGN KEY (PRODUCT_ID) REFERENCES PRODUCT_T(P_ID));
                       
INSERT INTO REVIEW_T VALUES (5555, 10, '14-04-2023', 'GOOD MATERIAL AND COLOUR', 4);
INSERT INTO REVIEW_T VALUES (4444, 11, '12-04-2023', 'NOT GOOD', 1);
INSERT INTO REVIEW_T VALUES (6666, 15, '14-03-2023', 'GOOD AND STRONG', 5);
INSERT INTO REVIEW_T VALUES (7777, 18, '12-04-2023', 'POOR MATERIAL', 2);
INSERT INTO REVIEW_T VALUES (2222, 20, '12-03-2023', 'SUPER TASTY', 4);
                       
SELECT * FROM REVIEW_T;

