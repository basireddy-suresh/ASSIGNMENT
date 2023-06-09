-- EXERCISE-1 

create database online_consultation_therapy;
-- Doctor table:- The table should contain the attributes such as id, name, specialization, etc.
CREATE TABLE DOCTOR(ID INT PRIMARY KEY NOT NULL,NAME VARCHAR(30) NOT NULL,SPECIALIZATION VARCHAR(40) NOT NULL,EMAIL VARCHAR(40) UNIQUE NOT NULL, SALARY VARCHAR(20) NOT NULL);
SELECT*FROM doctor;

-- Patient table:- The table should contain information on patients.
CREATE TABLE PATIENTS(ID INT PRIMARY KEY NOT NULL, NAME VARCHAR(30) NOT NULL,EMAIL VARCHAR(30) UNIQUE NOT NULL,PHONE_NUM INT NOT NULL,ADDRESS VARCHAR(60) NOT NULL,BIRTH DATE NOT NULL,GENDER ENUM('MALE','FEMALE','OTHERS'));
SELECT*FROM PATIENTS;

-- Appointments table:- The table should contain information related to appointments set up by doctors and patients.
CREATE TABLE APPOINTMENT(ID INT PRIMARY KEY NOT NULL,DOCTOR_ID INT NOT NULL, PATIENT_ID INT NOT NULL,APPONITMENT_DATE DATE NOT NULL,APPONTMENT_TIME TIME NOT NULL,DESCRIPTION TEXT NOT NULL,FOREIGN KEY(DOCTOR_ID) REFERENCES DOCTOR(ID),FOREIGN KEY(PATIENT_ID) REFERENCES PATIENTS(ID));
SELECT* FROM APPOINTMENT;

-- Reviews table:- This table should contain reviews posted by patients.
CREATE TABLE REVIEWS(ID INT PRIMARY KEY NOT NULL,PATIENT_ID INT NOT NULL,RATING INT NOT NULL,COMMENT TEXT,REVIEW_DATE DATE NOT NULL,FOREIGN KEY (PATIENT_ID) REFERENCES PATIENTS(ID));
SELECT*FROM REVIEWS;



