-- TCL command :
-- Transaction control language..
-- --------------------------------------------------------------

-- commit and rollback command and savepoint:
-- these  command only work with : insert, update and delete.

-- do one configuration in mysql workbench:
-- goto edit : preference : sql execution
-- uncheck the new connection and commit mode.


-- In MySQL, ROLLBACK, COMMIT, and SAVEPOINT are used for transaction control.


-- COMMIT : Permanently saves all changes made during the current transaction. one can not change or undo something after commiting.
-- COMMIT;  *syntax*

-- ROLLBACK : Undoes all changes made during the current transaction or to a specific SAVEPOINT.It only work untill u commit .If u commit it nor the rollback nither the control+z will get the  data back.
-- ROLLBACK;    *syntax*      
-- Rollbacks the entire transaction
-- ROLLBACK TO savepoint_name;


-- SAVEPOINT : Marks a specific point within a transaction, allowing partial rollbacks to that point.
-- SAVEPOINT savepoint_name;  *syntax* 
-- For example --> if you create different different savepoints, for example for every 30 minutes you create a savepoint S1 ,S2 and S3 and so on and when you realize or get inform that the work you do in the last 1 hour is wrong so you can roll  it back to the save point you created for that hour


START TRANSACTION;
SAVEPOINT first_update;
UPDATE employees
SET salary = 55000
WHERE employee_id = 1;
SAVEPOINT second_update;
UPDATE employees
SET salary = 65000
WHERE employee_id = 2;
SAVEPOINT third_update;
UPDATE employees
SET salary = 70000
WHERE employee_id = 3;

ROLLBACK TO SAVEPOINT third_update; -- it will undo the command till line 30 ,means the work done by query 40 - 42 will be vanished

COMMIT;   -- it will permanantly save the changes and they will not be changed by any cost



/* ---- if u want to run these commands you have to make a table employees , and put data into that table-----*/
