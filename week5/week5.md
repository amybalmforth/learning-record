## WEEK 5 - JAVASCRIPT

### Weekly goals

1. Test drive a simple front-end web app with Javascript
2. Follow an effective process for learning a new language (can you learn a new language and its patterns?)

### BROKEN DOWN:

- Can you read and write JavaScript syntax?
- Can you understand the rules that govern the behaviour of the THIS keyword?
- Can you follow the flow of an Ajax request and response?
- Can you follow the flow of control through code that uses callbacks?
- Can you encapsulate behaviour in JavaScript?
- Can you get visibility effectively in JavaScript?
- Can you TDD in JavaScript?
- Can you follow the flow of control over the whole web app cycle? e.g. the interface of a thermostat is displayed in HTML/CSS, the "increase temperature" button is clicked, a JavaScript click event fires, JavaScript code runs to handle the event, an Ajax request is made, a Sinatra controller POST action handler is run, a Thermostat Ruby model is updated, the new temperature is saved to a Postgres database, the new temperature is returned as JSON by the Ruby controller, JavaScript code runs to update the temperature in the web page.

***********************************************************

### DAILY GOALS

* Blog post on last week topics *DONE*
* Upload current notes to Github *DONE*
* Refactor Javascript Fizzbuzz and push to Github *DONE*
* HackMD JS objects and prototypes exercise *DONE*
* Sheep exercise *DONE but to refactor/finish*
* Push some form of Airport onto github today (Wednesday) *DONE*
* Process workshop, film screen and send video to coach *DONE*
* Learn a little CSS and put it in Thermostat *DONE*

Not too much reading - best way to learn is by doing.

***********************************************************

### CODE REVIEW OF WEEKEND CHALLENGE (CHITTER)

- Can specify in Capybara - instead of expect(page) to have content, expect specific element (e.g. <H1>) to have content.

- Rake is a taskrunner - you can define tasks and get it to run those tasks. (Make is a tool that can build and install programs for you) Example Rake task: setup DB (1 create DB, 2 create peeps table, 3 create user table)

- Travis can use Rakefile. (Don't have to use Rake in this challenge)

- Travis CI: Clones makers repo and then your repo to a virtual machine, runs through gemfile, run through all steps specified in Travis config file (including SQL commands - psql -c). Make sure Travis can create the correct Postgres database and tables for the tests. Read the Travis error messages.

- If used Datamapper - Datamapper has some pre built commands that makes your database migration and setup much easier. Make sure that these steps are happening.

- Rack is the interface between HTTP and Ruby. Wraps HTTP request and response and provides an API that Ruby can interact with.

- Clean database before and after each test (before each/after each - before all/after all)

- Why require? 1. Add to scope 2. Run whole file.

***********************************************************

### JAVASCRIPT

- Runs in the web browser. (no server needed) only language that runs in the browser! 70% of websites use it
- MVC - all in browser
- Javascript generates HTML strings for you
- Devtools - console - JS playground. alert('hello'). console.log('hey') "this"
- Tests (Jasmine) also run in browser along with code
- JS was built to solve a problem. If you clicked a button, webpage would freeze, until action was completed. JS was built in 1995 in 7 days (not in current form) Result is a lightweight language different to Ruby but you can do a lot of the same things.
- What is supported in the browser? JS dependant on providers of browsers. Browsers update to accommodate new versions of JS. Old browsers may not support latest JS. Mostly supported = ES5(function keyword). (ES6 newer)
- JS = non-blocking/asynchronous. Leverages callbacks. Reads diff lines of code @ same time. Continues to run rest of code while waiting for an action to finish.
- Ajax request - request to go and get data from somewhere else

***********************************************************

### NOTES FROM AFTERNOONS

- The function() keyword in JavaScript creates an object that can be called/invoked. There are different ways to invoke a function
- No classes in JS - but can use functions as a way to instantiate objects that share behaviour
- "THIS" used inside a function, refers to the current object.

greeting = {}
> {}

greeting.hello = function(person) {
    return 'Hello' + person;
}

> function (person) {
    return 'Hello' + person;
}

greeting.hello('Maker')
"HelloMaker"

***********************************************************

> function hiTimmy() { return 'Hi Timmy' };
> hiTimmy()
< "Hi Timmy"

***********************************************************

> function hi(name) { return 'Hi, ' + name };
< undefined
> hi('Jenny')
< "Hi, Jenny"

***********************************************************

### CALLBACK

- Any function that is passed as an argument is called a callback function.

A function passed into another function as an argument, which is then invoked inside the outer function to complete some kind of routine or action. To make sure that function is evoked after the previous one.

Example:

function greeting(name) {
  alert('Hello ' + name);
}

function processUserInput(callback) {
  var name = prompt('Please enter your name.');
  callback(name);
}

processUserInput(greeting);

### JAVASCRIPT TYPES

Number
String
Boolean
Symbol (new in ES2015)
Object
Function
Array
Date
RegExp
null
undefined

***********************************************************

### ENCAPSULATION AND CONSTRUCTOR FUNCTIONS

- Don't use console.log on the last line of a function (it will always return undefined) Put it on second last line

console.log(foo) - tell is what foo method is (give the code itself)
console.log(foo()) - log result of calling foo method

Encapsulation = Grouping behaviour and state together. Also hides data.

- Underscore means method is private - but is just convention / not strict

- JS is dynamically typed. == will try to convert type A into type B. === will not convert. Ie num to string

- Constructor function: Define object w/capital letter. Define/extend prototype functions. Then call those functions on instances of object. "this" in object = similar to initialize method

***********************************************************

### Feedback from process workshop video

- No need to create i.e. instance of class in a before/do loop for tests before writing first test. That makes 3 lines of code. Reduce lines of code written. opportunity for refactoring later. see duplication then make refactoring. i.e. middle = new middle in each test
