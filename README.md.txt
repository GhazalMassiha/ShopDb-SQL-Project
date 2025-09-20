# ShopDb SQL Project

## Description

This project contains SQL scripts for a sample database called **ShopDb**. It has:

- `Sql Script.sql`: script that creates tables (schema) and inserts sample data.  
- `SQLQuery1.sql`: a file with SQL queries to answer different questions (e.g. product names, sums, grouping, etc.).

## Files

| File | What it does |
|------|----------------|
| `Sql Script.sql` | Creates database, tables (with primary keys and foreign keys), and inserts data. |
| `SQLQuery1.sql` | Contains queries: filtering, grouping, joins, sorting etc. |

## How to run / test

1. Open your SQL tool (e.g. SQL Server Management Studio, MySQL Workbench, SQLite, etc.).  
2. Run `Sql Script.sql` first — this sets up the database and fills the tables.  
3. Then run `SQLQuery1.sql` to see the results of the queries.  

## Prerequisites

You need a SQL server / database engine that supports:

- Basic SQL `CREATE TABLE`, `INSERT`, `SELECT`, `JOIN` etc.  
- Primary key / foreign key constraints.  
- Date functions (for filtering by year / month) if your queries use them.

## How this is organized

- Schema + data → in `Sql Script.sql`  
- Queries → in `SQLQuery1.sql`  

## Possible enhancements (optional)

- Add more queries  
- Add documentation of what each query is doing, maybe in comments in `SQLQuery1.sql`  
- Include expected results or sample output  

---



