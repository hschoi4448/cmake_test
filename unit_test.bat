@echo off 
setlocal enableextensions enabledelayedexpansion

set /a cnt = 0
FOR /r . %%a in (*.exe) do (
set /a cnt += 1
%%a --gtest_output=xml:build/!cnt!.xml
)
