%%
%% This 'iambrief.cls'
%% modified from 'g-brief.cls' by Michael Lenzen
%%
%% LaTeX classfile fuer Institutsbrief mit LaTeX Version 2e
%%
%%
%%
%% 5. Dezember 1997 by Kai Willner
%%
%% 
\def\filedate{1997/12/05}
\def\fileversion{1.1}
\def\filedate{1997/05/12}
\def\fileversion{1.1}
\def\filename{iambrief.cls}
\NeedsTeXFormat{LaTeX2e}[1996/06/01]

\ProvidesClass{iambrief}[\filedate\space v\fileversion\space iambrief class]

\newdimen\VorschubH
\newdimen\VorschubV
\VorschubH = 0.0mm
\VorschubV = 0.0mm

\usepackage{epsfig, unilogo, iamhead}

\renewcommand{\familydefault}{cmss}

\DeclareOption{10pt}{\def\@schrift{0}}
\DeclareOption{11pt}{\def\@schrift{1}}
\DeclareOption{12pt}{\def\@schrift{2}}
\DeclareOption{german}{
  \def\sprache{german}
  \def\telefontex{{\footnotesize Telefon\/:}}
  \def\telefaxtext{{\footnotesize Telefax\/:}}
  \def\emailtext{{\footnotesize E--Mail\/:}}
  \def\betrefftext{{\normalsize Betr.:}}
  \def\ihrzeichentext{\footnotesize{Ihr Zeichen}}
  \def\ihrschreibentext{\footnotesize{Ihr Schreiben vom}}
  \def\unserzeichentext{\footnotesize{Unser Zeichen}}
  \def\datumtext{\footnotesize{Datum}}
  \def\datum{\number\day.~\ifcase\month\or Januar\or Februar\or
    M\"arz\or April\or Mai\or Juni\or Juli\or August\or September\or
    Oktober\or November\or Dezember\fi \space\number\year}}
\DeclareOption{english}{
  \def\sprache{english}
  \def\telefontex{{\footnotesize Phone\/:}}
  \def\telefaxtext{{\footnotesize Fax\/:}}
  \def\emailtext{{\footnotesize E--Mail\/:}}
  \def\betrefftext{{\normalsize Subj.:}}
  \def\ihrzeichentext{\footnotesize{Your Ref.}}
  \def\ihrschreibentext{\footnotesize{Your Mail}}
  \def\unserzeichentext{\footnotesize{Our Ref.}}
  \def\datumtext{\footnotesize{Date}}}
\DeclareOption{american}{
  \def\sprache{american}
  \def\telefontex{{\footnotesize Phone\/:}}
  \def\telefaxtext{{\footnotesize Fax\/:}}
  \def\emailtext{{\footnotesize E--Mail\/:}}
  \def\betrefftext{{\normalsize Subj.:}}
  \def\ihrzeichentext{\footnotesize{Your Ref.}}
  \def\ihrschreibentext{\footnotesize{Your Mail}}
  \def\unserzeichentext{\footnotesize{Our Ref.}}
  \def\datumtext{\footnotesize{Date}}}

\ExecuteOptions{11pt,german} \ProcessOptions

\LoadClass[1\@schrift pt, a4paper, oneside, final]{letter}[1996/01/20]

\normalsize

\setlength\oddsidemargin{0\p@}
\setlength\evensidemargin{\oddsidemargin}
\setlength\marginparwidth{90\p@}
\setlength\marginparsep{11\p@}
\setlength\marginparpush{5\p@}
\setlength\topmargin{-12.69mm}
\setlength\headheight{4.23mm}
\setlength\headsep{6.35mm}
\setlength\topskip{3.38mm}
\addtolength\footskip{4.23mm}

\setlength\textheight{178.88mm}
\setlength\textwidth{165mm}

\setlength\lineskip{1\p@}
\setlength\normallineskip{1\p@}

\renewcommand\baselinestretch{1}

\advance\topmargin by \VorschubV
\advance\oddsidemargin by \VorschubH
\setlength\evensidemargin{\oddsidemargin}

\AtEndOfClass{\pagestyle{regularpage}}

