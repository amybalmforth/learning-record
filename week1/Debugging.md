#### DEBUGGING

A bug is unexpected behaviour in a program.

* What is a good debugging process?

TIGHTEN THE LOOP (narrow it down/isolate the problem) + GET VISIBILITY

- Don't just assume what the problem is
- Get the error line number or location in the file where the issue is
- Read the error message
- Understand the error
- Make a hypothesis based on the error
- Check the syntax first for spelling mistakes!
- Look at the stack trace (list of error messages) to see what happened before the final error
- Look at the last line of the stack trace first
- Run the tests in isolation - copy and paste the test path
- In spec file, write p statements + a string to describe (i.e. "In class" "In method") on different lines to see where the program runs to

Make tiny changes - run the test, if it's not green, roll back and make a different change
