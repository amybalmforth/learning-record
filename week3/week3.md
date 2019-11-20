#### WEEK 3 - THE WEB

### Weekly goals

1. Build a simple web app
2. Follow an effective debugging process for web applications
3. Explain the basics of how the web works (e.g. request/response, HTTP, HTML, CSS)
4. Explain the MVC pattern

***********************************************************

*MONDAY*

* Write a blog post to sum up week 2 topics *DONE*
* Push week 1 and week 2 notes to Github *DONE*
* Push notebook app to github *DONE*

*TUESDAY*

* Write a few sums ups of concepts you are not sure of: dependency injection, polymorphism, ease of change. Discuss with cohort member or a coach and make sure understanding is clear

*WEDNESDAY*

* Ask a coach to explain ease of change?

*THURSDAY*

* Record screen doing coin changer kata and send to a coach

*FRIDAY*

* Write up short summary on TCP, IP, HTTP

***********************************************************

DEPENDENCY INJECTION

When class A uses some functionality of class B, then its said that class A has a dependency of class B. we first need to create the object of that class (i.e. class A needs to create an instance of class B). So, transferring the task of creating the object to someone else and directly using the dependency is called dependency injection.

POLYMORPHISM

Being able to send the same message to different objects and get different results. Method behaves differently depending on the object that receives its message. The ability to use functions or methods in different ways for different objects or data types.

***********************************************************

EXPLAIN: Doubles: have to allow double to receive some element of the relevant class (ie menu) and return (ie a dish - doesn't have to be the same dish as on the real menu)

TEST BEHAVIOUR NOT STATE - Not always necessary to to test instance variable. Can test another method instead (ie total order instead of empty basket [])

***********************************************************

*NOTES FROM MONDAY INTRO*

The internet is a global network of connected machines able to send messages to each other.

The World Wide Web adheres to a specific standard of communications - HTTP.

HTTP is a list of commands based on a request/response cycle (get, post etc)

A server is a computer or software that is open to receiving requests

A client is a computer or software that sends requests (i.e. web browser) (LOOK @ CURL)

Web API = my program needs functionality from a 3rd party program - can send an HTTP request to the other program to use it

***********************************************************

Protocol Layer      	   Standards
Your code...	         ...goes here (HTML, CSS, JS, Ruby)
Application            HTTP, DNS
Transmission	         TCP, UDP
Internet	             IP (v4, v6)
Link Layer	           Ethernet, WIFI

PROTOCOL

IP (Internet Protocol) defines connection between networked hosts. Splits request and response into multiple packets. Used by TCP and UDP (Streaming and Skype)

TCP (Transmission Control Protocol) Layer over the top of IP dealing with transmission control. Re-requests any packets lost in transit.

DNS (Domain Name System) allows us to give servers host names (i.e. Google.com rather than the IP address)

HTTP defines the format for how documents can be served over the internet
^ MORE IMPORTANT TO UNDERSTAND HTTP: What is the role of the browser / server
inspect > network + headers + body

***********************************************************

Sinatra = web application framework for Ruby. A gem. Allows you to integrate apps written in Ruby with a web interface, so anyone with a browser can use them. Gives us a way to create an HTTP server. (Rails = a bigger/more complicated version of this)

Shotgun = Allow us to keep the same server running and see any code updates.

Gem = a library that has been prepared in a way so it can be distributed (published and downloaded) via the internet

***********************************************************

MODEL = Logic from the program. Classes. Data. State.
VIEW = Web page (what the user sees)
CONTROLLER = Link the 2 ^ together. Routes, get/post.
