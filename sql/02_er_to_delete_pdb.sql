-- Create a New Pluggable Database(PDB) called er_to_delete_pdb_27928
CREATE PLUGGABLE DATABASE er_to_delete_pdb_27928 
ADMIN USER er_to_delete_27928 IDENTIFIED BY pl12345
FILE_NAME_CONVERT = (
'/opt/oracle/oradata/FREE/pdbseed/',
'/opt/oracle/oradata/FREE/er_to_deléte_pdb_27928/'
);


-- Open it
ALTER PLUGGABLE DATABASE er_to_delete_pdb_27928 OPEN;

-- Check if er_to_delete_pdb_27928 is created
SHOW pdbs;

-- Close the PDB called er_to_delete_pdb_27928
ALTER PLUGGABLE DATABASE er_to_delete_pdb_27928 CLOSE IMMEDIATE;

-- Drop or Delete er_to_delete_pdb_27928 PDB with its datafiles
DROP PLUGGABLE DATABASE er_to_delete_pdb_27928 INCLUDING DATAFILES;


-- Check if er_to_delete_pdb_27928 is deleted
SHOW pdbs;
