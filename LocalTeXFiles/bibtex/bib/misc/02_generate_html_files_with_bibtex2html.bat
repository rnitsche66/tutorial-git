REM Erzeugen der html-Dateien, nur body-Gerüst (Option nodoc)

REM Achtung neuer Pfad: \\tahiti.si.de.bosch.com\services\www\archiv\sli2\staff\nitsche\papers

C:\home\TeX\bibtex2html\bibtex2html.exe -d -r -nodoc RainerStudenten.bib
C:\home\TeX\bibtex2html\bibtex2html.exe -d -r -nodoc RainerReports.bib
C:\home\TeX\bibtex2html\bibtex2html.exe -d -r -nodoc RainerLiteratur.bib

REM C:\home\TeX\bibtex2html\bibtex2html.exe -d -r -nodoc -nobibsource RainerStudenten.bib
REM C:\home\TeX\bibtex2html\bibtex2html.exe -d -r -nodoc -nobibsource RainerReports.bib
REM C:\home\TeX\bibtex2html\bibtex2html.exe -d -r -nodoc -nobibsource RainerLiteratur.bib

REM Kopieren der html-Dateien
copy RainerStudenten.html 	\\tahiti.si.de.bosch.com\services\www\archiv\sli2\staff\nitsche\papers\RainerStudenten.html
copy RainerReports.html 	\\tahiti.si.de.bosch.com\services\www\archiv\sli2\staff\nitsche\papers\RainerReports.html
copy RainerLiteratur.html 	\\tahiti.si.de.bosch.com\services\www\archiv\sli2\staff\nitsche\papers\RainerLiteratur.html

REM Kopieren der html-Dateien
copy RainerStudenten_bib.html 	\\tahiti.si.de.bosch.com\services\www\archiv\sli2\staff\nitsche\papers\RainerStudenten_bib.html
copy RainerReports_bib.html 	\\tahiti.si.de.bosch.com\services\www\archiv\sli2\staff\nitsche\papers\RainerReports_bib.html
copy RainerLiteratur_bib.html 	\\tahiti.si.de.bosch.com\services\www\archiv\sli2\staff\nitsche\papers\RainerLiteratur_bib.html
pause 