\def\Name#1{\def\name{#1}} \def\name{}
\def\Strasse#1{\def\strasse{#1}} \def\strasse{}
\def\Ort#1{\def\ort{#1}} \def\ort{}

\def\Telefon#1{\def\telefon{#1}} \def\telefon{}
\def\Telefax#1{\def\telefax{#1}} \def\telefax{}
\def\EMail#1{\def\email{#1}} \def\email{}

\def\Postvermerk#1{\def\postvermerk{#1}} \def\postvermerk{}
\def\Adresse#1{\def\adresse{#1}} \def\adresse{}
\def\AdresseSep#1{\def\adressesep{#1}} \def\adressesep{}

\def\IhrZeichen#1{\def\ihrzeichen{#1}} \def\ihrzeichen{}
\def\IhrSchreiben#1{\def\ihrschreiben{#1}} \def\ihrschreiben{}
\def\UnserZeichen#1{\def\unserzeichen{#1}} \def\unserzeichen{}
\def\Datum#1{\def\datum{#1}} \def\datum{\today}

\def\Betreff#1{\def\betreff{#1}} \def\betreff{}

\def\Anrede#1{\def\anrede{#1}} \def\anrede{}
\def\Gruss#1#2{\def\gruss{#1} \def\grussskip{#2}}
    \def\gruss{} \def\grussskip{}

\def\Unterschrift#1{\def\unterschrift{#1}} \def\unterschrift{}

\def\Anlagen#1{\def\anlagen{#1}} \def\anlagen{}
\def\Verteiler#1{\def\verteiler{#1}} \def\verteiler{}

\long\def\Einrueckung#1{\par\begin{tabular}{@{\hspace{1in}}p{5in}@{}}
    #1\end{tabular}\par}

\newif\iftrennlinien\trennlinienfalse
\def\trennlinien{\trennlinientrue}

\newif\iflochermarke\lochermarkefalse
\def\lochermarke{\lochermarketrue}

\newif\iffaltmarken\faltmarkenfalse
\def\faltmarken{\faltmarkentrue}

\newif\iffenstermarken\fenstermarkenfalse
\def\fenstermarken{\fenstermarkentrue}


\newenvironment{iambrief}{
  \thispagestyle{firstpage}
  \setlength\unitlength{1mm}

  \c@page\@ne
  \interlinepenalty=200
  \clearpage

%%  \vspace*{\adressesep}

  \makebox[44.5mm][l]{\ihrzeichentext}
  \makebox[55.0mm][l]{\ihrschreibentext} 
  \makebox[21.0mm][l]{\unserzeichentext} 
  \makebox[37.0mm][r]{\datumtext} \\
  \makebox[44.5mm][l]{\ihrzeichen}
  \makebox[55.0mm][l]{\ihrschreiben}
  \makebox[21.0mm][l]{\unserzeichen}
  \makebox[37.0mm][r]{\datum} \par

  \vspace{8mm}

  \ifcase\@ptsize\vspace{0.045pt}\or \vspace{-1.555pt}\or
  \vspace{-2.955pt} \fi

  \ifx \betreff\empty \else \textbf{\betreff} \mbox{}
  \par \vspace{-1\parskip} \vspace{8mm} \fi

  \ifcase\@ptsize\vspace{0.045pt}\or \vspace{-1.555pt}\or
  \vspace{-2.955pt} \fi

  \ifx \anrede\empty \else \anrede \par \fi\nobreak
  \addtolength\textheight{63mm}
  }
{
  \renewcommand{\baselinestretch}{1.0}
  \ifcase \@ptsize\relax \normalsize \or \small \or \footnotesize \fi

  \vspace{\grussskip} \par \nobreak \stopbreaks \noindent
  \parbox[t]{3.5in}{\raggedright \ignorespaces {\normalsize \ifx
      \gruss\empty \else \gruss \mbox{} \\[16.92mm] \fi \ifx
      \empty\unterschrift \relax \else  \unterschrift \fi}
    \strut} 
  \ifx \anlagen\empty \else \vspace{4mm} \par \anlagen
  \par \fi \ifx \verteiler\empty \else \ifx \anlagen\empty
  \vspace{4mm}\par \fi \verteiler \fi }

