#!/bin/bash

PASSWORD="pw@My5qI#8oo8!"

# backup database with no data
if mysqldump -u root -p${PASSWORD} --no-data --result-file=no_data.sql mysql; then
    echo "Backup success"
    sleep 3
    ls -l no_data.sql
else
    echo "Backup failed"
    exit 1
fi

sleep 3

# backup student_data
if mysqldump -u root -p${PASSWORD} --result-file=single_backup.sql student_data; then
    echo "Backup success"
    sleep 3
    ls -l single_backup.sql
    sleep 3
    gzip single_backup.sql
    sleep 3
    ls -l single_backup.sql.gz
else
    echo "Backup failed"
    exit 1
fi

sleep 3

# backup all databases on mysql server
if mysqldump -u root -p${PASSWORD} --all-databases --result-file=full_backup.sql; then
    echo "Backup success"
    sleep 3
    ls -l full_backup.sql
    sleep 3
    gzip full_backup.sql
    sleep 3
    ls -l full_backup.sql.gz
else
    echo "Backup failed"
    exit 1
fi