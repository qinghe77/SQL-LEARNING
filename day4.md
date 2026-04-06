# sql语法学习

### DCL-管理用户

```sql
1.查询用户
use mysql;
select * from user;
2.创建用户
create user '用户名'@'主机名' identified by '密码';
3.修改用户
alter user '用户名'@'主机名' identified with mysql_native_password by '新密码';
4.删除用户
drop user '用户名'@'主机名';
```

### DCL-权限控制

**常用权限**

| all    | 所有权限 |
|:------:|:----:|
| select | 查询权限 |
| insert | 插入数据 |
| update | 修改数据 |
| delete | 删除数据 |
| alter  | 修改表  |

| drop   | 删除数据库/表/试图 |
|:------:|:----------:|
| create | 创建数据库/表    |

```sql
1.查询用户权限
show crants for '用户名'@'主机名';
2.授予权限
grant 权限列表 on 数据库名.表名 to '用户名'@'主机名';
3.撤销权限
revoke 权限列表 on 数据库名.表名 from '用户名'@'主机名'; 
```

* 权限列表-->常用权限的任意组合，之间用','分隔

* 对一个用户的权限授予和撤销二者得范围相同
  
  组合：（若干种）
  
  1 . grant/revoke **all** on '1x*'.'1x*' to ''@'';
  
  -- 所有（库的所有表）权限
  
  2 . grant/revoke all on '某个库'.'1x*' to ''@'';
  
  -- 某个库的所有表的所有权限
  
  3 . grant/revote all on '某个库'.'某个表' to ''@'';
  
  -- 某个库中某个表的所有权限
  
  4 . grant/revote 权限列表 on 某个库'.'某个表' to ''@'';
  
  -- 某个库里某个表的某种指定权限
  
  ...也可以是-->所有数据的查询/某一个库的所有数据修改等...
  
  \
