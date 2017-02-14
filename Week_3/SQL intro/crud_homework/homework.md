# SQL Homework

The Dominion Cinema are having a Marvel Movie Marathon! They have asked you to help maintain their database of movies with times and attendees.

## To access the database:

First, create a database called 'marvel'
```
# terminal
createdb marvel
```

Next, run the provided SQL script to populate your database:
```
# terminal
psql -d marvel -f marvel.sql
```

Use the supplied data as the source of data to answer the questions.  Copy the SQL command you have used to get the answer, and paste it below the question, along with the result they gave.

## Questions

1. Return ALL the data in the 'movies' table.

select * from movies;

 id |                title                | year | show_time 
----+-------------------------------------+------+-----------
  1 | Iron Man                            | 2008 | 21:00
  2 | The Incredible Hulk                 | 2008 | 14:20
  3 | Iron Man 2                          | 2010 | 18:45
  4 | Thor                                | 2011 | 22:20
  5 | Captain America: The First Avenger  | 2011 | 16:45
  6 | Avengers Assemble                   | 2012 | 21:05
  7 | Iron Man 3                          | 2013 | 17:30
  8 | Thor: The Dark World                | 2013 | 14:30
  9 | Batman Begins                       | 2005 | 20:00
 10 | Captain America: The Winter Soldier | 2014 | 23:25
 11 | Guardians of the Galaxy             | 2014 | 17:40
 12 | Avengers: Age of Ultron             | 2015 | 23:40
 13 | Ant-Man                             | 2015 | 16:35
 14 | Captain America: Civil War          | 2016 | 23:40
 15 | Doctor Strange                      | 2016 | 23:30
(15 rows)



2. Return ONLY the name column from the 'people' table

select name from people;
        name        
--------------------
 Adam  Baxter
 Alice Loudon
 Chris Brown
 Colin Farquhar
 David  Hale
 Douglas Crooke
 Ewen Carr
 Ferdinando Sendyka
 Craig Morton
 Andrew
 Andrew
 Graeme Bell
 Josef Meszaros
 Km North
 Leon-Paul Hart
 Lewis Brown
 Richard Page Croft
 Rob Flett
 Robert Ball
 Robert Brice
 Ross Crichton
 Simon Smith
 Suzanne Aitchison
 Adam  Baxter
 Alice Loudon
 Chris Brown
 Colin Farquhar
 David  Hale
 Douglas Crooke
 Ewen Carr
 Ferdinando Sendyka
 Craig Morton
 Andrew
 Andrew
 Graeme Bell
 Josef Meszaros
 Km North
 Leon-Paul Hart
 Lewis Brown
 Richard Page Croft
 Rob Flett
 Robert Ball
 Robert Brice
 Ross Crichton
 Simon Smith
 Suzanne Aitchison
(46 rows)


3.Oops! Someone at CodeClan spelled Kim's name wrong! Change it to reflect the proper spelling (change 'Km North' to 'Kim North').


  UPDATE people SET name = 'Kim North' WHERE name = 'Km North'; 

  59 | Josef Meszaros
  61 | Leon-Paul Hart
  62 | Lewis Brown
  63 | Richard Page Croft
  64 | Rob Flett
  65 | Robert Ball
  66 | Robert Brice
  67 | Ross Crichton
  68 | Simon Smith
  69 | Suzanne Aitchison
  70 | Adam  Baxter
  71 | Alice Loudon
  72 | Chris Brown
  73 | Colin Farquhar
  74 | David  Hale
  75 | Douglas Crooke
  76 | Ewen Carr
  77 | Ferdinando Sendyka
  78 | Craig Morton
  79 | Andrew
  80 | Andrew
  81 | Graeme Bell
  82 | Josef Meszaros
  83 | Km North
  84 | Leon-Paul Hart
  85 | Lewis Brown
  86 | Richard Page Croft
   87 | Rob Flett
   88 | Robert Ball
   89 | Robert Brice
   90 | Ross Crichton
   91 | Simon Smith
   92 | Suzanne Aitchison
   93 | Adam  Baxter
   94 | Alice Loudon
   95 | Chris Brown
   96 | Colin Farquhar
   97 | David  Hale
   98 | Douglas Crooke
   99 | Ewen Carr
  100 | Ferdinando Sendyka
  101 | Craig Morton
  102 | Andrew
  103 | Andrew
  104 | Graeme Bell
  105 | Josef Meszaros
  106 | Km North
  107 | Leon-Paul Hart
  108 | Lewis Brown
  109 | Richard Page Croft
  110 | Rob Flett
  111 | Robert Ball
  112 | Robert Brice
  113 | Ross Crichton
  114 | Simon Smith
  115 | Suzanne Aitchison
   60 | Kim North



