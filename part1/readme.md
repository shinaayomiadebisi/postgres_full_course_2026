relation database -> table form
tables connected using relationships

users table
posts table
comments table

1 post -> 1 user
1 comment -> 1 post

1 user -> many posts

non relational db -> doesn't organize data using connected tables.
it uses documents, key value pairs

<!-- Conditions for relational - When you need -->

data clear structure, relationships, transactions, joins,
strong validation at db level

banking app, e-commerce, CRM

<!-- Use non-relational data when your data changes often -->

non relational - data changes very often, doc independent, not much joins (you don't need much joins)

<!--
psql — Starts the PostgreSQL command-line client.
-U postgres — Connects as the postgres user.
-d postgres — Connects to the postgres database.
-f part1/01_first_database.sql — Executes the SQL statements contained in the file part1/01_first_database.sql.
-->
<!-- psql means use psql, -U means user 'postgres' (login as postgres user), -d means connect to database 'postgres' database, -f means run sql command from this path sql file  -->

psql -U postgres -d postgres -f part1/01_first_database.sql

<!-- To avoid asking for password every time, use: -->

export PGPASSWORD="admin"

<!-- To connect to the db directly -->

psql -U postgres -d postgresql_part1

psql -U postgres -d postgresql_part1 -f part1/02_first_schema.sql

--
To check database --> SELECT current_database();
To check user --> SELECT current_user;
To confirm postgreSQL version --> SELECT version();
\l : List all available databases on the server.
\c database_name : Connect or switch to a different database.
\dt : List all tables in the current database.
\d table_name : Describe a specific table's columns and data types.
\du : List all database users and their roles/privileges.
\df : List functions within the database.
\dv : List all database views.
\x : Toggle expanded display mode (useful for viewing wide tables).
\? : View help documentation for all backslash commands.
\h : View syntax help for specific SQL statements (e.g., \h ALTER TABLE).
\q : Quit the psql interface and return to your main shell OR exit

<!-- To check tables -->

\dt basics.\*
SELECT \* FROM basics.students;
