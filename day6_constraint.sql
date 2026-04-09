use itcase;
create table limit_list(
    id int primary key auto_increment comment 'ID唯一标识',
    name varchar(10) not null unique comment '姓名',
    age tinyint unsigned check(age > 0 and age <= 120) comment '年龄',
    status char(1) default '1' comment '状态',
    gender varchar(1) check(gender = '男' or gender = '女') comment '性别'
)comment '约束表neo';
#插入数据验证约束
insert into limit_list(name,age,status,gender) values('alex1',18,'1','男'),('liu1',19,'1','女');
select * from limit_list;
insert into limit_list(name,age,status,gender) values('alex2',19,'1','男'),('liu2',19,'1','女');
select * from limit_list;
-- check neo
insert into limit_list(name,age,status,gender) values('alex1',20,'0','男');
#error[23000][1062] Duplicate entry 'alex1' for key 'limit_list.name'
insert into limit_list(name,age,status,gender) values(null,20,'0','男');
#error[23000][1048] Column 'name' cannot be null
-- check two
insert into limit_list(name,age,status,gender) values('tom1',0,'1','男');
insert into limit_list(name,age,status,gender) values('tom1',121,'1','男');
#error[HY000][3819] Check constraint 'limit_list_chk_1' is violated.
-- check three
insert into limit_list(name,age,gender) values('tom1',22,'男');
#不特别指定，则填入默认值
select * from limit_list;
-- check four
insert into limit_list(name,age,status,gender) values ('tom2',14,'0','无');
#error[HY000][3819] Check constraint 'limit_list_chk_2' is violated.

#添加外键foregin key
create table department(
    num tinyint unsigned primary key auto_increment comment '部门编号',
    title varchar(5) comment '部门名称'
)comment '部门信息';
insert into department(title) values('声乐部'),('体育部'),('学生会');
select * from department;
select * from limit_list;
-- 从表的外键和主表的主键类型相同
alter table limit_list add part tinyint unsigned comment '部门';
update limit_list set part = 1 where id = 1 or id = 3 or id = 6 ;
update limit_list set part = 2 where id = 2 or id = 4;
select * from limit_list;
-- add fk
alter table limit_list add constraint fk_part_department foreign key(part) references department(num);
show create table limit_list;
alter table limit_list change part  part_num tinyint unsigned comment '部门编号';
select * from limit_list;