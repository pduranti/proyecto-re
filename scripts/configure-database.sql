CREATE USER 'dbuser'@'localhost' IDENTIFIED BY 'desubicados';

GRANT ALL PRIVILEGES ON *.* TO 'dbuser'@'localhost' WITH GRANT OPTION;

CREATE USER 'dbuser'@'%' IDENTIFIED BY 'desubicados';

GRANT ALL PRIVILEGES ON *.* TO 'dbuser'@'%' WITH GRANT OPTION;

create database proyectore;
