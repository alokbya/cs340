To complete this assignment, I had to create a new database, and then load the provided dump file to fill the database with necessary files to complete this assignment.

## make sure mysql is installed (macos)
```
brew update
brew install mysql
brew services start mysql
```

## log into mysql server
```
mysql -u root -p
```
provide root password after running this command.

## show databases
```
SHOW DATABASES;
```

## create a new database for this assignment
```
CREATE DATABASE sql_quiz_db;
```

## select the new database to work wtih
```
USE sql_quiz_db;
```

## load dump file in new db to fill database
```
source ./quiz_db_dump.sql
```

Then use the database to check commands prior to submitting to gradescope.
