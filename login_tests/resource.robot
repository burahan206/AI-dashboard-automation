*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${SERVER}         dev.app.agnoshealth.com
${BROWSER}        Chrome
${DELAY}          0
${VALID USER}     test@gmail.com
${VALID PASSWORD}    12345
${LOGIN URL}      https://${SERVER}/ai_dashboard/login
${WELCOME URL}    https://${SERVER}/ai_dashboard
${ERROR URL}      https://${SERVER}/ai_dashboard/login

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Login Page Should Be Open

Login Page Should Be Open
    Title Should Be    Agnos

Go To Login Page
    Go To    ${LOGIN URL}
    Login Page Should Be Open

Input Username
    [Arguments]    ${username}
    Input Text    id=Email   ${username}

Enter Password
    [Arguments]    ${password}
    Input Text    id=password    ${password}

Submit Credentials
    Click Button    xpath=//*[@id="root"]/div/div/div/div[2]/div[3]/button

Welcome Page Should Be Open
    Wait Until Location Is    ${WELCOME URL}    10s
    Title Should Be    Agnos
