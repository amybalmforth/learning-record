## WEEK 7 - MORE JAVASCRIPT

### Weekly goals

By the end of the week all developers can:

1. Build a front-end app in Javascript
2. Work competently in Javascript
3. Reason about asynchronous behaviour in Javascript

Topics:

Events and event handlers.
Manipulating the Document Object Model (DOM).
Ajax.
Frontend templating.
Frontend routing.

***********************************************************

### Personal goals for this week:

* Blog post for week 6 and push notes to Github *DONE*

* Closures practical

* Learn about the new operator in Javascript https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Operators/new

* Learn about closures in Javascript https://developer.mozilla.org/en/docs/Web/JavaScript/Closures

* Investigate how to deploy an app to Heroku
* Implement a daily reflection process (what did you learn today? what was hard?)
* Prepare for review by 1) checking link to zoom session 2) finding a space 3) doing some katas with TDD

***********************************************************

### INTRO

- Understand THIS keyword
- Use callbacks correctly (how do they work? Write functions using callbacks)
- No Jasmine/JQuery
- What is a test framework really doing? Compare two things, check if true or false
- Write own tests without a testing library (jasmine/rspec github repo)
- Look @ practical for writing your own rspec (how does a test library actually work)
- Understand why difficult to write your own feature tests (focus on unit tests)

- DOM - programming interface for HTML and XML. Virtual object. Traversable. Represents the document as nodes and objects
- AJAX - Tool we used to make requests to a URL and get a response. Ajax help us manage that cycle in JS
- Front end routing, hash routing (i.e. share a tweet)

***********************************************************

### NOTES - CLOSURES

A closure gives you access to an outer function’s scope from an inner function.

In JavaScript, closures are created every time a function is created, at function creation time.

function init() {
  var name = 'Mozilla'; // name is a local variable created by init
  function displayName() { // displayName() is the inner function, a closure
    alert(name); // use variable declared in the parent function
  }
  displayName();
}
init();

### FACTORY FUNCTION EXAMPLE - a way of creating objects in JS

function SecretDiary() {
  var locked = true,
      contents = "Hey!";

  function unlock() {
    locked = false;
  }

  function lock() {
    locked = true;
  }

  function read() {
    if (locked) { return "Nope!"; }
    return contents;
  }

  function write(message) {
    if (locked) { return "Nope!"; }
    contents = message;
  }

  return {
    unlock: unlock,
    lock: lock,
    read: read,
    write: write
  };
}

var secretDiary = SecretDiary();
console.log(secretDiary.read());
secretDiary.unlock();
console.log(secretDiary.read());

### MODULE PATTERN - EXAMPLE

var Themodule = function () {

    // private variables
    // private functions

    return {
        // public functions
    };
};

***********************************************************

### MODULE PATTERN WORKSHOP

- Modules are small bits of code you can use anywhere in your code
- Modules are functions
- Make bits of reusable code
- Acts a bit like modules act in different languages

JS - Can create functions in different ways:

hello = function() { return 'hello' }

const hello = () => { return 'hello' }

function hello () { return 'hello' }

() => 'hello' ANONYMOUS - implicit return. don't need return keyword. (arrow and no {}) Can only be 1 statement

() => { 'hello'} ANONYMOUS

- Method is defined on an object - function does not need an object to exist

(() => 'hello')() CALL STRAIGHT AWAY

function h3() { 'hello' } RETURNS UNDEFINED
var h2 = () => { 'hello '} ^ SAME AS (different syntax)

If you don't put return keyword, will return undefined.

#### MODULE PATTERN example

(function(exports) {
  CAT_NUMBER = 2
  var meow = () => {
    return 'meow'.repeat(CAT_NUMBER)
  }
  exports.meow = meow
  })(this)


^ IIFE . don't have to give a name

CLOSURE = when you define a function in another function, functions know about each other

Module pattern - can choose what you want to export/expose and everything else is kept private

In JS only have local and global variables.
Instead can define a function inside a function, and store variables inside them. to make use of the fact that vars are only available inside those functions

Use this when you want to hide things

Use var to make sure variables are local. no var/let/const = global by default

Hashes = objects in JS

console.dir() = More details

***********************************************************

### CV WORKSHOP

- First paragraph most important - everything the employer needs to know. Succinct
- Avoid selling Makers
- What do you love about tech (why development?)
- Mention degree/work experience
- Something not everybody is going to say
- Put 3-5 projects (2nd paragraph) Don't have to be finished projects
- Have 3 projects you are really confident about talking about/explaining/teamwork from final project
- 3 skills - creative - interesting - story to back up
- Non technical stuff from Makers
- Relevant experience to technology (leadership, project management)
- no need for GCSE start at A-level
- Github can be 2-3 pages, can be long but not waffly, don't repeat things
- Hobbies - meetups - tech related - interesting...not generic

***********************************************************

### NOTES FOR REVIEW

- Focus on listening carefully and understanding the requirements

- Ask clarifying questions

- Ask what input you will be given

- Ask what output you are expecting

- Ask for examples - could use as a test

- Git init, rspec init

- Create a README and put your planned tests on it before you get started TDD’ing

- Refactor after each passing test (where worthwhile to do so) rather than at the end (important)

- Ask for edge cases towards the end

- When get the written feedback focus on improving whats said there and then do another review ASAP to gauge improvement
