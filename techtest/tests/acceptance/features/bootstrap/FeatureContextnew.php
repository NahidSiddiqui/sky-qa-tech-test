
<?php

use Behat\Behat\Context\BehatContext,
     Behat\Behat\Exception\PendingException;
 use Behat\Gherkin\Node\PyStringNode,
     Behat\Gherkin\Node\TableNode;

 set_include_path(get_include_path() . PATH_SEPARATOR . "../../lib");

 require_once("iCalculator.php");
 require_once("iScientificCalculator.php");
 require_once("Calculator.php");

 class FeatureContext extends BehatContext {
     protected $calculator;
     protected $result;
     protected $numbers;

     public function __construct() {
        $this->calculator = new Calculator();
        $this->result  = 0;
        $this->numbers = array();
     }

     /**
          * @Given /^I enter "(\d+)" into the calculator$/
          */
     public function iEnterIntoTheCalculator($argument1) {
        $this->calculator->pressNumber($argument1);
        $this->numbers[] = intval($argument1);
     }

     /**
          * @When /^I hit "multiply"$/
          */
     public function iHitMultiply($argument1) {
        $this->calculator->pressMultiply($argument1);
        $this->result  = array_shift($this->numbers);
        $this->result *= array_sum($this->numbers);
        $this->numbers = array();
     }
    /**
          * @When /^I hit "add"$/
          */
     public function iHitAdd($argument1) {
        $this->calculator->pressAdd($argument1);
        $this->result  = array_sum($this->numbers);
        $this->numbers = array();
        
     }
    /**
          * @When /^I hit "Subtract"$/
          */
     public function iHitSubtract($argument1) {
        $this->calculator->pressSubtract($argument1);
        $this->result  = array_shift($this->numbers);
        $this->result -= array_sum($this->numbers);
        $this->numbers = array();
             }

     /**
          * @When /^I hit "divide"$/
          */
     public function iHitDivide($argument1) {
        $this->calculator->pressDivide($argument1);
        $this->result  = array_shift($this->numbers);
        $this->result /= array_sum($this->numbers);
        $this->numbers = array();
     }
 /**
          * @When /^I hit "cuberoot"$/
          */
     public function iHitCuberoot($argument1) {
        $this->calculator->pressCuberoot($argument1);
         }
 /**
          * @When /^I hit "Hexadecimal"$/
         */
     public function iHitHexadecimal($argument1) {
        $this->calculator->pressHexadecimal($argument1);
    }
     /**
          * @Given /^I hit "equals"$/
        */
     public function iHitEquals($argument1) {
        $this->calculator->pressEquals($argument1);
     }

     /**
          * @Then /^I see a result of "(\d+)"$/
          */
    public function iSeeAResultOf($argument1) {
            $result = $this->calculator->readScreen();
         if($result != $argument1) {
                        throw new Exception("Wrong result, actual is [$result]");
         }
     }
 }
