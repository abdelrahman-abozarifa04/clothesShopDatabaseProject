
--create login annd pasword(authendication
create login mahmoud 
with password='eru'



--create user then asign  user to login 
use company 
create user mahmoud 
for login mahmoud



--give permission(autherization)
use company
grant select,insert
on employees
to mahmoud



--prevent permission
use company
deny select,insert
on employees
to mahmoud


--remove permission
use company
revoke select,insert
on employees
from mahmoud