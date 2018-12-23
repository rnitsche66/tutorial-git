%%
%% This 'iamfax.cls'
%% modified from 'g-brief.cls' by Michael Lenzen
%%
%% LaTeX classfile fuer Institutsfax mit LaTeX Version 2e
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
\def\filename{iamfax.cls}
\NeedsTeXFormat{LaTeX2e}[1996/06/01]

\ProvidesClass{iamfax}[\filedate\space v\fileversion\space iamfax class]

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
  \def\vontext{{\normalsize Von\/:}}
  \def\antext{{\normalsize An\/:}}
  \def\telefontex{{\normalsize Telefon\/:}}
  \def\telefaxtext{{\normalsize Telefax\/:}}
  \def\emailtext{{\normalsize E--Mail\/:}}
  \def\seitentext{\normalsize{Seiten\/:}}
  \def\datumtext{\normalsize{Datum\/:}}
  \def\datum{\number\day.~\ifcase\month\or Januar\or Februar\or
    M\"arz\or April\or Mai\or Juni\or Juli\or August\or September\or
    Oktober\or November\or Dezember\fi \space\number\year}}
\DeclareOption{english}{
  \def\sprache{english}
  \def\vontext{{\normalsize From\/:}}
  \def\antext{{\normalsize To\/:}}
  \def\telefontex{{\normalsize Phone\/:}}
  \def\telefaxtext{{\normalsize Fax\/:}}
  \def\emailtext{{\normalsize E--Mail\/:}}
  \def\seitentext{\normalsize{Pages\/:}}
  \def\datumtext{\normalsize{Date\/:}}}
\DeclareOption{american}{
  \def\sprache{american}
  \def\vontext{{\normalsize From\/:}}
  \def\antext{{\normalsize To\/:}}
  \def\telefontex{{\normalsize Phone\/:}}
  \def\telefaxtext{{\normalsize Fax\/:}}
  \def\emailtext{{\normalsize E--Mail\/:}}
  \def\seitentext{\normalsize{Pages\/:}}
  \def\datumtext{\normalsize{Date\/:}}}

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

\setlength\textheight{150mm}
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

\def\Datum#1{\def\datum{#1}} \def\datum{}
\def\Seiten#1{\def\seiten{#1}} \def\seiten{}

\def\Betreff#1{\def\betreff{#1}} \def\betreff{}

\def\Anrede#1{\def\anrede{#1}} \def\anrede{}
\def\Gruss#1#2{\def\gruss{#1} \def\grussskip{#2}}
    \def\gruss{} \def\grussskip{0pt}

\def\Unterschrift#1{\def\unterschrift{#1}} \def\unterschrift{}

\def\Anlagen#1{\def\anlagen{#1}} \def\anlagen{}
\def\Verteiler#1{\def\verteiler{#1}} \def\verteiler{}

\long\def\Einrueckung#1{\par\begin{tabular}{@{\hspace{1in}}p{5in}@{}}
    #1\end{tabular}\par}


\newif\iflochermarke\lochermarkefalse
\def\lochermarke{\lochermarketrue}

\newenvironment{iamfax}{
  \thispagestyle{firstpage}
  \setlength\unitlength{1mm}

  \c@page\@ne
  \interlinepenalty=200
  \clearpage

  \vspace{8mm}

  \ifcase\@ptsize\vspace{0.045pt}\or \vspace{-1.555pt}\or
  \vspace{-2.955pt} \fi

  \ifx \betreff\empty \else \textbf{\betreff} \mbox{}
  \par \vspace{-1\parskip} \vspace{8mm} \fi

  \ifcase\@ptsize\vspace{0.045pt}\or \vspace{-1.555pt}\or
  \vspace{-2.955pt} \fi

  \ifx \anrede\empty \else \anrede \par \fi\nobreak
  \addtolength\textheight{110mm}
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
  \headheight36pt\headsep110mm
  \def\@oddhead{
    \unitlength1mm
    \begin{picture}(0,0)

% Institutskopf
      \put( 1, 3){\parbox{15mm}{\UniStuttgartLogo{15mm}}}
      \put(20, 3){\large  Universit\"at Stuttgart}
      \put(108, 3){\parbox{15mm}
	{\epsffile{instlogo12sw.eps}}}

% Telefax
      \put( 0,-8){\rule{165mm}{0.5pt}}
      \put(50, -18.00){\makebox(55,10){\Huge TELEFAX}}
      \put( 0,-18.5){\rule{165mm}{0.5pt}}

% Absendersadresse
      \put(110,-35){\parbox{62mm}{\normalsize
	Institut A f\"ur Mechanik \\
	Universit\"at Stuttgart\\
	\strasse \\
	\ort \\
	\telefaxtext \telefax }}

      \put(0,-35){\parbox{62mm}{\normalsize
          \begin{tabbing}
		\hspace*{15mm}\=\kill
		\vontext \> \name \\[2ex]
        	\telefontex \> \telefon \\[2ex]
		\emailtext \> \email 
          \end{tabbing}}}
% Datum Seiten
      \put(  0,-53){\parbox{110mm}{\seitentext \quad \seiten}}
      \put(110,-53){\parbox{55mm}{\datumtext \quad \datum}}
      \put(  0,-58){\rule{165mm}{0.5pt}}

% Adresse
      \put( 0,-65){\antext}
      \put(15,-65){\parbox[t]{100mm}{\large \adresse}}
      \put( 0,-98){\rule{165mm}{0.5pt}}

% Lochermarke
      \iflochermarke \put(-20,- 130.50){\line(1,0){4}} \fi

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
    \end{picture}\hfill}
  \def\@evenhead{\@oddhead}
  \def\@oddfoot{\empty} \def\@evenfoot{\@oddfoot}}

\def\istsprache{german}
\ifx \sprache\istsprache
\IfFileExists{babel.sty}
{\RequirePackage[\sprache]{babel}[1995/07/11] }
{\IfFileExists{german.sty}
  {\RequirePackage{german}[1996/05/01]}
  {\ClassError{iamfax}
    {Neither babel nor german.sty installed !!!}
    {Get babel or german.sty !!!}}}
\else
\IfFileExists{babel.sty}
  {\RequirePackage[\sprache]{babel}[1995/07/11]}
  {\ClassError{iamfax}
    {Babel not installed !!!}
    {Get babel package !!!}}
\fi

\endinput
%% 
%% End of file `iamfax.cls'.
