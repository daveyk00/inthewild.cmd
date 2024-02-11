: --------------:
: inthewild.cmd :
: --------------:

: Batch file to simplify running https://github.com/gmatuz/inthewilddb

: Usage:
: .\inthewild.cmd CVE-2021-30666
: Not entering a CVE as an arguement will prompt for CVE

: --------------:

@echo off
setlocal

if "%~1"=="" goto :NoCVE
set CVE=%~1

goto :CVE
:NoCVE
set /p "CVE=Please Enter CVE in CVE-xxxx-yyyyy format: "

:CVE
docker run inthewild/inthewild reports %CVE%

endlocal
