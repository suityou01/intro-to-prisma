# Set up the docker image

## Terminal work

### Terminal #1

```bash
docker build . -t prisma-intro --name prisma-intro
docker run --name prisma_intro prisma-intro
```

### Terminal #2

```bash
docker exec -it prisma_intro /bin/bash
sqlcmd -S 127.0.0.1 -U sa -P pa55w0rd! -C
```

```sql
SELECT @@version
GO
```

```bash
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Microsoft SQL Server 2019 (RTM-CU22) (KB5027702) - 15.0.4322.2 (X64) 
        Jul 27 2023 18:11:00 
        Copyright (C) 2019 Microsoft Corporation
        Developer Edition (64-bit) on Linux (Ubuntu 20.04.6 LTS) <X64>                                                                                                      

(1 rows affected)
```

```sql
SELECT name from sysdatabases
GO
```

```bash
--------------------------------------------------------------------------------------------------------------------------------
master                                                                                                                          
tempdb                                                                                                                          
model                                                                                                                           
msdb                                                                                                                            

(4 rows affected)
```