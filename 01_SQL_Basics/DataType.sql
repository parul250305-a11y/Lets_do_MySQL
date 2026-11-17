
MySQL data types define the kind of value a column can hold, such as numbers, text, or dates. Choosing the right data type ensures data accuracy and saves storage space.
MySQL organizes its standard data types into three main categories:

1. Numeric Data Types

Used for storing whole numbers, decimals, and true/false flags.

Data Type      |Description                                                 |Common Use Case
               |                                                            |
INT	           |Standard whole numbers (approx. -2.1B to 2.1B).	            | User IDs, quantities, age.
TINYINT	       |Very small whole numbers (-128 to 127).	                    | Boolean flags (0 for false, 1 for true).
BIGINT         |Very large whole numbers.	                                | High-volume transaction IDs, view counts.
DECIMAL(p, s)  |Exact fixed-point numbers (p = total digits, s = decimals).	| Currency, financial calculations.
FLOAT / DOUBLE |pproximate floating-point decimal numbers.	                | Scientific measurements, GPS coordinates. 


2. String (Text) Data Types

Used for storing characters, words, paragraphs, and binary data.

Data Type |	Description	                                                      |Common Use Case
          |                                                                   |
CHAR(n)	  |Fixed-length text string up to n characters (pads with spaces).	  |Country codes ('US', 'IN'), status codes.
VARCHAR(n)|	Variable-length text string up to n characters (saves space).	  |Names, email addresses, usernames.
TEXT	  |Large variable-length text up to 65,535 characters.	              |Blog posts, product descriptions, comments.
ENUM	  |Restricts the column to one value from a predefined list.	      |Order status ('pending', 'shipped', 'delivered').
BLOB	  |Binary Large Object for raw binary data.	                          |Small images, audio snippets, encrypted files.

3. Date and Time Data Types

Used for tracking calendar dates, times, and event timestamps.

Data Type |	Format	            |Common Use Case
          |                     |
DATE	  |YYYY-MM-DD	        |Birthdays, due dates, hire dates.
TIME	  |HH:MM:SS	            |Duration, shift start times.
DATETIME  |	YYYY-MM-DD HH:MM:SS	| Appointment schedules, fixed event logs.
TIMESTAMP |	YYYY-MM-DD HH:MM:SS | Auto-updating created_at or updated_at logs (adjusts to time zones).
YEAR      |	YYYY	            |Graduation year, vehicle model year.


Other Notable Types

• JSON. Stores structured JSON documents natively and validates their syntax automatically.
• BOOLEAN. Acts as an alias for TINYINT(1), where 0 is considered false and non-zero values are true.

