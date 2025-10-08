-- Connect to the System as Sysdba
sqlplus / as sysdba

-- Set the container to CDB$ROOT
ALTER SESSION SET CONTAINER = CDB$ROOT;

-- Check if I am connected to the root container
SHOW con_name;

-- Check the current HTTP and HTTPS ports for Oracle XML DB
SELECT DBMS_XDB_CONFIG.GETHTTPPORT() AS HTTP_PORT,
       DBMS_XDB_CONFIG.GETHTTPSPORT() AS HTTPS_PORT 
FROM dual;


-- Set the HTTP port to 8080 and HTTPS port to 8800 (optional)
BEGIN
    DBMS_XDB_CONFIG.SETHTTPPORT(8080);
    DBMS_XDB_CONFIG.SETHTTPSPORT(8800); 
END;
/

-- Verify the changes
SELECT DBMS_XDB_CONFIG.GETHTTPPORT() AS HTTP_PORT,
       DBMS_XDB_CONFIG.GETHTTPSPORT() AS HTTPS_PORT 
FROM dual;


-- Restart the database to apply changes 
SHUTDOWN IMMEDIATE;
STARTUP;


-- Verify the ports again after restart
SELECT DBMS_XDB_CONFIG.GETHTTPSPORT() AS HTTPS_PORT FROM dual;