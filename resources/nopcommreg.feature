Feature: Nopcommerce Registration
  As a user I want to check the register functionality of Nopcommerce

  Background: I am on Nopcommerce registration page
    Given 	I open the Google Chrome Browser
    When   	I open the Url https://demo.nopcommerce.com/register
    Then 	I am on Nopcommerce registration

  Scenario Outline: I should not be able to register with invalid data on mandatory field(*) of registration page
    When    I  enter first name "<First name">
    And     I enter last name "<Last name">
    And     I enter email address"<Email>"
    And     I enter password "<Password>"
    And     I enter confirm password "<Confirm Password>"
    And     Click on register button
    Then    I can see an error message"<Error message>"
    And     I am not able to register
    Examples:
      |First Name  |Last Name|Email           |Password|Confirm Password|error messsage              			   |
      |""	       |bakshi   |bakshi@gmail.com|456897  |456897          |please enter First Name     			   |
      |Rohan	   |""	     |bakshi@gmail.com|456897  |456897  	    |please enter Last Name      			   |
      |Rohan       |bakshi   |""			  |456897  |456897  		|please enter valid email   			   |
      |Rohan	   |bakshi   |bakshi@gmail.com|""      |456897			|password is required              		   |
      |Rohan       |bakshi   |bakshi@gmail.com|456897  |""				|confirm password is required              |
      |Rohan       |bakshi   |bakshi@gmail.com|456897  |45689			|password and confirm password do not match|
      |Rohan       |bakshi   |bakshi@gmail.com|45689   |""  			|minimum 6 character password is required  |
      |""		   |""		 |""			  |""	   |""				|Mandatory (*) filed is required

    Scenario: I should be able to select any one radio button from Gender label of Personal detail section
      Given   I am on Gender label on Personal detail section
      When    I Select "Male" radio button
      And     I select "Female" radio button
      Then    I am able to select any one radio button
  Scenario Outline: I should be able to select the Day ,Month and Year from drop down list of date of birth field
      Given    I am on Date of birth field on personal detail section
       When    I select day "<Day>"
        And    I select month"<Month>"
        And    I select year "<Year>"
        Then   I am able to select Day, Month and Year from drop down list
    Examples:
      |Day  |Month   |Year|
      |11	|November|1989|

    Scenario: I should be able check and uncheck Newsletter box on option section
     Given  I am on newsletter label on option section
      When  I click on newsletter checkbox
      And   I again click on newsletter checkbox
      Then  I was able to Check  and uncheck the box next to newletter Label

      Scenario: I should be able to register with valid mandatory (*) field data is on registration field
        Given 	I am on Newsletter label on Options section
        When 	I click on Newsletter checkbox
        And 	I again click on Newsletter Checkbox
        Then 	I was able to check and uncheck the box next to Newsletter label

  Scenario: I should be able to register with valid mandatory (*) field data on registration page
      When 	I enter First name "Rohan"
       And	I enter Last name "bakshi"
       And 	I enter Email "bakshi@gmail.com"
       And 	I enter Password "456897"
       And 	I enter Confirm Password "456897"
       And 	I click on Register button
      Then 	I was able to register successfully