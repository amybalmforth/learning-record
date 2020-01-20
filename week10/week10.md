## WEEK 10 - TECH TESTS

### GOALS

* Can you solve a challenging technical problem by writing well crafted code?

By "well crafted code", we mean code that is well tested, easy to read and easy to change.

Secondary goals

By the end of the week, you should:

* Feel more confident in your ability to complete a tech test.
* Have developed a structured process to approaching complex problems, utilising TDD and good OO design skills.

***********************************************************

### INTRO

How to write clean well organised code:

- Easy to read and understand - explicit
- DRY
- Encapsulating - Expose only what you need and ensure classes know as little about each other as possible
- TDD - test behaviour not state (assert what method does, not value)
- SRP - Each method does only one thing
- Cohesion
- Good naming
- Regular commits - clear and concise - functionality that has been implemented
- Dependency injection - isolation in tests. feature envy? Refactoring guru (website)
- Easy to change. (Not hard coding)
- PLAN!!!

***********************************************************

### WORKSHOP ON BANK TECH TEST

- READme: how to run program, how to run tests, description of what program does (minimum). Headings (markdown) how you approached the problem? abstractions? refactors and why?
- screenshot OR copy/paste from IRB
- Customise rubocop to ignore less important things like line length
**ask M/S for JS linter + coverage**
- bank - minimum two classes... Is the class useful/does it have a purpose? If so make one. one = violation SRP
- Name classes for real world domain examples (bank/account/statement)
- String pollution - strings should not be in the Bank, should be in Statement (formatting)
- edge case: user cannot take out more money than their account: assumed. deliberately vague. raise this? In real world, ask question or raise this in readme. Focus on requirements first then raise q in extra time
- in readme: If I had more time, here's what I would have done (aware of these things)
- in real world: tests not too tightly coupled to your display. if string contains...(rspec)
- Behaviour: Testing instance variable (ie balance) - get DEPOSIT method to return something to assert on instead (ie balance) OR account = account.new(balance=50), expect account.deposit(50).to eq 100
- Force the state with useful tests that are still testing our behaviour
- def init(balance) - dynamic - balance can be passed in upon creation of the account
- Test/assert on the last thing returned from the method.
- transactions = account.return_transactions, expect(transactions[0]).to eq...

BAD:

- Not writing tests
- Not writing a readme
- Making too large commits
- Jumping into the problem rather than breaking down
- Not having researched company, website, person interviewing
- Struggling with mocking, dependency injection, fluency
- Struggled to communicate full answers
- Too self deprecating!
- Github profile: no examples of work done alone (pin independent tech test)
- No recent commits on github
- Poor readmes / no screenshots/heroku links
