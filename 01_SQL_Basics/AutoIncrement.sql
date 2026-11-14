-- In MySQL, the AUTO_INCREMENT attribute automatically generates a unique, sequential numeric ID for each new row inserted into a table. By default, the sequence starts at 1 and increases by 1 with every new record.
-- Basic Syntax & Usage : --> 
-- To use AUTO_INCREMENT, apply it to an integer primary key column when creating a table.

CREATE TABLE users (
    user_id INT NOT NULL AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    PRIMARY KEY (user_id)
);

-- When inserting data, omit the AUTO_INCREMENT column (or pass NULL or 0) so MySQL assigns the next number automatically

INSERT INTO users (username, email) 
VALUES ('alex_dev', 'alex@example.com');


-- Managing the Counter
-- You can customize, inspect, or reset the sequence using standard SQL commands or GUI tools like MySQL Workbench.
-- • Set a custom starting value. Use ALTER TABLE to make the sequence start at a specific number (such as 1000)
ALTER TABLE users AUTO_INCREMENT = 1000;
-- Add to an existing table. Modify an existing integer primary key column to enable auto-incrementing.
ALTER TABLE users MODIFY user_id INT NOT NULL AUTO_INCREMENT;
-- Retrieve the last generated ID. Call LAST_INSERT_ID() right after an INSERT statement to get the ID generated for your current session.
SELECT LAST_INSERT_ID();

-- Reset the counter. Deleting rows with DELETE preserves the current counter, meaning gaps will appear in your sequence. Running TRUNCATE TABLE users; deletes all data and resets the counter back to 1.



-- Key Rules and Limitations : --->

-- According to the MySQL Reference Manual, keep these constraints in mind when designing your schema:
-- • One column per table. A table can only have one AUTO_INCREMENT column.
-- • Must be indexed. The column must be defined as a PRIMARY KEY or have a UNIQUE index.
-- • Integer types only. It only works with integer data types (TINYINT, SMALLINT, MEDIUMINT, INT, BIGINT). Use BIGINT UNSIGNED for high-volume tables to avoid hitting the maximum integer limit.
-- • Sequence gaps are normal. Rolled-back transactions, failed inserts, and deleted rows consume sequence numbers and leave permanent gaps.