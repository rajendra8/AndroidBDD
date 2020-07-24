@BeforeLogin  @AfterLogin
Feature: Executing the home page feature

  Background:
    Given I start the automation
    Then I executing the hookclass

  @SearchItem
  Scenario: SearchItem
    Then I wait for 20 seconds
    When I wait until "Category" appears
    When I click on "Category"
    And I wait for 10 seconds
    When I wait until "TV, Appliances" appears
    Then I scroll till "TV, Appliances"
    And I wait for 20 seconds
    And I click on "TV, Appliances"
    When I wait until "Televisions" appears
    And I click on "Televisions"
    And I wait for 40 seconds
    Then I scroll till "View all"
    And I wait for 20 seconds
    And I click on "View all 40 & 43 TVs"
    And I wait for 30 seconds
    And I scroll till "Sony Bravia 108 cm"
    And I wait for 20 seconds
    And I click on "Sony Bravia 108"
    And I wait for 30 seconds
    Then I see "rupees 37,990"
    And I wait for 10 seconds
    And I scroll till "Add to Cart"
    And I wait for 20 seconds
    And I click on "Add to Cart"
#    Then I wait until "Proceed to checkout" appears
#    And I click on "Proceed to checkout"
#    And I wait until "Deliver to this address" appears
#    And I click on "Deliver to this address"
