\ProvidesClass{classFestoDocu}[2014/05/06 v 0.1 Eigene LaTeX Klasse zur Dokumentation]

\LoadClassWithOptions{scrreprt}

% Übersetzung spezifischer Befehle (z.B. "Inhaltsverzeichnis" statt "table of contents", "Kapitel" statt "chapter"), Silbentrennung, Sonderzeichen
\usepackage[ngerman]{babel}

% T1-Version der Computer-Modern-Schriftfamilie (CM): Umlaute
\usepackage[T1]{fontenc}

% Zeichencodierung (sollte für Windows und UNIX geeignet sein)
\usepackage[utf8]{inputenc}

% Kopf- /Fußzeile
\usepackage[automark]{scrpage2}

% Titel u. Subtitel
\newcommand{\Title}[1]{\renewcommand{\this@Title}{#1}}
\newcommand{\SubTitle}[1]{\renewcommand{\this@SubTitle}{#1}}


% BEGIN_FOLD personalisierte Inhalte
%%% ReNewCommans für personalisierte Inhalte %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\Author}[1]{\renewcommand{\this@Author}{#1}}
\newcommand{\CoAuthor}[1]{\renewcommand{\this@CoAuthor}{#1}}

\newcommand{\BusinessUnit}[1]{\renewcommand{\this@BusinessUnit}{#1}}
\newcommand{\Department}[1]{\renewcommand{\this@Department}{#1}}

\newcommand{\Address}[1]{\renewcommand{\this@Address}{#1}}
\newcommand{\ZIP}[1]{\renewcommand{\this@ZIP}{#1}}
\newcommand{\City}[1]{\renewcommand{\this@City}{#1}}
\newcommand{\Country}[1]{\renewcommand{\this@Country}{#1}}

\newcommand{\Phone}[1]{\renewcommand{\this@Phone}{#1}}
\newcommand{\PCFax}[1]{\renewcommand{\this@PCFax}{#1}}
\newcommand{\Email}[1]{\renewcommand{\this@Email}{#1}}
% END_FOLD

% BEGIN_FOLD Restriktionen für Angaben
%%% Restriktionen für  Angaben %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\this@required}[1]{\textcolor{red}{\textbf{The field '#1' is required}}}

\newcommand{\this@Title}{\this@required{Title}}
\let\this@SubTitle\@empty

\newcommand{\this@Author}{\this@required{Author}}
\newcommand{\this@CoAuthor}{\this@required{CoAuthor}}

\newcommand{\this@BusinessUnit}{\this@BusinessUnit{Business Unit}}
\newcommand{\this@Department}{\this@required{Department}}

\let\this@Address\@empty
\let\this@ZIP\@empty
\let\this@City\@empty
\let\this@Country\@empty

\let\this@Phone\@empty
\let\this@PCFax\@empty
\let\this@Email\@empty
% END_FOLD




% BEGIN_FOLD Titelblatt
%%% Titelblatt %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\myTitelblatt}{
	\begin{titlepage}
	
%	  \thispagestyle{empty} 
%	    \setlength{\baselineskip}{8mm}
%	    
%	    \centering
%	    \begin{minipage}{8cm}
%	    	\includegraphics[width=\linewidth]{./Bilder/festo_header}
%	    \end{minipage}
%	    
%	    \vfill

            \begin{center}
            	\includegraphics[width=8cm]{./Bilder/festo_header}
            \end{center}

        \vspace{2cm}
	    
	    \begin{flushleft}
	    	\huge \textsf{\this@Title}
	    \end{flushleft}
	    
	    \par
	    \hrule height 2pt
	    \par
	    
	    \begin{flushright}
	      	\large\textsf{\this@SubTitle}
	    \end{flushright}
	    
	    \vspace{\fill}
	    
	    \begin{flushright}
	    \textsf{
	    	\this@Author\\
	    	\this@CoAuthor\\
	      	Festo -- \this@BusinessUnit, Dept. \this@Department\\
	      	\vspace{1cm}
	      	\ifx\this@Address\@empty
	      		% do nothing
	      	\else
	      		\ifx\this@ZIP\@empty
	      			% do nothing
	      		\else
	      			\ifx\this@City\@empty
	      				% do nothing
	      			\else
	      				\ifx\this@Country\@empty
	      					% do nothing
	      				\else
	      					\this@Address\\
	      					\this@ZIP~\this@City, \this@Country\\
	      				\fi
	      			\fi
	      		\fi
	      	\fi
	      	\ifx\this@Phone\@empty
	      		% do nothing
	      	\else
	      		Tel.: \this@Phone\\
	      	\fi
	     	\ifx\this@PCFax\@empty
	      		% do nothing
	      	\else
	      		PC-Fax: \this@PCFax\\
	      	\fi
	      	\ifx\this@Email\@empty
	      		% do nothing
	      	\else
	      	E-Mail: \href{mailto:\this@Email}{\this@Email}\\[2ex]
	      	\fi
	      	\today
	      	}
	    \end{flushright}
	\end{titlepage}
}
% END_FOLD


% BEGIN_FOLD Inhaltsverzeichnis (toc)
%%% Inhaltsverzeichnis (toc) %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\myToc}{
	%******************************
	\newpage
	\hypersetup{pageanchor=true}
	\pagenumbering{Roman} %roemische Seitennummerierung fuer die Verzeichnisse
	 \addcontentsline{toc}{section}{Contents}
	
	\tableofcontents
	\newpage
	
	%%% Gegebenenfalls noch Abbildungs-, Abkürzungs- und Tabellenverzeichnis hinzufügen
	
	\pagenumbering{arabic} %arabische Seitennummerierung fuer den Inhalt
}
 % END_FOLD


% BEGIN_FOLD References
%%% References %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\myReferences}{
	%******************************
	\newpage
	
	% Setzen der Seitennummerierung auf Buchstaben
	\pagenumbering{Alph}
	
	% Einbinden der Bibliothek
	\bibliography{M:/ORG_Process_Automation/_prakt/fbwk/_LiteraturRT/BibTeX_database_PACtrlEng}
	\bibliographystyle{plain}
	
	% Fuegt Anhang ins Inhaltsverzeichnis ein. Achtung: Auf chapter/section achten!
	\addcontentsline{toc}{chapter}{References}
	
	\newpage
	
	% Zuruecksetzen der Seitennummerierung auf arabische Zahlen
	\pagenumbering{arabic}  
	%******************************

}


% END_FOLD

