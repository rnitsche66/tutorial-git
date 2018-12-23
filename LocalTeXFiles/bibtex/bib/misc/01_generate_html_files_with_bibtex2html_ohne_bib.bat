REM Erzeugen der html-Dateien, nur body-Gerüst (Option nodoc)
REM ********************************************************
REM Achtung in Rainer_RT_Leitfaeden_valid sind nur die
REM Leitfäden "einkommentiert" die auch fertig sind bzw.
REM auf der Festo-Homepage zugänglich sind
REM ********************************************************

C:\home\LocalTeXFiles\bibtex\bibtex2html\bibtex2html.exe -d -r -nodoc -nobibsource  RainerStudenten.bib
REM C:\home\TeX\bibtex2html\bibtex2html.exe -d -r -nodoc RainerReports.bib
REM C:\home\TeX\bibtex2html\bibtex2html.exe -d -r -nodoc RainerLiteratur.bib

C:\home\LocalTeXFiles\bibtex\bibtex2html\bibtex2html.exe -d -r -nodoc -nobibsource Rainer_RT_Leitfaeden_lean.bib
C:\home\LocalTeXFiles\bibtex\bibtex2html\bibtex2html.exe -d -r -nodoc -nobibsource Rainer_Festo_Berichte.bib
C:\home\LocalTeXFiles\bibtex\bibtex2html\bibtex2html.exe -d -r -nodoc -nobibsource Rainer_Festo_Studenten.bib
C:\home\LocalTeXFiles\bibtex\bibtex2html\bibtex2html.exe -d -r -nodoc -nobibsource Rainer_Festo_Studenten_lfd.bib
REM C:\home\LocalTeXFiles\bibtex\bibtex2html\bibtex2html.exe -d -r -nodoc -nobibsource RainerReports.bib
C:\home\LocalTeXFiles\bibtex\bibtex2html\bibtex2html.exe -d -r -nodoc -nobibsource RainerLiteratur.bib
C:\home\LocalTeXFiles\bibtex\bibtex2html\bibtex2html.exe -d -r -nodoc -nobibsource Rainer_Festo_Dokus.bib

REM Kopieren der html-Dateien auf den SharePoint
copy Rainer_RT_Leitfaeden_lean.html    \\festo.net\DFS05\DE\Data\Berkheim\VT\ORG_Process_Automation\_prakt\NITR\WWW\Rainer_RT_Leitfaeden.html
copy Rainer_Festo_Berichte.html        \\festo.net\DFS05\DE\Data\Berkheim\VT\ORG_Process_Automation\_prakt\NITR\WWW\Rainer_Festo_Berichte.html
copy RainerLiteratur.html              \\festo.net\DFS05\DE\Data\Berkheim\VT\ORG_Process_Automation\_prakt\NITR\WWW\RainerLiteratur.html
copy Rainer_Festo_Studenten.html       \\festo.net\DFS05\DE\Data\Berkheim\VT\ORG_Process_Automation\_prakt\NITR\WWW\RainerStudenten.html
copy Rainer_Festo_Studenten_lfd.html   \\festo.net\DFS05\DE\Data\Berkheim\VT\ORG_Process_Automation\_prakt\NITR\WWW\RainerStudenten_lfd.html
copy Rainer_Festo_Dokus.html           \\festo.net\DFS05\DE\Data\Berkheim\VT\ORG_Process_Automation\_prakt\NITR\WWW\RainerDokus.html


REM copy Rainer_RT_Leitfaeden_lean.html        M:\ORG_Process_Automation\SZ-E\60_Wissen\ControlEngineering\WWW\Rainer_RT_Leitfaeden.html
REM copy Rainer_Festo_Berichte.html        M:\ORG_Process_Automation\SZ-E\60_Wissen\ControlEngineering\WWW\Rainer_Festo_Berichte.html
REM copy RainerLiteratur.html        M:\ORG_Process_Automation\SZ-E\60_Wissen\ControlEngineering\WWW\RainerLiteratur.html
REM copy Rainer_Festo_Studenten.html M:\ORG_Process_Automation\SZ-E\60_Wissen\ControlEngineering\WWW\RainerStudenten.html
REM copy RainerReports.html 	\\tahiti.si.de.bosch.com\services\www\pages\sli2\staff\nitsche\papers\RainerReports.html
REM copy RainerLiteratur.html 	\\tahiti.si.de.bosch.com\services\www\pages\sli2\staff\nitsche\papers\RainerLiteratur.html

REM Kopieren der html-Dateien

pause 