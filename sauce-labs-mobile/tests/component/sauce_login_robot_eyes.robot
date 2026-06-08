*** Settings ***
Documentation    Sauce Lab Login – Visual Regression using RobotEyes
...              Free & local, no cloud service required.
...              Uses ImageMagick for pixel diff comparison.
...
...              FIRST RUN (generate baseline):
...              robot -d results -v images_dir:visual_images/baseline
...              sauce-labs-mobile/tests/behavior/sauce_login_roboteyes.robot
...
...              SUBSEQUENT RUNS (compare against baseline):
...              robot -d results -v images_dir:visual_images/baseline
...              sauce-labs-mobile/tests/behavior/sauce_login_roboteyes.robot

Resource    ../../resources/keywords/common_keywords.robot
Resource    ../../resources/variables/varibles.robot

Library     RobotEyes

Suite Setup     Open Sauce Labs App
Suite Teardown  Close Application

*** Test Cases ***
TC_01 - Login with Valid Credentials
    Click Navigation Bar
    Click Login Navigation
    Open Eyes    AppiumLibrary    5
    Capture Full Screen    name=login_screen
    Input Username    ${USERNAME}
    Input Password    ${PASSWORD}
    Capture Full Screen    name=credentials_filled
    Click Login Button
    Capture Full Screen    name=post_login
    Compare Images

TC_02 - Cancel Logout
    Click Navigation Bar
    Click Logout Navigation
    Open Eyes    AppiumLibrary    5
    Capture Full Screen    name=logout_dialog
    Click Cancel Logout Button
    Capture Full Screen    name=cancelled_logout
    Compare Images

TC_03 - Confirm Logout
    Click Navigation Bar
    Click Logout Navigation
    Open Eyes    AppiumLibrary    5
    Capture Full Screen    name=logout_dialog_confirm
    Click Confirm Logout Button
    Compare Images