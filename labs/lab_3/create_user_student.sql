##run this script as root 
create user 'student'@'localhost' identified by 'student' ;
grant all privileges on *.* to 'student'@'localhost';
flush privileges;
