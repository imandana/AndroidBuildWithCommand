
::
::
::

cd %ANDROID_HOME%\build-tools\%ANDROID_BUILDTOOL_VERSION%

aapt package -v -f -M %ANDROID_PROJECT%\%PROJECT_NAME%\AndroidManifest.xml -S %ANDROID_PROJECT%\%PROJECT_NAME%\res -I "%ANDROID_HOME%\platforms\%ANDROID_API_VERSION%\android.jar" -F %ANDROID_PROJECT%\%PROJECT_NAME%\bin\AndroidAPP.unsigned.apk
