## WEEK 8 AND 9 - GROUP PROJECT ACEBOOK

### GOALS

* See Week 8

***********************************************************

### WORKSHOP: API CALLS

AJAX: Asynchronous Javascript & XML

JSON: standard for encoding data in a string format
JS object: Hash in JS - key value pairs
Can send AJAX as JSON
Converts JS object to JSON, turns it to a string of JSON (specific format for converting JS object to string)
Can on the other end run thru JSON parser and change it back to JS object

AJAX: JS sends HTTP request and waits for a response from the server, when it comes back update the page - without having to load a new page

Can also use AJAX to grab data from an external source after webpage has loaded

- Onload function:

document.addEventListener("DOMContentLoaded, function(){

}

***********************************************************

### TECH INTERVIEW WORKSHOP

what might you encounter in interview process for first job?

* take home tech test

- complete to deadline
- tdd
- use readme to explain process
- be prepared to discuss / update at interview

* pair programming

- ask clarifying q's
- explain process out loud
- diagram solutions
- be a good partner

* past projs

- final project
- can you sketch architecture
- can you explain what each bit of code does
- team dynamics

* chit chat

- high level design
- trivia q's
- process

***********************************************************

### PROMISES WORKSHOP

Language = syntax + implementation/set of rules that language enforces + runtime engine that interprets the code

ruby + js = interpreted programming languages

most common ruby interpreter = MRI (matz's ruby interpreter)

js codified by ecmascript standards (es5, es6)

JS engine = v8 (used by Node), Nitro (developed by apple for safari) JS engine adds another layer to JS. JS at its core is a synchronous, threaded (capable of doing 1 thing at once - 1 call stack), blocking programming language

call stack = all operations and functions we will do. last in first out. LIFO. Where function calls go (f gets called then goes in the stack)

memory heap = looser. where memory allocation happens.

the queue: FIFO (first in first out) / waiting area (web APIs) part of the browser

behaves asynchronously: XMLhttprequest, settimeout:

settimeout = set a timer in js (by milliseconds). Set the minimum time before function executes. A web API. When call settimeout, it goes into call stack. specifically written to work in the browser in a specific way. In the waiting area, it sends its callback (the function passed to it). When timer runs outs, the callback goes to the queue. (Event loop that runs constantly - looking at stack to see if it is empty. If stack is empty, moves whatever is in queue to the call stack)

Event loop happens all the time.

Previously, (ES5) just used callbacks within callbacks to control what order things were run in.
ES6 = Promises.

Promises allow us to do the same thing: call a function, it returns a promise object, to which we attached a callback.

let p = new Promise(function(resolve, reject) {
  setTimeout(function() {
    resolve('hello')
    }, 5000)
  })
p.then(function(returnedValue){
  alert(returnedValue)
  })

Promise returns another promise - can chain them

Event loop = Stack, waiting area, queue
