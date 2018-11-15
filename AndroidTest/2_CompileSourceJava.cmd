::
::


cd %JAVA_HOME%\bin

:: Compile Java
javac -verbose -d %ANDROID_PROJECT%\%PROJECT_NAME%\obj -classpath "%ANDROID_HOME%\platforms\%ANDROID_API_VERSION%\android.jar" -sourcepath %ANDROID_PROJECT%\%PROJECT_NAME%\src %ANDROID_PROJECT%\%PROJECT_NAME%\src\com\example\android\documentcentricapps\*.java
