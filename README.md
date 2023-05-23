# MySQL-CONSTRAINT
/*
### SQL constrains
1.Not Null
2.Unique
3.Primary Key
4.Foreign key
5.Check 
6.Default
7.Index
*/

1. Not Null: This constraint ensures that a column cannot have a NULL value. It requires the column to have a valid value during data insertion or update.

2. Unique: The unique constraint ensures that each value in a column is unique across the table. It prevents duplicate values in the specified column.

3. Primary Key: A primary key constraint uniquely identifies each record in a table. It can consist of one or multiple columns and ensures that the values in the key are unique and not NULL.

4. Foreign Key: The foreign key constraint establishes a relationship between two tables. It ensures referential integrity by requiring that the values in the foreign key column(s) match the values in the primary key column(s) of the referenced table.

5. Check: The check constraint allows you to specify a condition that must be true for the data in a column. It restricts the values that can be inserted or updated based on the defined condition.

6. Default: The default constraint assigns a default value to a column if no explicit value is specified during data insertion. It ensures that the column always has a value, even if not provided explicitly.

7. Index: Although not strictly a constraint, an index is a database object that improves the performance of data retrieval by providing quick access to data based on specific columns. It speeds up queries by creating a sorted data structure.
