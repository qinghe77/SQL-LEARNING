# MYSQL学习

## The first day

## **SQL重要语法**

#### 库的创建和删除

```sqlag-0-1jkf3uc7bag-1-1jkf3uc7b
show databases; -- #显示所有的数据库
create database 名称;#创建一个数据库
create database if not exists 名称;#避免报错，先判断后执行
create database 名称 dafault charset utf8mb4;#带字符集的库，常用

select databases();#显示当前使用的库
drop 名称;#删除指定数据库
drop database if exists 名称;#同理
```

---

#### 表格的创建

1. 进入某个数据库

2. 再进行相应的操作

```sql
use 名称；#使用某个库
create table 表名(
    字段1 类型1 comment '描述1',
    字段2 类型2 comment '描述2',
    字段3 类型3 comment '描述3',
    ...
) comment '对表格的描述';
```

#### 查看表

```sql
desc 表名；#查询某个表的信息
show tables;#显示所有的表
show create table 表名；#展示该表的详细创建信息
```

#### 数据类型

![工作簿1.png](C:\Users\15209\AppData\Roaming\marktext\images\f06b15804b98fdc97e6f9ed78bf39e3d42bf4383.png)

#### 数据修改

```sql
# 向表格中添加数据
alter table 表名 add 名称 类型 comment '描述';

#修改元素的类型
alter table 表名 modify 字段名 新数据类型（长度）;
#修改元素的类型及其名称
alter table 表名 change old字段名 new字段名 新类型（长度） comment '...';
#删除元素
alter table drop 字段名；
#修改表名
alter table old表名 rename new表名;
#删除表
drop table [if exists] 表名;#[]表示可选、表删除，数据也会删除
```
