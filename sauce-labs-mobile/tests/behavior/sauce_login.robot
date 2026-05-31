*** Settings ***
Documentation    Sauce Lab Login Test Case on Mobile Apps Using Appium and Android Emulator
...              This Project is build for Fahmi's Testing Practice on Mobile Apps Automation
...              Link for Mobile Apps: https://github.com/saucelabs/my-demo-app-android/releases/tag/2.2.0

Resource    ../../resources/keywords/common_keywords.robot
Resource    ../../resources/variables/varibles.robot

Suite Setup    Open Sauce Labs App
Suite Teardown    Close Application

*** Test Cases ***
TC_01 - Login with Valid Credentials
    Click Navigation Bar
    Click Login Navigation
    Input Username    ${USERNAME}
    Input Password    ${PASSWORD}
    Click Login Button

TC_02 - Cancel Logout
    Click Navigation Bar
    Click Logout Navigation
    Click Cancel Logout Button

TC_03 - Confirm Logout
    Click Navigation Bar
    Click Logout Navigation
    Click Confirm Logout Button