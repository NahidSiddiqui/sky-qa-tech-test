Feature: Division 
2 
 
3 @example 
4 Scenario: Devide two numbers together 
5     Given I enter "12" into the calculator 
6     And I hit "devide" 
7     And I enter "2" into the calculator 
8     And I hit "equals" 
9     Then I see a result of "6" 
10 
