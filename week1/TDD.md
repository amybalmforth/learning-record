#### TDD

* Setting up a new project with Rspec (test framework - set of rules/conventions we have to follow. Domain specific Language)

When starting a new project, you need to follow these steps:

  - Create a new directory for the project
  - CD into it
  - Run "rspec --init" (This creates "spec" directory and spec_helper.rb)
  - Create (touch) ./spec/program_spec.rb (Create the spec file)
  - Open program_spec.rb in Atom
  - Run Rspec for the first time (from the root directory)
  - Create a "lib" directory
  - Create your program.rb in the "lib" directory
  - Run Rspec again...

* RSPEC TERMS

- DESCRIBE
Organise/group the tests into "describe" blocks: 1 for 1 class, 1 for 1 method.

- CONTEXT
display the test name in terminal. describe context of test. group sets of tests. compartmentalise

- IT
Unit test: test 1 thing you want the object in question to do
Can put "x" in front ("xit") if you want that particular test not to run
What you are testing/what the test is doing

- LET

Placeholder variable

"Use let to define a memoized helper method. The value will be cached across multiple calls in the same example but not across examples. Note that let is lazy-evaluated: it is not evaluated until the first time the method it defines is invoked."

- EQUAL

Matcher = expect something to equal something else

- RESPOND_TO

Returns true or false - checks existence of something. (challenge to stop using) (can delete this test - skip respond_to test altogether)

* Feature tests and unit tests

"A Domain Model is an abstract representation of the Objects within a system, and the Messages they use to communicate with one another. Once you have a Domain Model for a feature, you need to think about how your Objects and Messages will work together in code. This is called a Feature Test.""

FEATURE TESTS are about how all the parts of a program work together. You can run the program as if a user would run it and checking it runs correctly. (i.e. in IRB)

UNIT TESTS are testing each area of the program in a separate spec file (i.e. 1 spec file and program per class) and checking each one passes its tests.

* TDD WORKSHOP

TDD is breaking a problem down into steps.
With strict TDD you do not think about implementation at all.
We don't care about the solution - we only care about the simplest possible test.

WHY TDD?

- Makes code reliable
- Uses tests to drive the code
- Small steps more manageable

Algorithm = an outline of steps to follow

First steps of solving a problem - don't complicate it
- Don't ask questions like "do we have to validate user input?" (Assume the user input is correct)
- Don't think about using specific objects i.e. hashes
- We don't care how we will solve the problem.
- Simply break it down into steps and just start writing the first test  - subsequent tests will be driven/written for you

Take an intruction from the user story.
I.e. "Takes a number and converts to a roman numeral"
=> Take a number and convert to a string

- Do the simplest possible first test
=> Take 1 and return "I"
=> What happens if we input 0?
=> 0 = "" (empty string)

- No nil or error yet as we will spot these during testing.

Black box testing:

0 -> ""
1 -> "I"

Don't yet think about how it will convert.

- Ask yourself if the object have the right behaviour?
- Does the object name have the right sense?

- Once you have 3 instances or more of duplication (testing same thing), refactor. (Red, green, refactor)

- What is the next simplest test that will break the code?

#### WORKSHOP TDD FRIDAY

TDD gets us into a discipline

Write test for method with 4 parameters? Method too complex.

SRP = single responsibility principle = method should only do 1 thing - split responsibility between classes

No logic in tests i.e. if. only in code

Arrange Act Assert

Testing state vs tesing behaviour.

Pure function - something goes in, something comes out
Impure function - something goes in nothing comes out - testing state

Class Human

def init
age = 0
end

def add
age += 1
end

Useful link on Rspec syntax: https://www.rubypigeon.com/posts/rspec-expectations-cheat-sheet/
