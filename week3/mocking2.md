## MOCKING 2 WORKSHOP

UNIT TEST

- Small unit of code
- Isolated
- Test 1 thing
- Test behaviour rather than implementation - test that it does the thing rather than how it does the thing
- Black box test (input vs output - don't care what happens in the middle)

INTEGRATION TEST

- Integrating different objects in program
- Separate test, different file

DOUBLE

- Fake object the test is in control of - stand-in for real object so we can test behaviour of other object

ALLOW

- Set a state (stub)
- When we explicitly define the behaviour of a method - override to tell it to do specific thing in that context

EXPECT

- Making assertion - what we are testing
- Expect double to receive .land
