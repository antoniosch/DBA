if object_id('tempdb..#commonpass') is not null
begin
	drop table #commonpass;
end;
create table #commonpass (pass nvarchar(64));
BULK INSERT #commonpass FROM 'W:\TEMP\CommonPasswords.txt';
with pass_check_result as
(
	select 
			name 
	    ,   is_disabled
		,	pass
		,	case PWDCOMPARE(pass,password_hash)
			when 0 then 'N'
			when 1 then 'Y'
			end as has_common_password
	from sys.sql_logins
	cross join #commonpass
)
select distinct name,is_disabled,pass
from pass_check_result
where has_common_password='Y';

