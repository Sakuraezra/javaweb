select * from t_user;
select * from t_role;
select * from t_customer;
select * from t_lkm;
select * from t_customer c,t_lkm t where c.cid=t.clid;

select * from user_role;

drop table t_user;
drop table t_role;
drop table t_customer;
drop table t_lkm;
drop table user_role;
drop table t_user;
drop table Tuser;
drop table ssh;
drop table place;

select * from SSH_EMPLOYEE;
select * from SSH_DEPARTMENT;

select * from ssh;
select * from place;
select * from Suser ;

CREATE TABLE Suser (    
  SNO VARCHAR2(9) PRIMARY  KEY,
  Sname VARCHAR2(18),
  Spassword varCHAR(18)
);


CREATE TABLE Tuser(    
  sno integer PRIMARY  KEY,
  sname VARCHAR2(18),
  salary integer
);

insert into place values(1,'yyf',20000,10000,3,'E:/imag es/g1.gif');
insert into place values(2,'yyf',20000,10000,3,'E:/imag es/g1.gif');

insert into place values(3,'yyf',20000,10000,3,'E:/imag es/g1.gif');
insert into place values(4,'yyf',20000,10000,3,'E:/imag es/g1.gif');
insert into place values(5,'yyf',20000,10000,3,'E:/imag es/g1.gif');
insert into place values(6,'yyf',20000,10000,3,'E:/imag es/g1.gif');
insert into place values(7,'yyf',20000,10000,3,'E:/imag es/g1.gif');
insert into place values(8,'yyf',20000,10000,3,'E:/imag es/g1.gif');
insert into place values(9,'yyf',20000,10000,3,'E:/imag es/g1.gif');

insert into place values(10,'yyf',20000,10000,3,'E:/imag es/g1.gif');

insert into place values(11,'yyf',20000,10000,3,'E:/imag es/g1.gif');

insert into place values(12,'yyf',20000,10000,3,'E:/imag es/g1.gif');

insert into place values(13,'yyf',20000,10000,3,'E:/imag es/g1.gif');

insert into place values(14,'yyf',20000,10000,3,'E:/imag es/g1.gif');

insert into place values(15,'yyf',20000,10000,3,'E:/imag es/g1.gif');

insert into ssh values(1,'yyf','nv',20000,10,3);
insert into ssh values(1,'xdy','nv','20000',10,3);


insert into Tuser(sno,sname,salary) values(1,'yyf',10000);
select * from Tuser ;

