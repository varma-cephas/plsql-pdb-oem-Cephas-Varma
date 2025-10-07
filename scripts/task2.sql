-- CREATE PLUGGABLE DATABASE va_to_delete_pdb_28179
--   ADMIN USER va_admin IDENTIFIED BY "password1"
--   FILE_NAME_CONVERT = ('/opt/oracle/oradata/ORCLCDB/pdbseed/', '/opt/oracle/oradata/ORCLCDB/va_to_delete_pdb_28179/');


-- DROP PLUGGABLE DATABASE va_to_delete_pdb_28179 INCLUDING DATAFILES;



SELECT DBMS_XDB_CONFIG.GETHTTPSPORT() FROM DUAL;