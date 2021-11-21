@echo off
cd %~dp0
:begin
git push
if not %errorlevel% == 0 (
	echo Push failed, try to push it again...
	echo;
	goto begin
) else (
	echo push success!
	pause
)