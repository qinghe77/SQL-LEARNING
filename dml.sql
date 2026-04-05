show tables;
desc employee;
insert into employee (id, workno, name, gender, age, idcard, entrydata) values ('007','a boy','morse','男',20,'X10833849238492738','2029-7-1');

desc employee;
select * from employee;

insert into employee values ('009','cat','鹤庆','男',21,'123456789098765432','2005-12-21');
insert into employee values ('010','goat','messi','男',39,'234576839283746210','2007-04-18'),('012','a dog','围岩','男',34,'123423348593475863','2021-05-30');

use itcase;
update employee set id = '004' where workno = 'a boy';
delete from employee where id = 832;
delete from employee where id = '004';

select * from employee;
drop table employee;

CREATE TABLE students (
    id VARCHAR(12) NOT NULL COMMENT '12位数字学号（2025开头+8位随机数）',
    name VARCHAR(6) NOT NULL COMMENT '学生姓名（支持6个汉字）',
    age TINYINT UNSIGNED NOT NULL COMMENT '年龄（18-20岁）',
    gender VARCHAR(6) NOT NULL COMMENT '性别（male/female）',
    idcard VARCHAR(18) NOT NULL COMMENT '18位身份证号（支持X结尾）',
    address VARCHAR(20) NOT NULL COMMENT '省份（含湖北、宁夏、新疆等）',
    score TINYINT UNSIGNED NOT NULL COMMENT '分数（0-100）',
    PRIMARY KEY (id),
    UNIQUE KEY uk_idcard (idcard)
) COMMENT '学生信息表（包含15条测试数据）';

INSERT INTO students (id, name, age, gender, idcard, address, score) VALUES
('202512345678', '张伟', 18, 'male', '420106200701011234', '湖北省', 85),
('202587654321', '李娜', 19, 'female', '640104200602022345', '宁夏回族自治区', 92),
('202511223344', '艾力江', 20, 'male', '650105200503033456', '新疆维吾尔自治区', 78),
('202544332211', '王芳', 18, 'female', '430102200704044567', '湖南省', 88),
('202555667788', '刘强', 19, 'male', '110101200605055678', '北京市', 90),
('202588776655', '陈静', 20, 'female', '310101200506066789', '上海市', 75),
('202599887766', '买买提', 18, 'male', '650201200707077890', '新疆维吾尔自治区', 82),
('202566554433', '赵敏', 19, 'female', '420103200608088901', '湖北省', 89),
('202533445566', '张浩', 20, 'male', '640201200509099012', '宁夏回族自治区', 79),
('202577889900', '刘敏', 18, 'female', '330106200710100123', '浙江省', 95),
('202500998877', '迪丽热巴', 19, 'female', '650103200611111234', '新疆维吾尔自治区', 86),
('202512121212', '李强', 20, 'male', '420104200512122345', '湖北省', 80),
('202523232323', '王强', 18, 'male', '510104200701133456', '四川省', 76),
('202534343434', '张丽', 19, 'female', '640105200602144567', '宁夏回族自治区', 91),
('202545454545', '阿依古丽', 20, 'female', '650102200503155678', '新疆维吾尔自治区', 83);

select * from students;
select address from students;
select address as '家庭住址' from students;
select distinct address as '家庭住址' from students;