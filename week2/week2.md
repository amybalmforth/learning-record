#### WEEK 2

### Weekly goals

Bonus goal for the week: Be more strict with time management work vs rest.

1. Use all of week 1's skills (don't underestimate the importance of this)
2. Break one class into two classes that work together, while maintaining test coverage
3. Unit test classes in isolation using mocking
4. Explain some basic OO principles and tie them to high level concerns (e.g. ease of change)
5. Review another person's code and give them meaningful feedback

***********************************************************

### Daily goals

*MONDAY*

### Monday's goal 1

Review another person's code and give them meaningful feedback. Take on board their suggestions for changes to my own code and make updates in the project as necessary and push the changes to Github. *DID DO* Did not manage to succeed solving the problems I was having but will go back in a few weeks to understand better what was happening

### Monday's goal 2

Write a blog post to sum up week 1 topics *DONE*

### Monday's goal 3

Did a process workshop and received some meaningful feedback on my process. Recorded a video. I was making the tests too complicated too quickly. My pair followed a black box process to write the tests simply. I will try to take this on board for next time I am solving a problem.

***********************************************************
*TUESDAY*

* Complete a practical exercise on encapsulation and push to Github (IE secretdiary or notebook) *DONE*

*WEDNESDAY*

* Be able to explain mocking, stubbing and doubles (the difference between) and use them in a program - maybe airport? *Have practised using mocking and doubles*

* Did process workshop and advised someone else on their process

*THURSDAY*

* Finish the scrabble exercise from process workshop yesterday *DONE*

* Read through walkthroughs from oyster to understand better what has been done in terms of tests

* Practical week 2 mocking 2 *DONE*

*FRIDAY*

* Complete practical exercise concerning splitting a class into 2 (notebook) and push to github

* Record screen completing scrabble challenge and send to coach for review *DONE*

***********************************************************

### HOW DO WE CODE REVIEW?

Aims of code review: Understanding, feedback, constructive criticism, empathy, making a judgement

Where to look first?

README (NEED: user stories, instructions on what program does, dependencies/gemfile, installation guide, how to run the tests. Get someone non technical to read it?)

SPEC FOLDER: Context/description, tests easy to read and understand, coverage(gem), useful tests (See if tests are useful - testing the right things), testing behaviour (output) not state. Having classes not too reliant on each other (attr_reader)

IRB - run a feature test

Quick wins: Naming. Duplication (DRY). Isolation of dependencies in tests. SRP.

ONLY COMMIT CODE WHEN TESTS ARE GREEN!

***********************************************************

### DOMAIN MODEL DIAGRAMMING WORKSHOP

A diagram is a visual representation of the code.

- Verbs - doing words - methods (blocks)
- Nouns - things - objects/classes (arrows)

Benefits: planning, understand relationships between objects, understand which functions live in which object, help assessment, stop from going in wrong direction

- Is diagram for me or for user? Is it clear enough if for user.

Class diagram:

OBJECT NAME         Coin          Score
INSTANCE VARIABLES                @headcount
METHODS             Flip(random)                 Print_score

HEADCOUNT --> Flip --> COIN (Unified Modelling Language Diagram UML)

Sequence Diagram

Headcount --> Coin --> Randomizer
      Flip -->   Random num
      String <-- <-- Int

Class Diagram

RollResults
@results{}
rolld_dice()
store_results(result)

***********************************************************

Learnings from pairing:

From Tuesday - When writing a test you can write the hash you want as an example, i.e.
hash = {}
and say : expect (something) to eq hash

***********************************************************

### General goals for me to remember / improve on this week:

- Take clear notes in the skills workshops, with the aim of writing these up later, as a way to make sure I understand the concepts and keep a record *Decided to type up during the workshop instead to save time*

- Every time you learn something new i.e. in the pairing session, make a note of it and write up as a way of keeping a record

***********************************************************

### STILL TO DO

* Get better at writing tests (TDD more small problems as practice)
