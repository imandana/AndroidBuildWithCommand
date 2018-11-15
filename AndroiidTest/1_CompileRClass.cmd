::
:: Change Direktory to specified Android Build tools 
::


cd %ANDROID_HOME%\build-tools\%ANDROID_BUILDTOOL_VERSION%

::Execute aapt program
:: We create R.java file depends on AndroidManifest
aapt package -v -f -m -S %ANDROID_PROJECT%\%PROJECT_NAME%\res -J %ANDROID_PROJECT%\%PROJECT_NAME%\src -M %ANDROID_PROJECT%\%PROJECT_NAME%\AndroidManifest.xml -I "%ANDROID_HOME%\platforms\%ANDROID_API_VERSION%\android.jar"
