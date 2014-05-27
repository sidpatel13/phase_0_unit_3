# U3.W7: Intro to SQLite

## Release 0: Create a dummy database

<!-- paste your terminal output here -->
CREATE TABLE users (
   ...>   id INTEGER PRIMARY KEY AUTOINCREMENT,
   ...>   first_name VARCHAR(64) NOT NULL,
   ...>   last_name  VARCHAR(64) NOT NULL,
   ...>   email VARCHAR(128) UNIQUE NOT NULL,
   ...>   created_at DATETIME NOT NULL,
   ...>   updated_at DATETIME NOT NULL
   ...> );


## Release 1: Insert Data 
<!-- paste your terminal output here -->
id          first_name  last_name   email                  created_at           updated_at         
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-05-18 23:43:28  2014-05-18 23:43:28
2           Sid         Patel       sidpatel13@gmail.com   2014-05-18 23:45:39 2014-05-18 23:45:39

## Release 2: Multi-line commands
<!-- paste your terminal output here -->
sqlite> SELECT * FROM USERS
   ...> ;
id          first_name  last_name   email                  created_at           updated_at         
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-05-18 23:43:28  2014-05-18 23:43:28
2           Sid         Patel       sidpatel13@gmail.com   2014-05-18 23:45:39  2014-05-18 23:45:39



## Release 3: Add a column
<!-- paste your terminal output here -->
ALTER TABLE users ADD nickname VAR(64);
UPDATE users SET nickname='kimchee' WHERE id=1;
SELECT * FROM users;


id          first_name  last_name   email                  created_at           updated_at            nickname  
----------  ----------  ----------  ---------------------  -------------------  -------------------  ----------  
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-05-18 23:43:28  2014-05-18 23:43:28   kimchee   
2           Sid         Patel       sidpatel13@gmail.com   2014-05-18 23:45:39  2014-05-18 23:45:39                        


## Release 4: Change a value
<!-- paste your terminal output here -->
UPDATE users SET nickname = "Ninja Coder" WHERE id= 1;
UPDATE users SET first_name='Kimmy' WHERE id=1;
UPDATE users SET updated_at=DATETIME('now') where id=1;

id          first_name  last_name   email                  created_at           updated_at            nickname   
----------  ----------  ----------  ---------------------  -------------------  -------------------  -----------
1           Kimmy       Lin         kimmy@devbootcamp.com  2014-05-18 23:43:28  2014-05-19 00:30:35  Ninja Coder
2           Sid         Patel       sidpatel13@gmail.com   2014-05-18 23:45:39  2014-05-18 23:45:39  



## Release 5: Reflect
What parts of your strategy worked? What problems did you face?
I think the main strategy was to follow each of the steps and google the terms that I was being asked to do along the way. So I saw some examples on how to user ALTER and UPDATE.
I think finding examples that made sense and I can use was a little difficult.

What questions did you have while coding? What resources did you find to help you answer them?
I used stackoverflow to look up how to use ALTER and UPDATE.

What concepts are you having trouble with, or did you just figure something out? If so, what?
None

Did you learn any new skills or tricks?
Yes I learned how to add columns to an existing database and how to add values to those columns.

How confident are you with each of the Learning Competencies?
Very confident.

Which parts of the challenge did you enjoy?
Making changes to the database using command line.


Which parts of the challenge did you find tedious?
None