# MYSQL学习

## The second day

### DML 添加，修改，删除数据

---

```sql
1.添加数据--->字段和值一一对应
1.1:给指定字段添加数据
insert into 表名(字段1，字段2...,字段n) values(v1,v2...vn);
1.2:给表内所有字段添加数据(无需-->（表名）)
insert into 表名 values(...);
1.3:批量插入数据
insert into 表名(字段名...) values(v...),(v...),(v...);
insert into 表名 values(v...),(v...),(v...);


2.修改数据
2.1:修改该字段下满足条件的指定数据
update 表名 set 字段1 = new value1,字段2 = new values2,... where 条件;
2.2:修改该字段下全部数据
update 表名 set 字段1 = new value1,字段2 = new values2,...;

3.删除数据
3.1:删除满足条件的子表
delete from 表名 where 条件;
3.2:删除表内所有子表(删除操作不可逆)
delete from 表名;
```

---

**重要概念-->操作对象**

1. 数据库

2. 表

3. 子表

4. 数据
