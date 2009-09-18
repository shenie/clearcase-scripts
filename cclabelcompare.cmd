@echo off

echo.
@echo ClearCase Baseline Report
echo.

echo Changing to VOB root %1
cd %1

cleartool describe -fmt "First Label: %%n \n created: %%Sd \n by: %%u \n status: %%[locked]p \n" lbtype:%2
echo.
cleartool describe -fmt "Second Label: %%n \n created: %%Sd \n by: %%u \n status: %%[locked]p \n" lbtype:%3

echo.
@echo Element versions changed between %2 and %3:
echo.

cleartool find . -ver "!lbtype(%2) && lbtype(%3)" -print

