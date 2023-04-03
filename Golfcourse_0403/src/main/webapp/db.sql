select c_no,class_area,sum(tuition),teacher_code
from tbl_class_202201
group by teacher_code,c_no,class_area
order by teacher_code

select cl.teacher_code,class_name,teacher_name,sum(tuition)
from tbl_class_202201 cl, tbl_teacher_202201 te
where cl.teacher_code =te.teacher_code
group by cl.teacher_code,te.class_name, teacher_name
order by cl.teacher_code

//list2
select regist_month,cl.c_no, c_name,class_name,
class_area,tuition,grade
from tbl_class_202201 cl,tbl_member_202201 me,tbl_teacher_202201 te
where cl.c_no =me.c_no and cl.teacher_code =te.teacher_code

CREATE TABLE TBL_TEACHER_202201 (
  TEACHER_CODE CHAR(3) NOT NULL PRIMARY KEY,
  TEACHER_NAME VARCHAR2(15),
  CLASS_NAME VARCHAR2(20),
  CLASS_PRICE NUMBER(8),
  TEACHER_RECIST_DATE VARCHAR2(8)
);
INSERT INTO tbl_teacher_202201 VALUES('100', '이초급', '초급반', 100000, '20220101');
INSERT INTO tbl_teacher_202201 VALUES('200', '김중급', '중급반', 200000, '20220102');
INSERT INTO tbl_teacher_202201 VALUES('300', '박고급', '고급반', 300000, '20220103');
INSERT INTO tbl_teacher_202201 VALUES('400', '정심화', '심화반', 400000, '20220104');
CREATE TABLE tbl_member_202201 (
  c_no CHAR(5) NOT NULL PRIMARY KEY,
  c_name VARCHAR2(15),
  phone VARCHAR2(11),
  address VARCHAR2(50),
  grade VARCHAR2(6)
);
INSERT INTO tbl_member_202201 VALUES('10001', '홍길동', '01011112222', '서울시 강남구', '일반');
INSERT INTO tbl_member_202201 VALUES('10002', '장발장', '01022223333', '성남시 분당구', '일반');
INSERT INTO tbl_member_202201 VALUES('10003', '임꺽정', '01033334444', '대전시 유성구', '일반');
INSERT INTO tbl_member_202201 VALUES('20001', '성춘향', '01044445555', '부산시 서구', 'VIP');
INSERT INTO tbl_member_202201 VALUES('20002', '이몽룡', '01055556666', '대구시 북구', 'VIP');
CREATE TABLE tbl_class_202201 (
  regist_month VARCHAR2(6) NOT NULL,
  c_no CHAR(5),
  class_area VARCHAR2(15),
  tuition NUMBER(8),
  teacher_code CHAR(3),
  PRIMARY KEY(regist_month, c_no)
);
INSERT INTO tbl_class_202201 VALUES('202203', '10001', '서울본원', 100000, '100');
INSERT INTO tbl_class_202201 VALUES('202203', '10002', '성남본원', 100000, '100');
INSERT INTO tbl_class_202201 VALUES('202203', '10003', '대전본원', 200000, '200');
INSERT INTO tbl_class_202201 VALUES('202203', '20001', '부산본원', 150000, '300');
INSERT INTO tbl_class_202201 VALUES('202203', '20002', '대구본원', 200000, '400');
select * from TBL_TEACHER_202201;
select * from TBL_MEMBER_202201;
select * from TBL_CLASS_202201;