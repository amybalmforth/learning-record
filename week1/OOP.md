#### OOP

* ENCAPSULATION PRACTICAL

Encapsulation is the wrapping up of data under a single unit. Mechanism that binds together code and the data it manipulates. Encapsulation is a protective shield that prevents the data from being accessed by the code outside this shield.

Technically in encapsulation, the variables or data of a class are hidden from any other class and can be accessed only through any member function of own class in which they are declared.

Encapsulation can be achieved by declaring all the variables in the class as private and writing public methods in the class to set and get the values of variables.

OOP principles:

1) Cohesion

Relationship between methods inside a class - are they all working towards same goal?

How to fix: Extract methods that don't belong to class and create a new class.

2) Coupling

How dependant a class is to other classes. The ability of a class to work in isolation.

How to fix: Move methods to the class where they are most relevant.

^ Both help you see how solid your class design is. Should aim for HIGH cohesion and LOW coupling.


NOTES

Attr_reader allows instance variables (attributes) to be accessed by all classes
