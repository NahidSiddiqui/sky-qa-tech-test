Feature: Hexadecimal 

 
 @example 
 Scenario: Hexadecimal of a Decimal number 
     Given I enter "10" into the calculator 
     And I hit "hexadecimal"  
     And I hit "equals" 
     Then I see a result of "A" 
