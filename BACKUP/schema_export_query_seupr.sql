@echo off
echo .......................SMS Backup Is Running........................




rem https://oracle-base.com/articles/10g/oracle-data-pump-10g
ALTER USER seupr IDENTIFIED BY seupr ACCOUNT UNLOCK;

CREATE OR REPLACE DIRECTORY exp_schema AS 'D:\SAIFURSOFT\SEUPR\BACKUP\SCHEMA_EXPORT';
GRANT READ, WRITE ON DIRECTORY exp_schema TO seupr;
GRANT datapump_exp_full_database to seupr;
exit;




