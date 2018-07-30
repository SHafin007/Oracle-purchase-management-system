@echo off
echo .......................SMS Backup Is Running........................

alter user system identified by system account unlock;
grant dba to system;
conn system/system@orcl as sysdba;

drop user SEU_PO_REQ cascade;
REM CREATE USER SEU_PO_REQ IDENTIFIED BY 1234 account unlock;
REM GRANT dba to SEU_PO_REQ;
REM ALTER USER seu_po_req IDENTIFIED BY 1234 ACCOUNT UNLOCK;

exit;




