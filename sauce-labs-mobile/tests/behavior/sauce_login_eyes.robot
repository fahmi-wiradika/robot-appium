*** Settings ***
Documentation    Sauce Lab Login Test Case on Mobile Apps Using Appium and Android Emulator
...              This Project is build for Fahmi's Testing Practice on Mobile Apps Automation with Applitools Visual Test
...              Link for Mobile Apps: https://github.com/saucelabs/my-demo-app-android/releases/tag/2.2.0

Resource    ../../resources/keywords/common_keywords.robot
Resource    ../../resources/variables/varibles.robot

Library     EyesLibrary    runner=mobile_native    config=${CURDIR}/../../../applitools.yaml

Suite Setup     Run Keywords    Open Sauce Labs App    AND
...             Eyes Open       app_name=Sauce Labs Demo App    test_name=Login Suite
Suite Teardown  Run Keywords    Eyes Close Async    AND    Close Application

*** Test Cases ***
TC_01 - Login with Valid Credentials
    Click Navigation Bar
    Click Login Navigation
    Eyes Check Window    Login Screen
    Input Username    ${USERNAME}
    Input Password    ${PASSWORD}
    Eyes Check Window    Credentials Filled
    Click Login Button
    Eyes Check Window    Post Login

TC_02 - Cancel Logout
    Click Navigation Bar
    Click Logout Navigation
    Eyes Check Window    Logout Dialog
    Click Cancel Logout Button
    Eyes Check Window    Cancelled Logout

TC_03 - Confirm Logout
    Click Navigation Bar
    Click Logout Navigation
    Click Confirm Logout Button
    Eyes Check Window    After Logout