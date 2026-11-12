Comments in MySQL are non-executable notes added to SQL code to explain logic or temporarily disable statements during debugging. The database engine ignores them completely during execution, meaning they have zero impact on query performance.

Types of SQL Comments

1) According to the MySQL Reference Manual, MySQL supports three main styles for commenting inside SQL scripts:
• Double-dash (-- ). Starts a single-line comment that runs to the end of the line. You must include at least one whitespace character (like a space or tab) right after the second dash.
• Hash symbol (#). Starts a single-line comment that continues until the end of the line. Unlike the double-dash style, it does not require a trailing space.
• C-style block (/* ... */). Creates multi-line or inline comments that span from the opening /* to the closing */. Nested comments inside another block are not supported.



EXAMPLE :

-- Single-line comment with double-dash (requires space)
# Single-line comment with hash symbol
SELECT first_name, /* inline comment */ last_name 
FROM users;

/* 
   Multi-line comment block 
   used for longer explanations
*/



2) Executable & Schema Comments

Beyond basic code notes, MySQL provides specialized comment features for portability and database documentation:
• Executable comments (/*! ... */). MySQL executes SQL code placed inside this specific syntax while other database systems ignore it as a standard comment. You can also append a version number (such as /*!80000 ... */) so the code only runs on that version of MySQL or newer.
• Schema object comments (COMMENT keyword). Users on Stack Overflow note that the COMMENT clause stores persistent metadata directly on tables, columns, and indexes during CREATE or ALTER statements. You can view these saved descriptions later using SHOW FULL COLUMNS or SHOW CREATE TABLE


EXAMPLE :

CREATE TABLE orders (
    order_id INT PRIMARY KEY COMMENT 'Unique identifier for each order'
) COMMENT = 'Stores customer purchase records';