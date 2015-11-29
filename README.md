# SpringBootMVC
Project skeleton for Software Project class in the University of Iceland.

## How do I get this ?
Your IDE ([IntelliJ](https://www.jetbrains.com/idea/), [Eclipse](https://eclipse.org/), [Spring Tool Suit](https://spring.io/tools)) should be able to clone a project from Github.
It should be easy to find information regarding how to do that for your chosen IDE.
It's also possible to download the project as a .zip [here](https://github.com/beemmess/SpringBootMVC-master).

## How do I run this ?
This project is setup using [Maven](https://maven.apache.org/what-is-maven.html) as a dependency manager, so if your IDE does not manage that, or you don't have it installed you can look [here](https://maven.apache.org/install.html) for further information.
When all the dependencies are downloaded, you can run the project by running the ``main()`` method in the class ``Application`` and then enter [localhost:8080](http://localhost:8080) into the address bar of your favorite web browser.

## Database connection
We used postgres JPA (like the instructions from Daniel) so all you need is simular setup in those instructions to connect to the postgres database.

### What did you use to make this ?
We used IntelliJ Ultimate with Maven to setup this project.

## additional information
In streetmap for restaurants, you need to double click on the restaurant in the list on the right side of the page, when you have double clicked on the restaurant, then the name should appear in the Restaurant window under the map, then you can write a review (if you have logged in)

Useful phone numbers and phrases are connected to the database so when you open these pages there will be nothing to show because there is nothing in your database. Same for the "My Page" which is the user page, if an user has written a review it stores in the database, in "My Page" link (which will be displayed on the home page when an user is  logged in) all the reviews are displayd there if an user has written any reviews.

to run the application you have run it in JDK 1.8 and have language level 8(lambdas, type annotations etc.) selected in Module settings.




