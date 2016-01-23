Feature: Subtraction 
 
 
 @example 
 Scenario: Subtract two numbers together 
     Given I enter "5" into the calculator 
     And I hit "subtract" 
     And I enter "2" into the calculator 
     And I hit "equals" 
     Then I see a result of "3" 
 
 
 @example 
 Scenario: Subtract three numbers together 
     Given I enter "9" into the calculator 
     And I hit "subtract" 
     And I enter "3" into the calculator 
     And I hit "subtract" 
     And I enter "2" into the calculator 
     And I hit "equals" 
     Then I see a result of "4" 
