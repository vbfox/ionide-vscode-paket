@echo off

setlocal enableextensions
set RELEASE_DIR=%~dp0release
set EXTENSIONS_DIR=%USERPROFILE%\.vscode\extensions
set EXTENSION_DIR_NAME=ionide-vscode-paket-dev
set EXTENSION_DIR=%EXTENSIONS_DIR%\%EXTENSION_DIR_NAME%
if exist "%EXTENSION_DIR%" rmdir "%EXTENSION_DIR%"
mklink /d "%EXTENSION_DIR%" "%RELEASE_DIR%"