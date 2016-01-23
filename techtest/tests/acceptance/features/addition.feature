Feature: Addition 
2 
 
3 @example 
4 Scenario: Add two numbers together 
5     Given I enter "2" into the calculator 
6     And I hit "add" 
7     And I enter "5" into the calculator 
8     And I hit "equals" 
9     Then I see a result of "7" 
10 
 
11 @example 
12 Scenario: Add three numbers together 
13     Given I enter "5" into the calculator 
14     And I hit "add" 
15     And I enter "7" into the calculator 
16     And I hit "add" 
17     And I enter "2" into the calculator 
18     And I hit "equals" 
19     Then I see a result of "14" 

 
