create login AbdelrahmanSami with password='1023##$102';
create login AhmedRamadan with password='225252#w20';
create login AbdelrahmanAhmed with password='3d22@nknc';


create user AbdelrahmanAhmed for login AbdelrahmanAhmed;
create user AhmedRamadan for login AhmedRamadan;
create user AbdelrahmanSami for login AbdelrahmanSami;

grant select, insert to AbdelrahmanSami ;
revoke select to AhmedRamadan ;

drop user AbdelrahmanAhmed;
drop user AbdelrahmanSami;
drop user AhmedRamadan;


drop login AbdelrahmanAhmed;
drop login AbdelrahmanSami;
drop login AhmedRamadan;

