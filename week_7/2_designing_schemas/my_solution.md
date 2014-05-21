# U3.W7: Designing Schemas


#### I worked on this challenge [by myself, with: ]


## Release 0: Student Roster Schema
<!-- display your image inline here -->
/Users/sidpatel/Desktop/phase_0_unit_3/week_7/2_designing_schemas/database_schemas/imgs/Student_Roster.png

## Release 1: One to Many Schema
<!-- display your image inline here -->
/Users/sidpatel/Desktop/phase_0_unit_3/week_7/2_designing_schemas/database_schemas/imgs/One to Many.png

## Release 2: One to One Schema
<!-- display your image inline here -->
/Users/sidpatel/Desktop/phase_0_unit_3/week_7/2_designing_schemas/database_schemas/imgs/One to One.png


## Release 3: Many to Many Schema
<!-- display your image inline here -->
/Users/sidpatel/Desktop/phase_0_unit_3/week_7/2_designing_schemas/database_schemas/imgs/Many to Many.png

## Release 4: Design your own Schema
Description of what you're modeling: 
For one to one, I’m modeling the relationship between people and their social security numbers to their benefits. Everyone has one social security number that they are connected to.

For many to many, I am modeling the relationship between people, books, and their library card. The library card is connected to both the books you get and who you are so it can identify your information.



<!-- display your one-to-one image inline here -->
/Users/sidpatel/Desktop/phase_0_unit_3/week_7/2_designing_schemas/database_schemas/imgs/my_One to One.png
<!-- display your many-to-many image inline here -->
/Users/sidpatel/Desktop/phase_0_unit_3/week_7/2_designing_schemas/database_schemas/imgs/my_Many to Many.png


## Release 5: Reflection
What parts of your strategy worked? What problems did you face?
I think this challenge was relatively simple. I think I had a bit of a challenge understanding the one to one relationship and applying it on my own. I thought about two entities that can be only related to each other in one way. So for example, if we think of a social security number, each person only has one of it.


What questions did you have while coding? What resources did you find to help you answer them?
I think the main question I had was understanding the relationships between one to one, one to many, and many to many. I think once I saw some examples of my own, I got a better idea for how to construct these relationships in a database schema.

What concepts are you having trouble with, or did you just figure something out? If so, what?
So for my many to many relationships I created I used a library card scenario where each person has one library card. The id of the library card can be attached to each person’s user id. On the other hand, the library card can also be used to keep track of books, so each card also holds a book id. Or a library card id is tied to each book id. I wasn’t sure if the way I modeled this relationship, where I connected the book id to both the library card id and book id tags in the library category is correct. Maybe you only need to connect the library card id to the book id. But I thought if your library card can hold book ids, then those book ids also have to be connected to your id in the book category.

So pretty much I did this a little wrong. I should have removed the connection between library card id and id in books.


Did you learn any new skills or tricks?
Yes, I learned to use sql designer to create database schemas.

How confident are you with each of the Learning Competencies?
very confident!

Which parts of the challenge did you enjoy?
I enjoyed designing my own schemas as it gave me a chance to experiment and test my knowledge.

Which parts of the challenge did you find tedious?
None, very straight forward challenge.