Feature: Subtraction 
2 
 
3 @example 
4 Scenario: Subtract two numbers together 
5     Given I enter "5" into the calculator 
6     And I hit "subtract" 
7     And I enter "2" into the calculator 
8     And I hit "equals" 
9     Then I see a result of "3" 
10 
 
11 @example 
12 Scenario: Subtract three numbers together 
13     Given I enter "9" into the calculator 
14     And I hit "subtract" 
15     And I enter "3" into the calculator 
16     And I hit "subtract" 
17     And I enter "2" into the calculator 
18     And I hit "equals" 
19     Then I see a result of "4" 
