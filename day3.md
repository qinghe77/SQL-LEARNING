# SQL学习

## The third day

### DQL-基本查询

```sql
1.查询多个字段(按列返回)
select 字段1,字段2,...,字段n from 表名;
select * from 表名;
2.设置别名(增强代码可读性)查询
select 字段 [as] '别名' from 表名;#'as'可以省略
3.去重查询
select distinct 字段 ['别名'] form 表名;
```

### DQL-条件查询

![屏幕截图 2026-03-27 222207.png](C:\Users\15209\AppData\Roaming\marktext\images\0b435f4e53e99bbdb402f865683abab6d4ff6618.png)

code form:

select 字段列表 from 表名 where 条件列表；

```sql
select xx form xxx where [xx,xx,xx,xx,...];
例如：已知表内存有多个价位的手机
1.预算在4000RMB以内,不包含4000
select mobile_phone form ele_product where price < 4000;
2.预算在6000-7500
#mothod one
select mobile_phone from ele_product where price >= 6000 &&(and) price <= 7500;
#mothod two
select mobile_phone from ele_product where price between 6000 and 7500;
3.想买IQOO并且预算在3500以内的
select mobile_phone from ele_product where brand = 'IQOO' and price <= 3500;
4.想买IQOO或者小米的
select mobile_phone from ele_product where brand = 'IQOO' or brand = '小米';
select mobile_phone from ele_product where brand in('IQOO','小米');
5.不想买锤子手机
select mobile_phone from ele_product where brand != '锤子';
select mobile_phone from ele_product where brand <> '锤子';
6.查询一款手机号码后三位为数字'666'-->>模糊匹配like+'%..'
select id from numbles where nums like '%666';
7.在一个人事系统内查询人姓名数字为3的操作-->>精准匹配like+'___'/'_....'
select name from person where name_num like '___';
```

#### **错误归纳**

* 'is' / 'is not' 应用于与'NULL'匹配时，而一般判断条件时使用 '='/'!='/'<>'

* in(条件1,条件2,...),前面无需'is'

---

### 聚合函数-->按列操作

```sql
1.统计数量
select count(字段名) form 表名 [where 条件];
2.求最值
select max/min(字段名) from 表名 [where 条件];
3.均值
select avg(字段名) from 表名 [where 条件];
4.求和
select sum(xxx) from xx [where xx];
```

#### 分组查询

```sql
基础用法：
select 字段名1,字段2,聚合函数 from 表名 group by 字段1，字段2... ;
扩展；
select 字段1，字段2，聚合函数 from 表名 where 条件 group by 字段1，字段2，having 条件；
-- where + group by + having 
/* where 对数据先进行筛选，having对结果进行第二次筛选后输出 */
```

**分组和聚合函数的关系**

分组必有其他列数据和分组函数，缺一不可

但有聚合函数和其他列数据不一定用分组

*核心*就是理解分组的目的

#### 排序查询

```sql
基础用法
select 子段1，字段2 from 表名 order by asc(升序，默认值可省略),desc(降序);
扩展用法
select ziduan1,ziduan2,juhehanshu from biaoming where tiaojian group by ziduan1 order by asc,desc;
#书写顺序先where在group by最后order by 
```

#### 分页查询

```sql
select ziduan from biaoming limit 起始索引,查询记录数;
#起始索引--->(查询页码数 - 1) * 每页数据条数返回值
#记录数--->每页的数据量
```
