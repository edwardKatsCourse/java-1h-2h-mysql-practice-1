SELECT * FROM student;

#insert into (column_name_1, 		column_name_2) 
#	  values (value_for_column_1, value_for_column_1);

CREATE TABLE `student` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EMAIL` varchar(45) NOT NULL,
  `NAME` varchar(45) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `EMAIL_UNIQUE` (`EMAIL`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


insert into student (EMAIL, NAME, DESCRIPTION) 
values ('david@site.com', 'David', 'Former SQL developer');

insert into student (EMAIL, NAME, DESCRIPTION) 
values ('sarah@site.com', 'Sarah', 'Current SQL developer');

insert into student (EMAIL, NAME, DESCRIPTION) values ('sarah_1@site.com', 'Sarah', 'Some description');
insert into student (EMAIL, NAME, DESCRIPTION) values ('yosi@site.com', 'Yosi', 'Some description');
insert into student (EMAIL, NAME, DESCRIPTION) values ('yosi_1@site.com', 'Yosi', 'Some description');
insert into student (EMAIL, NAME) values ('peter@site.com', 'Peter');
insert into student (EMAIL, NAME, DESCRIPTION) 
values ('marry@site.com', 'Marry', null);


select * from student where description is not null;
select * from student where description is null;

select * from student where email = 'marry@site.com';
select * from student where email = 'yosi@site.com' and name = 'Yosi';

select * from student where id != 5;

select * from student where name in ('Yosi', 'Sarah');
select * from student where id in (1,4,5, 6, 12, 111) and name in ('Peter', 'Marry');


select * from student where email like 'yosi%'; #.startsWith
select * from student where email like '%yosi'; #.endsWith
select * from student where email like '%yosi%'; #.contains

#update
update student set name = 'Michael' where id > 0;

select * from student;
delete from student where id = 1 and name = 'Michael';

#order by [column_name] asc|desc
select * from student order by id desc limit 10;



#delete

#like
#top/limit



CREATE TABLE `student_address` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CITY` varchar(45) NOT NULL,
  `STUDENT_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `student_address_student_id_student_id_idx` (`STUDENT_ID`),
  CONSTRAINT `student_address_student_id_student_id` FOREIGN KEY (`STUDENT_ID`) REFERENCES `student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



#[FROM_TABLE_NAME]_[FROM_COLUMN_NAME]_[TO_TABLE]_[TO_COLUMN]


select * from student;
select * from student_address;
insert into student_address (CITY, STUDENT_ID) values ('Haifa', 2);

select * from student where id = 2;
select * from student_address where student_id = 2;


select * from student;
select * from student_address;


#JOIN
select s.ID, s.NAME, s.EMAIL, sa.CITY from student s
inner join student_address sa on s.ID = sa.student_id;

# TABLE_1			 TABLE_2
#  1					1
#  2			    	null
#  3					3
#  null  				4

#JOINS
#INNER
#LEFT
#RIGHT

#FULL OUTER 

#INNER
# TABLE_1			 TABLE_2
#   must			   must

#LEFT
# TABLE_1			 TABLE_2
#   must			  not required

#RIGHT
# TABLE_1			 TABLE_2
#  not required		   must
			 

insert into student_address (CITY) value ('Tel-Aviv');
select * from student_address;
