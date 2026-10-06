# sqlserver-postgres-fdw

## Introduction
This repo will create a ..
-
- A SQL Server 2019 instance on Ubuntu
- A PostgreSQL instance on Alpine
  
Scripts are provided which will ..
-
- Create a small database in SQL Server (create_db.sql).
- Create a server in PostgreSQL which will enable you to see the data in PostgreSQL.
  
You can then copy the data from the foreign tables into PostgreSQL.

## Installation
Run `docker compose up -d`

## Usage
```
docker exec -it mssql-mssqlserver-2019-1 /opt/mssql-tools18/bin/sqlcmd -No -S localhost -U sa -P "Welcome1"
docker exec -it mssql-postgres18-mssql-1 psql -h localhost -U mssql sqlserver
```
