CREATE PLUGGABLE DATABASE va_pdb_28179
  ADMIN USER va_admin IDENTIFIED BY "password1"
  FILE_NAME_CONVERT = ('/opt/oracle/oradata/ORCLCDB/pdbseed/', '/opt/oracle/oradata/ORCLCDB/va_pdb_28179/');

-- 1. Switch to the newly created PDB
ALTER SESSION SET CONTAINER = va_pdb_28179;

-- 2. Grant privileges to user.
GRANT CONNECT, RESOURCE TO va_admin;

-- -- Enables users to store their user data in the tablespace
ALTER USER va_admin QUOTA UNLIMITED ON users;

ALTER PLUGGABLE DATABASE va_pdb_28179 OPEN READ WRITE;
SELECT name, open_mode FROM v$pdbs WHERE name = 'VA_PDB_28179';
ALTER SESSION SET CONTAINER = va_pdb_28179;

CREATE USER varma_plsqlauca_28179
  IDENTIFIED BY "password1"
  DEFAULT TABLESPACE system
  TEMPORARY TABLESPACE temp;



