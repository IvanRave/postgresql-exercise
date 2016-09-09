# postgresql-exercise

Exercises for PostgreSQL on PL/pgSQL

## Exercise 21

### Source

created    | summ
--------   | ----
01.01.2016 | 300
03.01.2016 | 200
03.01.2016 | 120
05.01.2016 | 50


### Result

created    | summ
-------    | ----
01.01.2016 | 300
02.01.2016 | null
03.01.2016 | 320
04.01.2016 | null
05.01.2016 | 50


## Exercise 22

### Source

Division

id  | name
--- | ---
1   | first division
2   | second division
3   | third division

Employee

id  | name | hire_date  | division_id
--- | ---- | ---------  | -----------
11  | John | 01.01.2016 | 3
12  | Carl | 03.01.2016 | 2
13  | Lena | 10.02.2016 | 3
14  | Bary | 04.01.2016 | 2
15  | Tony | 01.02.2016 | 1
16  | Mona | 04.02.2016 | 3
17  | Jenn | 05.01.2016 | 1


### Result

Most visited division per January: **second division**


## Exercise 23

### Source

x1

department | name
---------- | ----
analyze    | Chris
devel      | Snout
devel      | Sarto


x2

department | name
---------- | ----
test       | Chris
devel      | Snout
test       | Harry
devel      | Sarto


### Result

Union

department | name
---------  | -------
   test    | Harry
   test    | Chris
   devel   | Sarto
   analyze | Chris
   devel   | Snout

## Exercise 24

### Source

- actor (id, name)
- movie (id, name)
- role (actor_id, movie_id)

### Result

Number of movies per each actor


## Exercise 31

### Source

Task

name   | bugs
---    | ---
first  | 12
second | 40
third  | 10
forth  | 42

### Result

Delete first 2 records with maximum number of bugs

name   | bugs
---    | ---
first  | 12
third  | 10


## Exercise 32

### Source

name  |
----- |
bar   |
foo   |
hello |
hello |
world |
bar   |

### Result

Remove duplicate records

name  |
----  |
foo   |
hello |
world |
bar   |