4. Return ONLY your name from the 'people' table.

select name from people;

       name        
--------------------
 Adam  Baxter
 Alice Loudon
 Chris Brown
 Colin Farquhar
 David  Hale
 Douglas Crooke
 Ewen Carr
 Ferdinando Sendyka
 Craig Morton
 Andrew
 Andrew
 Graeme Bell
 Josef Meszaros
 Km North
 Leon-Paul Hart
 Lewis Brown
 Richard Page Croft
 Rob Flett
 Robert Ball
 Robert Brice
 Ross Crichton
 Simon Smith
 Suzanne Aitchison
 Adam  Baxter
 Alice Loudon
 Chris Brown
 Colin Farquhar
 David  Hale
 Douglas Crooke
 Ewen Carr
 Ferdinando Sendyka
 Craig Morton
 Andrew
 Andrew
 Graeme Bell
 Josef Meszaros
 Km North
 Leon-Paul Hart
 Lewis Brown
 Richard Page Croft
 Rob Flett
 Robert Ball
 Robert Brice
 Ross Crichton
 Simon Smith
 Suzanne Aitchison
 Adam  Baxter
 Alice Loudon
 Chris Brown
 Colin Farquhar
 David  Hale
:


5. The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.

delete from movies where title = 'Batman Begins';
DELETE 9


6. Create a new entry in the 'people' table with the name of one of the instructors.

insert into people (name) values ('Darren');
INSERT 0 1

7. Craig Morton, has decided to hijack our movie evening, Remove him from the table of people.

DELETE FROM people WHERE name = 'Craig Morton';
DELETE 9

8. Somehow the list of people includes two people named 'Andrew'. Change these entries to the proper names ('Jeff 4', 'Jeff 5')

update people set name = 'Jeff 4' where id = 10;
UPDATE 1

update people set name = 'Jeff 4' where id = 11;
UPDATE 1


9. The cinema has just heard that they will be holding an exclusive midnight showing of 'Guardians of the Galaxy 2'!! Create a new entry in the 'movies' table to reflect this.

INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy 2', 2017, '20:00')
INSERT 0 1

128 | Thor: The Dark World                | 2013 | 14:30
130 | Captain America: The Winter Soldier | 2014 | 23:25
131 | Guardians of the Galaxy             | 2014 | 17:40
132 | Avengers: Age of Ultron             | 2015 | 23:40
133 | Ant-Man                             | 2015 | 16:35
134 | Captain America: Civil War          | 2016 | 23:40
135 | Doctor Strange                      | 2016 | 23:30
136 | Guardians of the Galaxy 2           | 2017 | 20:00

10. The cinema would also like to make the Guardian movies a back to back feature. Update the 'Guardians of the Galaxy' show time from 12:10 to 21:30

UPDATE movies SET show_time = '12:10 - 21:30' WHERE title = 'Guardians of the Galaxy' AND id = 11;
UPDATE 1

  120 | Doctor Strange                      | 2016  |  23:30
 121 | Iron Man                            | 2008 | 21:00
 122 | The Incredible Hulk                 | 2008 | 14:20
 123 | Iron Man 2                          | 2010 | 18:45
 124 | Thor                                | 2011 | 22:20
  11 | Guardians of the Galaxy             | 2014 | 12:10 - 21:30
 125 | Captain America: The First Avenger  | 2011 | 16:45
 126 | Avengers Assemble                   | 2012 | 21:05
 127 | Iron Man 3                          | 2013 | 17:30


## Extension

1. Research how to delete multiple entries from your table in a single command.

DELETE * FROM people;
Deletes all entries.

DELETE FROM movies WHERE id >= 1 and id <= 3;

DELETE FROM movies WHERE id in (1,2,3);
id  |                title                | year |   show_time   
-----+-------------------------------------+------+---------------
   4 | Thor                                | 2011 | 22:20
   5 | Captain America: The First Avenger  | 2011 | 16:45
   6 | Avengers Assemble                   | 2012 | 21:05
   7 | Iron Man 3                          | 2013 | 17:30
   8 | Thor: The Dark World                | 2013 | 14:30


   