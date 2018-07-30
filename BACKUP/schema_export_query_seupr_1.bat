@echo off
echo .......................SMS Backup Is Running........................


C:\app\opriy\product\11.2.0\dbhome_1\BIN\sqlplus sys/sys@orcl as sysdba @schema_export_query_seupr.sql

pause


