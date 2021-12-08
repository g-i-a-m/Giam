@echo off
set arg1=%1%
if "%arg1%"=="" (
	set arg1=push
)
cd %~dp0

:begin
if "%arg1%"=="push" (
	git push
) else (
	git pull
)

if not %errorlevel% == 0 (
	echo %arg1% failed, try it again...
	echo;
	goto begin
) else (
	echo %arg1% success!
	pause
)