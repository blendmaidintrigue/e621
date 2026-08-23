@echo off
setlocal
ruby "%~dp0rails" %*
exit /b %errorlevel%
