SET SQL_SAFE_UPDATES=0;
show global variables like 'local_infile';

set global local_infile =true;

set global local_infile =1;

SHOW VARIABLES LIKE "secure_file_priv";

set secure_file_priv = "";

show variables  like "secure_file_priv";

show global variables;

select@@version;

show variables like '%secure%';

set loose_local_infile =1;

show variables like '%local%';

