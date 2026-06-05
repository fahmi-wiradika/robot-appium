*** Settings ***
Library     AppiumLibrary
Resource    ../config/capabilities.robot
Resource    ../keywords/sauce_keywords.robot

*** Keywords ***
Open Sauce Labs App
    [Documentation]    Launch the app and wait for it to load
    Open Application    ${APPIUM_URL}
    ...    platformName=${PLATFORM_NAME}
    ...    platformVersion=${PLATFORM_VERSION}
    ...    deviceName=${DEVICE_NAME}
    ...    appPackage=${APP_PACKAGE}
    ...    appActivity=${APP_ACTIVITY}
    ...    automationName=${AUTOMATION_NAME}
    Wait Until Page Contains Element    //android.widget.FrameLayout    timeout=15s

Close Sauce Labs App
    Close Application

