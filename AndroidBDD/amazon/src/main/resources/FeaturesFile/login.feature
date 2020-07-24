@BeforeLogin  @AfterLogin
Feature: Executing the login feature

  Background:
    Given I start the automation
    Then I executing the hookclass

  @createAccount
  Scenario: createAccount
    When I come to login page
    And I check login page
    Then I click on "new_user"
    Then I wait for 10 seconds
    And I wait until "Name" appears
    Then I enter "Raj" into "Name"
    Then I enter "9850550788" into "Mobile Number"
    Then I enter "ranu2290" into "Set Password"
    And I click on "Verify Mobile Number"
    And I click on "Sign in"
    And I click on "Create account . New to Amazon?"
    Then I enter "Raj" into "YourName"

  @InvalidLogin
  Scenario Outline:Login
    And I wait for 10 seconds
    And I wait until "Already a member,Sign In" appears
    When I click on "Already a member,Sign In"
    And I wait for 10 seconds
    Then I enter "<InvalidMobileNum>" into "email_login"
#    And I click on "Continue"
    And I wait for 10 seconds
    And I see "Incorrect phone number"
    And I wait for 10 seconds
    Then I click on "X icon"
    Then I wait for 10 seconds
    Then I enter "<ValidId>" into "email_login"
    Then I wait for 10 seconds
    And I click on "Continue"
    Then I wait for 10 seconds
    Then I enter "<InvalidPass>" into "password"
    Then I wait for 30 seconds
    Then I wait until "Login" appears
    Then I click on "Login"
    And I wait for 20 seconds
    Then I see "There was a problem"
    Then I wait for 10 seconds
    Then I enter "<validPass>" into "password"
    Then I wait for 30 seconds
    Then I wait until "Login" appears
    Then I click on "Login"
    And I wait for 20 seconds
    When I wait until "Category" appears

    Examples:
    |InvalidMobileNum|InvalidPass|ValidId|validPass|
    | 9850550700        | ranu303091    |9850550788|ranu2290|

  @Login
  Scenario:Login
    When I click on "Already a member,Sign In"
    And I wait for 10 seconds
    Then I enter "9850550788" into "email_login"
    And I click on "Continue"
    And I wait for 10 seconds
    Then I enter "ranu2290" into "password"
    Then I wait for 30 seconds
    Then I click on "Login"
    When I wait until "Category" appears



  @SearchTv
  Scenario: SearchTv
    When I wait until "Action Bar" appears
    Then I click on "Action Bar"
    Then I wait for 10 seconds
    And I click on "Action Bar Home"
    Then I wait for 10 seconds
    Then I enter "Sony Bravia 80" into "Search in All Categories"
    Then I wait for 10 seconds
    Then I click on Enter on Keyboard
    Then I wait for 10 seconds
    Then I wait for 10 seconds
    Then I scroll till "Sony Bravia 80"



