
::
::
::

cd %ANDROID_HOME%\build-tools\%ANDROID_BUILDTOOL_VERSION%

dx --dex --verbose --output=%ANDROID_PROJECT%\%PROJECT_NAME%\bin\classes.dex %ANDROID_PROJECT%\%PROJECT_NAME%\obj
