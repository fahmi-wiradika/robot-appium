*** Variables ***
# --- Device Config ---
# For real device (Vysor/USB):
${PLATFORM_NAME}        Android
#${DEVICE_NAME}          your_device_udid     # get from: adb devices
${PLATFORM_VERSION}     15                    # match your device Android version

# For emulator:
${DEVICE_NAME}        emulator-5554

# --- App Config ---
${APP_PACKAGE}    com.saucelabs.mydemoapp.android
${APP_ACTIVITY}    com.saucelabs.mydemoapp.android.view.activities.MainActivity      # check with: adb shell dumpsys window | grep mCurrentFocus

# --- Server ---
${APPIUM_URL}           http://localhost:4723
${AUTOMATION_NAME}      UiAutomator2