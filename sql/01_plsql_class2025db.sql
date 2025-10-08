-- Create a New Pluggable Database(PDB) called plsql_class2025db
CREATE PLUGGABLE DATABASE plsql_class2025db 
ADMIN USER eric_plsqlauca_27928 IDENTIFIED BY pl12345
FILE_NAME_CONVERT = (
'/opt/oracle/oradata/FREE/pdbseed/',
'/opt/oracle/oradata/FREE/plsql_class2025db/'
);



-- Check if plsql_class2025db created
SHOW pdbs;


-- Open the PDB
ALTER PLUGGABLE DATABASE plsql_class2025db OPEN;


-- Set it to open automatically
ALTER PLUGGABLE DATABASE plsql_class2025db SAVE STATE;


-- Check if plsql_class2025db 
SHOW pdbs;

-- Connect to the new PDB
ALTER SESSION set CONTAINER = plsql_class2025db;

-- Show current container
SHOW con_name;