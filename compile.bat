@echo off
echo Compiling Lox...
javac -d bin com\loxlanguage\lox\*.java
if %ERRORLEVEL% NEQ 0 (
    echo Compilation failed!
    exit /b %ERRORLEVEL%
)

echo Running Lox...
java -cp bin com.loxlanguage.lox.Lox %1
