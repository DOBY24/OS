@echo off
setlocal enabledelayedexpansion

set /p input=Zadejte jestli chcete vyhledat nejmenší,největší nebo oba platy(-/+/-+):
set /A plat = 0
set /A plat2 = 0


for /f "usebackq tokens=5 delims=," %%a in ("pracovnici.csv") do (
	if "%input%"=="max" (
		if %%a gtr !plat! (
			set /A plat=%%a
			)
	)
	if "%input%"=="min" (
		set /A temp=0
		if %%a lss !plat! set /A temp=1
		if !plat! equ 0 set /A temp=1
		if !temp! equ 1 set /A plat=%%a
	)
	if "%input%"=="minmax" (
		set /A temp=0
		if %%a lss !plat! set /A temp=1
		if !plat! equ 0 set /A temp=1
		if !temp! equ 1 set /A plat=%%a
		
		if %%a gtr !plat2! (
			set /A plat2=%%a
			)
	)
)

if "%input%"=="max" echo Maximalni plat je: %plat%
if "%input%"=="min" echo Minimalni plat je: %plat%
if "%input%"=="minmax" echo Minimalni plat je: %plat% Maximalni plat je: %plat2%
	
