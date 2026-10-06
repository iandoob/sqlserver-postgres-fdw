CREATE EXTENSION IF NOT EXISTS tds_fdw;
DROP SERVER IF EXISTS mssql_svr CASCADE;

CREATE SERVER mssql_svr
	FOREIGN DATA WRAPPER tds_fdw
	OPTIONS (servername 'mssql-mssqlserver-2019-1', port '1433', database 'mig_db', tds_version '7.4');
	
CREATE USER MAPPING FOR mssql
	SERVER mssql_svr
	OPTIONS (username 'sa', password 'Welcome1');

IMPORT FOREIGN SCHEMA dbo FROM SERVER mssql_svr	INTO public OPTIONS (import_default 'true');
