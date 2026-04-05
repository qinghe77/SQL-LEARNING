use itcase;
select * from students;
-- 例题一：查询年龄为18，19的学生信息
select * from students where age = 18 and gender = 'female' or age = 19 and gender = 'female';
# 错误反思：逻辑运算符使用错误，or是或，and是同时满足，试问谁的年龄是18和19岁
-- 例题二：查询性别为女，年龄为18，三个字的学生
select * from students where gender = 'female' and age = 19 and name like '__';
#错误反思：字符长度匹配时用···字段名 like '%_'虚拟匹配
-- 例题三：年龄为19-20的男女学生数量
select gender '性别',age '年龄',count(age) '个数' from students group by gender,age having age between 19 and 20;
-- 例题四：按照先分数后年龄，将学生以性别和年龄呈现
select gender,age,score from students order by score desc,age asc;
#错误反思：group by+字段名,是根据字段进行分组聚合，然后在这个集合里用聚合函数，min，max，avg，sum，count，如果不用聚合函数，那么就无需使用group by
select gender,age,score from students order by score desc,age asc;

---
use itcase;
select * from students;
-- 例题一：查询年龄为18，19的学生信息
select * from students where age = 18 or age = 19 ;
-- 例题二：查询性别为女，年龄为18，姓名为两个字的学生
select *  from students where age = 18 and  gender = 'female' and name like '__';
-- 例题三：年龄为19-20的男女学生数量
select gender '性别',count(name) '人数' from students where age between 19 and 20 group by gender ;
-- 例题四：按照先分数后年龄，将学生以性别和年龄呈现
select name,gender,age,score from students order by score desc,age ;
-- 例题五：要求性别为女，按照先分数降序后年龄升序输出前3名的学生信息
select * from students where gender = 'female' order by score desc,age limit 0, 3;
# 测试输出无误，现对数据进行微调，充分检测先后排序执行顺序
update students set age = 18,score = 92 where name = '张丽';
select * from students where name = '张丽';
select * from students where gender = 'female' order by score desc,age limit 0, 3;