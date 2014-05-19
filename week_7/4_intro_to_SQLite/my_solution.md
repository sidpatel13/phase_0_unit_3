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
Error: UNIQUE constraint failed: users.email
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
<!-- Add your reflection here -->