# greetme2

Why?

- Test First -> Shift Left
- Express behaviours not implementations
- Tests expressed as behaviours provide clear document
- Tests expressed as behaviours enable us to refactor
- Iterative process -> focus on one behaviour at a time
- The tests tell us when we’re done
- Testable code leads to cleaner design
- Tests guard against regressions

What?

![image](https://user-images.githubusercontent.com/84612166/217969298-33a4bb18-3716-479b-97fc-0eccb1a8ed90.png)

Given user is on login page
When user enters correct username and password
Then user is directed to the Home page
 
Given user is on login page
When user enters invalid username or password
Then invalid credentials message is displayed on the login page
 
Given user is on login page
When user omits user name or password
Then missing required fields message is displayed on the login page

How?

Follow the code...

Check out the course that insipred the demo: https://www.udemy.com/share/105slw/
Credit to: 
