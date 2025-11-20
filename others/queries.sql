-- To single Insert
INSERT INTO Employee VALUES (101, 'Smith', 800, 0, 20);


-- Multiple Insert
INSERT ALL
  INTO Employee VALUES (101, 'Smith', 800, 0, 20)
  INTO Employee VALUES (102, 'Snehal', 1600, 300, 25)
  INTO Employee VALUES (103, 'Adama', 1100, 0, 20)
  INTO Employee VALUES (104, 'Aman', 3000, 0, 15)
  INTO Employee VALUES (105, 'Anita', 5000, 50000, 10)
  INTO Employee VALUES (107, 'Anamika', 2975, 0, 30)
SELECT * FROM dual; -- It is necessary to write DUAL here
-- DUAL (a dummy table Oracle provides).