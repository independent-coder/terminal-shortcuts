@echo off

REM Add "Open in Terminal" context menu option for directories
REG ADD "HKEY_CLASSES_ROOT\Directory\Background\shell\Open in Terminal" /ve /d "Open in Terminal" /f
REG ADD "HKEY_CLASSES_ROOT\Directory\Background\shell\Open in Terminal" /v "Icon" /d "%SystemRoot%\system32\imageres.dll,-5324" /f
REG ADD "HKEY_CLASSES_ROOT\Directory\Background\shell\Open in Terminal\command" /ve /d "cmd.exe /k cd \"%V\"" /f

echo "Open in Terminal" context menu option added successfully.
pause