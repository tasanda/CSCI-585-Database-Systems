CREATE TABLE STUDENT (
STU_ID	int NOT NULL,
FIRST_NAME VARCHAR(20) NOT NULL,
LAST_NAME VARCHAR(20) NOT NULL,
STU_EMAIL VARCHAR(35) NOT NULL,
STU_FEE	NUMBER(8,2) NOT NULL,
DAMAGED_PART_FEE NUMBER(8,2) NOT NULL,
PRIMARY KEY(STU_ID)
);

INSERT INTO STUDENT VALUES
(1,'Peter','Parker','swingshot@usc.edu',95.00,1.50),
(2,'Steve','Rogers','capnamerica@usc.edu',95.00,2.97),
(3,'Barry','Allen','flashy@gmail.com',95.00,0),
(4,'Dick','Grayson','nightwing@yahoo.com',95.00,2.97),
(5,'Oliver','Queen','grenarrow@gmail.com',95.00,1.50),
(6,'Clark','Kent','super@aol.com',95.00,2.97),
(7,'Bruce','Wayne','batsy@gmail.com',95.00,0),
(8,'Tony','Stark','veryrich@yahoo.com',95.00,2.97);

--SELECT * FROM STUDENT;

CREATE TABLE ROOM (
ROOM_CODE	int NOT NULL,
ROOM_TYPE VARCHAR(20) NOT NULL,
PRIMARY KEY(ROOM_CODE)
);

INSERT INTO ROOM VALUES
(201, 'Class room'),
(202, 'Laboratory'),
(105, 'Laboratory'),
(302, 'Green house'),
(306, 'Attic');

--SELECT * FROM ROOM;

CREATE TABLE ACTIVITY (
ACTIVITY_CODE int NOT NULL,
STU_ID	int NOT NULL,
ACTIVITY_NAME VARCHAR(20) NOT NULL,
ACTIVITY_DESCRIPTION VARCHAR(100) NOT NULL,
ACTIVITY_DATE DATE,
ACTIVITY_DURATION int NOT NULL,
ROOM_ID int NOT NULL,
ACTIVITY_GRADE	VARCHAR(2) NOT NULL,
ACTIVITY_TYPE VARCHAR(7) NOT NULL,
PRIMARY KEY(ACTIVITY_CODE,STU_ID)
FOREIGN KEY (STU_ID) REFERENCES STUDENT(STU_ID)
FOREIGN KEY (ROOM_ID) REFERENCES ROOM(ROOM_ID)
);

INSERT INTO ACTIVITY VALUES 
(1001,1,'Data Structures','all about data structs','05.01.2022',2,201,'A','Class'),
(1002,1,'Data Bases','all about data structs','05.15.2022',2,202,'A-','Class'),
(1003,1,'Intro to ML','all about data structs','06.01.2022',2,105,'B','Class'),
(1004,1,'Sensors','all about data structs','06.15.2022',2,201,'B+','Project'),
(1005,1,'Motion','all about data structs','06.19.2022',2,302,'B+','Project'),
(1006,1,'Final Project','all about data structs','06.25.2022',2,306,'B+','Project'),
(1007,2,'Algorithm','analysis of data structs','0.01.2022',1,201,'B+','Class');

--SELECT * FROM ACTIVITY;

SELECT FIRST_NAME, LAST_NAME, ACTIVITY_NAME 
FROM STUDENT, ACTIVITY
WHERE STUDENT.STU_ID = ACTIVITY.STU_ID and ACTIVITY_TYPE = 'Class';


----------------------
Question1

CREATE TABLE ProjectRoomBookings (
roomNum int NOT NULL,
startTime int NOT NULL,
endTime int NOT NULL UNIQUE,
groupName CHAR(10) NOT NULL,
constraint pk_ProjectRoomBookings primary key (roomNum, startTime), 
constraint CHK_Time CHECK (endTime > startTime)
);

insert into ProjectRoomBookings (roomNum, startTime, endTime, groupName) values
(101, 1, 2, 'AVENGER'),
(101, 2, 3, 'AVENGER'),
(101, 3, 4, 'AVENGER');
--ERROR 
(101, 9, 2, 'AVENGER')

Question 2

CREATE TABLE STUDENT (
ENROLL_ID int NOT NULL, 
STUID int NOT NULL,
ClassName varchar2(20) NOT NULL,
Grade varchar2(1) NOT NULL,
constraint pk_STUDENT primary key (ENROLL_ID)
);

insert into STUDENT (ENROLL_ID, STUID, ClassName, Grade) values
(1, 123, 'Processing', 'A'),
(2, 123, 'Python', 'B'),
(3, 123, 'Scratch', 'B'),
(4, 662, 'Java', 'B'),
insert into STUDENT (ENROLL_ID, STUID, ClassName, Grade) values
(5, 662, 'Python', 'A');
insert into STUDENT (ENROLL_ID, STUID, ClassName, Grade) values
(6, 662, 'JavaScript','A');
insert into STUDENT (ENROLL_ID, STUID, ClassName, Grade) values
(7, 662,  'Scratch', 'B');
insert into STUDENT (ENROLL_ID, STUID, ClassName, Grade) values
(8, 345,  'Scratch', 'A');
insert into STUDENT (ENROLL_ID, STUID, ClassName, Grade) values
(9, 345,  'JavaScript', 'B');
insert into STUDENT (ENROLL_ID, STUID, ClassName, Grade) values
(10, 345,  'Python','A');
insert into STUDENT (ENROLL_ID, STUID, ClassName, Grade) values
(11, 555,  'Python', 'B');
insert into STUDENT (ENROLL_ID, STUID, ClassName, Grade) values
(12, 555,  'JavaScript', 'B');
insert into STUDENT (ENROLL_ID, STUID, ClassName, Grade) values
(13, 213,  'JavaScript', 'A');

SELCT * FROM STUDENT;


SELECT ClassName, COUNT(STUID) AS TOTAL
FROM STUDENT
GROUP BY ClassName
ORDER BY TOTAL desc;

Question 3
