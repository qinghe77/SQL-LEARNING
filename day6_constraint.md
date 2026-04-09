# SQL语法学习

### 约束

*1.概念：作用于表中字段，限制约束数据的存贮*

*2.种类:*

1. 非空约束-not null-该字段的存储内容不能为空、

2. 唯一约束-unique-保证字段下数据都是唯一的

3. 主键约束-primary key-唯一，非空，每张表必须且只有一个

4. 默认约束-default-保存数据时，若未给该字段指定值，则填充默认值

5. 检查约束-check-保证字段值满足某一条件

6. 外键约束-foreign key-连接两张表的数据

---

写法：

1~5:创建表时在类型之后添加关键字，可任意组合，之间用空格分隔，primary key只能有一个

6：

* 添加外键：alter table 表名 add constraint 外键名称 foreign key(外键字段名) references 主表(主表列名);

-- 外键名称可任起，一般规范为fk_外键名_主表，

* 删除外键：alter table 表名 drop foreign key 外键名;

----

外键约束：

no action/restrict = 默认操作 ---> 父表中的已用数据不得删除和更改 == 不可操作

cascade ---> 可操作+跟着变。将父表上的操作给到子表，修改值则子表跟着一起变，删除值则子表的行数据直接无

set null ---> 可操作+只要主表有关联记录的数据发生变化那么就让子表对应的值变为null

因此update cascade delete set null 组合最合理
