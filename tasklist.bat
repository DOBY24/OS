@echo off

for /f "tokens=1,2,5" %%a in ('tasklist /v ^| findstr "Console"') do @echo %%a %%b (%%c)
