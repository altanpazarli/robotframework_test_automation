*** Settings ***

Documentation    A resource file with reusable keywords and variables with SeleniumLibrary

Resource          variables.robot
Library          SeleniumLibrary


*** Keywords ***

Browser is opened to login page
    Open browser to login page

User "${username}" logs in with password "${password}"
    Input username    ${username}
    Input password    ${password}
    Submit credentials

Open Browser To Login Page
    Open Browser    ${LOGIN_URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Login Page Should Be Open

Login Page Should Be Open
    Title Should Be    Login

Go To Login Page
    Go To    ${LOGIN_URL}
    Login Page Should Be Open

Input Username
    [Arguments]    ${username}
    Input Text    id:email    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    id:password    ${password}

Submit Credentials
    Click Button    id:login-form-submit-button

My Account Page Should Be Open
    Location Should Be    ${MY_ACCOUNT_URL}
    Title Should Be    My Account

Email or password incorrect. Please try again. warning should be visible
    Element Should Be Visible   class:custom-field__warning   Email or password incorrect. Please try again.
    Title Should Be    Login