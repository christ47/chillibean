Feature: Chilli Bean test suite
    as a User I want to

@credentials1
Scenario: Users get the correct error message when attempting to login with no credentials
    Given I am on the chillpharm login page
    When I enter no login details
    Then I see an error message for no login details

@credentials2
Scenario: Users get the correct error message when entering an incorrect email or password
    Given I am on the chillpharm login page
    When I enter the incorrect login credentials
    Then I see an error message for the incorrect password

@credentials3
Scenario: Users get a warning when they are about to get locked out their account
    Given I am on the chillpharm login page
    When I enter the incorrect login credentials
    When I enter the incorrect login credentials
    Then I see a warning for being locked out my account

@credentials4
Scenario: Users get a message when locked out their accounts
    Given I am on the chillpharm login page
    When I enter the incorrect login credentials
    When I enter the incorrect login credentials
    Then I see the error for too many incorrect attmepts