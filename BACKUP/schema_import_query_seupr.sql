@echo off
echo .......................SMS Backup Is Running........................

alter user system identified by system account unlock;
grant dba to system;
conn sys/sys@orcl as sysdba;

drop user seupr cascade;
CREATE USER seupr IDENTIFIED BY seupr account unlock;
GRANT dba to seupr;
GRANT datapump_exp_full_database to seupr;

exit;




