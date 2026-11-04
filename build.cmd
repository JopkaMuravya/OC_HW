@echo off
echo Updating, configuring and building project

echo [1/3] Pulling latest changes from Git...
git pull
if %errorlevel% neq 0 (
    echo Warning: Git pull failed. Check your network or repository state.
)

echo [2/3] Configuring CMake...
cmake -S . -B build -G "MinGW Makefiles"
if %errorlevel% neq 0 (
    echo Configuration failed!
    exit /b %errorlevel%
)

echo [3/3] Compiling...
cmake --build build
if %errorlevel% neq 0 (
    echo Build failed!
    exit /b %errorlevel%
)

echo Done! Executable is located at: build\hw.exe