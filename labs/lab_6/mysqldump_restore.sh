#!/bin/bash

PASSWORD="pw@My5qI#8oo8!"
DB_1="student_data"
DB_2="colorado"

# login into database and show databases
mysql -u root -p${PASSWORD} -e "SHOW DATABASES"

if [ $? -eq 0 ]; then

    # create the database if doesn't exist
    mysql -u root -p${PASSWORD} -e "CREATE DATABASE IF NOT EXISTS ${DB_1};"
    mysql -u root -p${PASSWORD} -e "CREATE DATABASE IF NOT EXISTS ${DB_2};"
    sleep 3

    # restoring databases
    echo "Restoring databases"
    gunzip < full_backup.sql.gz | mysql -u root -p${PASSWORD}
    sleep 3

    # show databases
    mysql -u root -p${PASSWORD} -e "SHOW DATABASES"

    # showing databases and tables
    mysql -u root -p${PASSWORD} -e "SHOW TABLES;" ${DB_1}
    sleep 3
    echo "${DB_1} restored successfully"
    sleep 3
    mysql -u root -p${PASSWORD} -e "SHOW TABLES;" ${DB_2}
    sleep 3
    echo "${DB_2} restored successfully"
else
    echo "Database restore failed"
fi