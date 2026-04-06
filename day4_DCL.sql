-- 查询用户
use mysql;
select * from user;
-- 创建一个用户
create user 'shiyanping'@'localhost' identified by '123456';
-- 修改用户密码
alter user 'shiyanping'@'localhost' identified with mysql_native_password by '1234';
-- 显示用户权限
show grants for 'shiyanping'@'localhost';
-- 授予权限
grant all on *.* to 'shiyanping'@'localhost';
-- 撤销权限
revoke all on *.* from 'shiyanping'@'localhost';
-- 删除用户
drop user 'shiyanping'@'localhost';