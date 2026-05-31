*** Settings ***
Library     AppiumLibrary
Resource    ../locators/sauce_locators.robot
Resource    common_keywords.robot

*** Keywords ***
Click Navigation Bar
    Click Element    ${NAV_MENU}

Click Login Navigation
    Click Element    ${NAV_LOGIN}

Input Username    
    [Arguments]    ${USERNAME}
    [Documentation]    Input Username 
    Input Text    ${USERNAME_FIELD}    ${USERNAME}

Input Password
    [Arguments]    ${PASSWORD}
    [Documentation]    Input Password 
    Input Text    ${PASSWORD_FIELD}    ${PASSWORD}

Click Login Button
    Click Element    ${LOGIN_BUTTON}

Click Logout Navigation
    Click Element    ${NAV_LOGOUT}

Click Confirm Logout Button
    Click Element    ${CONFIRM_LOGOUT_BUTTON}

Click Cancel Logout Button
    Click Element    ${CANCEL_LOGOUT_BUTTON}