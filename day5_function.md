# 函数

### 字符串函数

常用函数：

1. concat(s1,s2,s3,...,sn) ---> 字符串拼接并返回

2. lower/upper(str) ---> 将str转化为全小写/全大写

3. lpad/rpad(str,len,pad) ---> 用pad字符对str进行左/右填充

4. trim(str) ---> 去掉str的首尾空格

5. substring(str,position,len) ---> 返回str从position处向后索引len位置处的字符串，<注意：索引从1开始>

调用方式：select(function(factor));

例题：统一企业员工ID，统一为5位数，不足5位数的在ID前补0至5位为止，如（旧ID=283,新ID=00283)。

解答：

```sql
update workno set ID = lpad(ID,5,0);
```

---

### 数值函数

常用函数：

1. ceil ---> 向上取整 <=> +

2. floor ---> 向下取整 <=> -

3. mod(x,y) ---> x % y

4. rand() ---> 返回0 ~ 1以内的随机数

5. round(x,y) ---> x的值四舍五入后再以其y位小数的形式返回

例题：随机生成一个6位数的验证码

解答：

```sql
lpad(round(rand()*1000000,0),6,'0');
```

---

### 日期函数

常用函数：

1. curdate() ---> 返回当前日期(y/m/d)

2. curtime() ---> 返回当前时间(h:m:s)

3. now() ---> 返回当前日期＋时间

4. year(date) ---> 只返回日期中的年份

5. month(date) ---> 只返回日期中的月份

6. day(date) ---> 只返回日期中的日期

7. date_add(date,interval n typedef) ---> 从date向后推n*typedef的时间

8. datediff(overdate,startdate) ---> 返回该时间跨度下的天数

例题：返回所有员工的入职天数并进行倒序排列

解答：

```sql
select name,datediff(curdate(),entrydate) as 'workdays' from emp order by workdays desc;
```

---

### 流程函数

常用函数：

1. if(condition,vi,v2) ---> 如果condition判断语句成立则返回v1，否则返回v2

2. ifnull(v1,v2) ---> 先判断v1值是否为NULL，如果不则返回v1，否则返回v2

3. case when 值 then v1 else v2 end --> 判断数据是否与值匹配，若是则返回v1,反之2

4. 
