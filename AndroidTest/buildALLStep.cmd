:: Define Platform Version
set ANDROID_API_VERSION=android-26
set ANDROID_BUILDTOOL_VERSION=26.0.2
set PROJECT_NAME=AndroidTest
set ANDROID_PROJECT=C:\Users\TOSHIBA\Documents\ProjectAndroid

cd %ANDROID_PROJECT%\%PROJECT_NAME%
call 0_Preparing.cmd

cd %ANDROID_PROJECT%\%PROJECT_NAME%
call 1_CompileRClass.cmd

cd %ANDROID_PROJECT%\%PROJECT_NAME%
call 2_CompileSourceJava.cmd

cd %ANDROID_PROJECT%\%PROJECT_NAME%
call 3_DexConvert.cmd

cd %ANDROID_PROJECT%\%PROJECT_NAME%
call 4_CreateAPK.cmd

cd %ANDROID_PROJECT%\%PROJECT_NAME%
call 5_SignAPK.cmd

cd %ANDROID_PROJECT%\%PROJECT_NAME%
call 6_ZipAlignAPK.cmd

echo BUILD SUCCESSFUL
pause
