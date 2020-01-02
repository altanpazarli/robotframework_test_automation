*** Settings ***

Documentation     Gherkin style test suite for login function

Resource          keywords.robot

Test Teardown     Close Browser

*** Test Cases ***


Valid Login
    Given Browser is opened to login page
    When User "username" logs in with password "password"
    Then Wait Until Keyword Succeeds   5 sec  1 sec   My Account Page Should Be Open

Invalid Login
    Given Browser is opened to login page
    When User "invalid@example.com" logs in with password "invalidPassword"
    Then Wait Until Keyword Succeeds   5 sec  1 sec   Email or password incorrect. Please try again. warning should be visible