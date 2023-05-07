-- EXERCISE-2

CREATE TABLE CONTACT(ID INT PRIMARY KEY NOT NULL, EMAIL VARCHAR(25) UNIQUE NOT NULL,FNAME VARCHAR(20) NOT NULL,INAME VARCHAR(25) NOT NULL,COMPANY VARCHAR(30) NOT NULL,ACTIVE_FLAG BIT NOT NULL,OPT_OUT BIT NOT NULL);
SELECT* FROM CONTACT;
INSERT INTO CONTACT VALUES(123,'A123@GMAIL.COM','KIAN','SETH','ABC',1,1),(133,'B133@GMAIL.COM','NEHA','SETH','ABC',1,0),(234,'C234@GMAIL.COM','PURU','MALIK','CDF',0,0),(342,'D342@GMAIL.COM','SID','MAAN','TEG',1,0);

-- Select all columns from the contact table where the active flag is 1
SELECT*FROM CONTACT WHERE ACTIVE_FLAG=1;

-- Deactivate contacts who are opted out 
UPDATE CONTACT SET ACTIVE_FLAG=0 WHERE OPT_OUT=0;

-- Delete all the contacts who have the company name as ‘ABC’
DELETE FROM CONTACT WHERE COMPANY='ABC';

-- Insert a new row with id as 658, name as ‘mili’, email as ‘mili@gmail.com’, the company as ‘DGH’, active flag as 1, opt-out flag as 1
INSERT INTO CONTACT VALUES(658,'MILI@GMAIL.COM','MILI','RAJ','DGH',1,1);

-- Pull out the unique values of the company column 
SELECT DISTINCT COMPANY FROM CONTACT;

-- Update name “mili” to “niti”.
UPDATE CONTACT SET FNAME='NITI' WHERE ID=658;





