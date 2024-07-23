@echo off
REM Define paths directly
set WORKSPACE=C:\Users\Unity_0118\Desktop\Collection_Newman
set REPORT_DIR=%WORKSPACE%\reports

REM Create reports directory if it doesn't exist
if not exist "%REPORT_DIR%" mkdir "%REPORT_DIR%"

REM Run the collection and export the report
echo Running collection...
newman run "%WORKSPACE%\SIMPLICIALLpostmancollectionNewman.json" -r htmlextra --reporter-htmlextra-export "%REPORT_DIR%\SIMPLICIALLpostmancollectionReport.html"

REM Check if the report is generated
if exist "%REPORT_DIR%\SIMPLICIALLpostmancollectionReport.html" (
    echo Report generated successfully.
) else (
    echo Failed to generate the report.
)

echo Report generation completed. Check report in %REPORT_DIR%
