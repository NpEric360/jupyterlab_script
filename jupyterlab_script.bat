@echo off
:: Batch script to activate Anaconda environment and launch Jupyter Lab (with administrator elevation)

:: Check for administrative privileges
NET SESSION >nul 2>&1
if %errorLevel% == 0 (
goto :run_script
) else (
echo Script requires administrative privileges. Relaunching with elevated rights...
powershell -Command "Start-Process -FilePath '%~dpnx0' -Verb RunAs"
exit /b
)

:run_script
:: Activate the Anaconda environment
call C:\ProgramData\Anaconda3\Scripts\activate.bat

::Change directory

cd C:\Users\NpEri\Desktop\AFTER_GRAD

:: Launch Jupyter Lab
jupyter lab