\def\ps@firstpage{
  \renewcommand{\baselinestretch}{1.0}
  \ifcase \@ptsize\relax \normalsize \or \small \or \footnotesize \fi
  \headheight36pt\headsep63mm
  \def\@oddhead{
    \unitlength1mm
    \begin{picture}(0,0)
% Institutskopf
      \put( 1, 3){\parbox{15mm}{\UniStuttgartLogo{15mm}}}
      \put(20, 3){\large  Universit\"at Stuttgart}
      \put(98, 3){\parbox{15mm}
	{\epsffile{instlogo12sw.eps}}}

% Trennlinie, Lochermarke, Faltmarken
      \iftrennlinien \put( 0,-7){\rule{165mm}{0.5pt}} \fi
      \iflochermarke \put(-20,- 130.50){\line(1,0){4}} \fi
      \iffaltmarken \put(-15,- 75.16){\line(1,0){3}}
      \put(-15,-182.16){\line(1,0){3}} \fi

% Retouradresse im Adressfeld
      \put( -9, -23.00){\makebox(85,5)
	{\scriptsize \shortstack{ Institut A f\"ur Mechanik, Universit\"at Stuttgart\\
		Pfaffenwaldring 9, 70550 Stuttgart}}}

      \put(-1,-29.15){\parbox[t]{3in}{\ifx \postvermerk\empty \hfill \par
          \else \textbf{\postvermerk} \par \vspace{2mm} \fi \adresse}}
% Fenstermarken um Adressfeld
      \iffenstermarken
      \put(-9,-18.15){\line( 1, 0){1}} \put(-9,-18.15){\line( 0,-1){1}}
      \put(76,-18.15){\line(-1, 0){1}} \put(76,-18.15){\line( 0,-1){1}}
      \put(-9,-61.00){\line( 1, 0){1}} \put(-9,-61.00){\line( 0, 1){1}}
      \put(76,-61.00){\line(-1, 0){1}} \put(76,-61.00){\line( 0, 1){1}}
      \fi

% Absenderangaben
      \put(100,-37){\parbox{62mm}{\footnotesize
	\ifx \name\empty \else \name \\ \fi
	\ifx \strasse\empty \else \strasse \\ \fi
	\ifx \ort\empty \else \ort \\ \fi
          \begin{tabbing}
		\hspace*{15mm}\=\kill
        	\ifx \telefon\empty \else \telefontex \> \telefon \\ \fi 
		\ifx \telefax\empty \else \telefaxtext \> \telefax \\ \fi 
		\ifx \email\empty \else \emailtext \> \email \\ \fi 
          \end{tabbing}}}
    \end{picture}
    \hfill}
 
  \def\@evenhead{\@oddhead} 
  \def\@oddfoot{\empty} \def\@evenfoot{\@oddfoot}}

\def\ps@regularpage{
  \headheight36pt\def\@oddhead{\unitlength1mm
    \begin{picture}(0,0)
      \put(0,0){\makebox(165,15){\normalsize 
	\centerline{-- \mbox{\thepage} --}
          }}
      \iftrennlinien \put(0,0){\rule{165mm}{0.5pt}} \fi
    \end{picture}\hfill}
  \def\@evenhead{\@oddhead}
  \def\@oddfoot{\empty} \def\@evenfoot{\@oddfoot}}

\def\istsprache{german}
\ifx \sprache\istsprache
\IfFileExists{babel.sty}
{\RequirePackage[\sprache]{babel}[1995/07/11] }
{\IfFileExists{german.sty}
  {\RequirePackage{german}[1996/05/01]}
  {\ClassError{iambrief}
    {Neither babel nor german.sty installed !!!}
    {Get babel or german.sty !!!}}}
\else
\IfFileExists{babel.sty}
  {\RequirePackage[\sprache]{babel}[1995/07/11]}
  {\ClassError{iambrief}
    {Babel not installed !!!}
    {Get babel package !!!}}
\fi

\endinput
%% 
%% End of file `iambrief.cls'.
