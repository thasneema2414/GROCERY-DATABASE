CREATE TABLE INVENTORY (
ITEM_ID NUMBER(3) PRIMARY KEY,
ITEM_NAME VARCHAR2(50),
ITEM_QUANTITY NUMBER(3),
ITEM_PRICE NUMBER(5)
);

DROP TABLE INVENTORY;

INSERT INTO INVENTORY VALUES (1, 'RICE', 4, 45);
INSERT INTO INVENTORY VALUES (2, 'SOAP', 10, 30);
INSERT INTO INVENTORY VALUES (3, 'EGG', 100, 8);
INSERT INTO INVENTORY VALUES (4, 'DAAL', 15, 120);
INSERT INTO INVENTORY VALUES (5, 'PASTE', 20, 67);

SELECT * FROM INVENTORY;

........................................................................

CREATE TABLE CUSTOMER_DATA (
C_ID NUMBER(2) PRIMARY KEY,
C_NAME VARCHAR2(100),
PHONE NUMBER(10) UNIQUE CHECK(LENGTH(PHONE) = 10)
);

INSERT INTO CUSTOMER_DATA VALUES (11, 'RAMA', 8787890936);
INSERT INTO CUSTOMER_DATA VALUES (12, 'RIYA', 3423129023);
INSERT INTO CUSTOMER_DATA VALUES (13, 'RAMA', 4589093456);
INSERT INTO CUSTOMER_DATA VALUES (14, 'PRIYA', 4567387909)
;

SELECT * FROM CUSTOMER_DATA;

................................................................

CREATE TABLE TRANSACTIONS (
T_ID NUMBER(5) PRIMARY KEY,
ITEM_ID NUMBER(3),
CUSTOMER_ID NUMBER(2),
FOREIGN KEY (ITEM_ID) REFERENCES INVENTORY(ITEM_ID),
FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMER_DATA(C_ID)
);

INSERT INTO TRANSACTIONS VALUES (12345, 1, 11);
INSERT INTO TRANSACTIONS VALUES (12346, 1, 13);
INSERT INTO TRANSACTIONS VALUES (22345, 2, 11);
INSERT INTO TRANSACTIONS VALUES (13345, 2, 12);
INSERT INTO TRANSACTIONS VALUES (12355, 2, 14);
INSERT INTO TRANSACTIONS VALUES (12344, 3, 12);
INSERT INTO TRANSACTIONS VALUES (12333, 3, 13);
INSERT INTO TRANSACTIONS VALUES (12315, 3, 14);

SELECT * FROM TRANSACTIONS;

.............................................................