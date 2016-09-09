postgresql-exercise
===

Exercises for PostgreSQL on PL/pgSQL

Exercise 21
---

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


Exercise 22
---

### Source

Division

id  | name
--- | ---
1   | first division
2   | second division
3   | third division

employee

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