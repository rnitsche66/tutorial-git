REM
REM Erzeugt Literaturliste als HTML
REM Laufwerk W: ist auf \\135.1.1.1\www\ gemountet
REM
REM Testzeile wäre:
REM C:/home/bin/bib2html.pl -s unsort RainerStudenten.bib tmp.html
REM tut aber noch nicht (18.Juli 2004)
REM auf alter Masch. tut es noch

del \\tahiti.si.de.bosch.com\services\www\archiv\sli2\staff\nitsche\papers\RainerStudenten.html
del \\tahiti.si.de.bosch.com\services\www\archiv\sli2\staff\nitsche\papers\RainerReports.html
del \\tahiti.si.de.bosch.com\services\www\archiv\sli2\staff\nitsche\papers\RainerLiteratur.html

C:\home\TeX\Bib2html\bib2html.pl -s unsort RainerStudenten.bib    \\tahiti.si.de.bosch.com\services\www\archiv\sli2\staff\nitsche\papers\RainerStudenten.html
REM C:\home\TeX\Bib2html\bib2html.pl -s unsort RainerReports.bib      \\tahiti.si.de.bosch.com\services\www\archiv\sli2\staff\nitsche\papers\RainerReports.html
C:\home\TeX\Bib2html\bib2html.pl -s plain RainerReports.bib      \\tahiti.si.de.bosch.com\services\www\archiv\sli2\staff\nitsche\papers\RainerReports.html
REM C:\home\TeX\Bib2html\bib2html.pl -s unsort RainerLiteratur.bib    \\tahiti.si.de.bosch.com\services\www\archiv\sli2\staff\nitsche\papers\RainerLiteratur.html
C:\home\TeX\Bib2html\bib2html.pl -s plain RainerLiteratur.bib    \\tahiti.si.de.bosch.com\services\www\archiv\sli2\staff\nitsche\papers\RainerLiteratur.html

REM Und noch für die Regelungstechnik-Homepage:
REM del W:\pages\sli2\work\control\sli2\RainerReports.html
REM del W:\pages\sli2\work\control\sli2\RainerStudenten.html

REM C:\home\TeX\Bib2html\bib2html.pl -s unsort RainerReports.bib    W:\pages\sli2\work\control\publ\RainerReports.html
REM C:\home\TeX\Bib2html\bib2html.pl -s unsort RainerStudenten.bib   W:\pages\sli2\work\control\publ\RainerStudenten.html  

pause

REM copy RalfLiteratur.bib     H:\TeX\bibtex