*** Settings ***

Documentation    variables defined for login function

*** Variables ***

${MAIN_URL}        <BASE_URL>
${LOGIN_URL}       https://${BASE_URL}/login/
${MY_ACCOUNT_URL}  https://${BASE_URL}/my-account/

${VALID_USER_NAME}  <username>
${VALID_PASSWORD}  <password>

${BROWSER}        chrome
${DELAY}          0