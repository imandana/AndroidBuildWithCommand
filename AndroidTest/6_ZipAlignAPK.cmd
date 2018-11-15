
::
::
::

cd %ANDROID_HOME%\build-tools\%ANDROID_BUILDTOOL_VERSION%

zipalign -v -f 4 %ANDROID_PROJECT%\%PROJECT_NAME%\bin\AndroidAPP.signed.apk %ANDROID_PROJECT%\%PROJECT_NAME%\bin\AndroidAPP.apk
