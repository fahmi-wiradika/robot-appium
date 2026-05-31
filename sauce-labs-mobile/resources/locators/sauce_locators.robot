*** Variables ***
# Use Appium Inspector to grab these
# Inspector → connect → tap element → copy resource-id / xpath

# Sauce Labs Demo Mobile Apps
# Main Page
${NAV_MENU}    com.saucelabs.mydemoapp.android:id/menuIV
${LOGOUT_MESSAGE}    //android.widget.TextView[@resource-id="android:id/message"]
${CONFIRM_LOGOUT_BUTTON}    //android.widget.Button[@resource-id="android:id/button1"]
${CANCEL_LOGOUT_BUTTON}    //android.widget.Button[@resource-id="android:id/button2"]

# Navigation Menu
${NAV_LOGIN}    //android.widget.TextView[@content-desc="Login Menu Item"]
${NAV_LOGOUT}    //android.widget.TextView[@content-desc="Logout Menu Item"]


# Login Page
${LOGIN_INFO_TEXT_FILED}    new UiSelector().resourceId("com.saucelabs.mydemoapp.android:id/selectTextTV")
${USERNAME_FIELD}    com.saucelabs.mydemoapp.android:id/nameET
${PASSWORD_FIELD}    com.saucelabs.mydemoapp.android:id/passwordET
${LOGIN_BUTTON}    com.saucelabs.mydemoapp.android:id/loginBtn



# OR use accessibility id:
# ${BTN_TARGET}     accessibility_id=Target Button