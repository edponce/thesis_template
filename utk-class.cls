%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                                	%
%  UT.UT.UT.UT.UT            UT.UT.UT.UT.UT.U  UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT""	%
%  UT.UT.UT.UT.UT          ""UT.UT.UT.UT.UT.U  UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT  	%
%  UT.UT.UT.UT.UT      ""UT.UT.UT.UT.UT.UT.UT  UT.UT.UT.UT.UT.UT.UT.UT.UT.;;    	%
%  UT.UT.UT.UT.UT      UT.UT.UT.UT.UT.UT.UT.U  UT.UT.UT.UT.UT.UT.UT.UT.UT;;      	%
%  UT.UT.UT.UT.UT    "UT.UT.UT.UT.UT.UT.UT.UT  UT.UT.UT.UT.UT.UT.UT.UT.UT        	%
%  UT.UT.UT.UT.UT  UT.UT.UT.UT.UT.UT.UT.UT.UT  UT.UT.UT.UT.UT.UT.UT.UT.""          	%
%  UT.UT.UT.UT.UT  UT.UT.UT.UT.UT.UT.UT.UT.UT  UT.UT.UT.UT.UT.UT.UT.UT.            	%
%  UT.UT.UT.UT.UT  UT.UT.UT.UT.UT.UT.UT.UT.UT  UT.UT.UT.UT.UT.UT.UT.              	%
%  UT.UT.UT.UT.UT                UT.UT.UT.UT|  UT.UT.UT.UT.                      	%
%  UT.UT.UT.UT.UT                UT.UT.UT.UT|  UT.UT.UT.UT.                      	%
%  UT.UT.UT.UT.UT                UT.UT.UT.UT|  UT.UT.UT.UT.                      	%
%  UT.UT.UT.UT.UT                UT.UT.UT.UT|  UT.UT.UT.UT.                      	%
%  UT.UT.UT.UT.UT                UT.UT.UT.UT|  UT.UT.UT.UT.                      	%
%  UT.UT.UT.UT.UT                UT.UT.UT.UT|  UT.UT.UT.UT.                      	%
%  UT.UT.UT.UT.UT                UT.UT.UT.UT|  UT.UT.UT.UT.                      	%
%  UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT|  UT.UT.UT.UT.                      	%
%  UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT|  UT.UT.UT.UT.                      	%
%  UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.U    UT.UT.UT.UT.                      	%
%    UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.      UT.UT.UT.UT.                      	%
%      UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT        UT.UT.UT.UT.                      	%
%        UT.UT.UT.UT.UT.UT.UT.UT.UT.U          UT.UT.UT.UT.                      	%
%            UT.UT.UT.UT.UT.UT.UT.U            UT.UT.UT.UT.                      	%
%-----------------------------------------------------------------------------------%
%-----------------------------------------------------------------------------------%
%	      T H E S I S	  &   	D I S S E R T A T I O N    T E M P L A T E			%
%-----------------------------------------------------------------------------------%
%-----------------------------------------------------------------------------------%
% This template is distributed with ABSOLUTELY NO WARRANTY.
% It serves as a guideline and constitutes a basic structure for a
% thesis/dissertation. The user assumes full responsibility for formatting
% and typesetting their document and for verifying that all the thesis
% requirements set by the University of Tennessee are met. Please refer to the most
% recent UT thesis guide (http://web.utk.edu/~thesis/thesisresources.shtml)
% or contact the thesis consultant (http://web.utk.edu/~thesis/).
% Please report any bugs to the thesis consultant.
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{utk-class}
\def\filename{utk-class.cls}
\def\fileversion{version 3.0}
\def\filedate{December 15, 2017}
\def\contributors{Eduardo Ponce, Darrin Weber, and Tony Saad}

\typeout{UTK Thesis and Dissertation Template}
\typeout{\filename}
\typeout{\fileversion}
\typeout{\filedate}
\typeout{This LaTeX class is based on the template provided by David L. Page and updated by \contributors.}
%-----------------------------------------------------------------------------------%


%-----------------------------------------------------------------------------------%
%  DEFAULT DOCUMENT CLASS OPTIONS
%-----------------------------------------------------------------------------------%
% Document type
% Values: [thesis, dissertation]
\providecommand{\@defaultDoctype}{dissertation}

% Font size
% Values: [11pt, 12pt]
\providecommand{\@defaultFontSize}{12pt}

% Font family
% Values: [sans, roman, typewriter]
\providecommand{\@defaultFontFamily}{roman}

% Text line spacing
% Values: [singlespace, onehalfspace, doublespace]
\providecommand{\@defaultTextSpace}{onehalfspace}

% Text horizontal alignment
% Values: [lefttext, justifytext]
\providecommand{\@defaultTextAlign}{lefttext}

% Chapter and section title horizontal alignment
% (Sub)Subsections are always left-aligned
% Values: [lefttitle, centertitle]
\providecommand{\@defaultTitleAlign}{lefttitle}

% Page number horizontal alignment
% Values: [leftpagenum, centerpagenum, rightpagenum]
\providecommand{\@defaultPageNumAlign}{centerpagenum}

% Margin notes (on/off)
% Values: [noteson, notesoff]
\providecommand{\@defaultNotes}{noteson}
%-----------------------------------------------------------------------------------%


%-----------------------------------------------------------------------------------%
%  DOCUMENT CLASS CONFIGURATIONS
%-----------------------------------------------------------------------------------%
\DeclareOption{thesis}{\renewcommand{\@defaultDoctype}{thesis}}
\DeclareOption{dissertation}{\renewcommand{\@defaultDoctype}{dissertation}}

\DeclareOption{11pt}{\renewcommand{\@defaultFontSize}{11pt}}
\DeclareOption{12pt}{\renewcommand{\@defaultFontSize}{12pt}}

\DeclareOption{sans}{\renewcommand{\@defaultFontFamily}{sans}}
\DeclareOption{roman}{\renewcommand{\@defaultFontFamily}{roman}}
\DeclareOption{typewriter}{\renewcommand{\@defaultFontFamily}{typewriter}}

\DeclareOption{singlespace}{\renewcommand{\@defaultTextSpace}{singlespace}}
\DeclareOption{onehalfspace}{\renewcommand{\@defaultTextSpace}{onehalfspace}}
\DeclareOption{doublespace}{\renewcommand{\@defaultTextSpace}{doublespace}}

\DeclareOption{lefttext}{\renewcommand{\@defaultTextAlign}{lefttext}}
\DeclareOption{justifytext}{\renewcommand{\@defaultTextAlign}{justifytext}}

\DeclareOption{lefttitle}{\renewcommand{\@defaultTitleAlign}{lefttitle}}
\DeclareOption{centertitle}{\renewcommand{\@defaultTitleAlign}{centertitle}}

\DeclareOption{leftpagenum}{\renewcommand{\@defaultPageNumAlign}{leftpagenum}}
\DeclareOption{centerpagenum}{\renewcommand{\@defaultPageNumAlign}{centerpagenum}}
\DeclareOption{rightpagenum}{\renewcommand{\@defaultPageNumAlign}{rightpagenum}}

\DeclareOption{noteson}{\renewcommand{\@defaultNotes}{noteson}}
\DeclareOption{notesoff}{\renewcommand{\@defaultNotes}{notesoff}}

% Pass non-implemented options to base class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}

% Set default options
\ExecuteOptions{\@defaultFontFamily, \@defaultTextSpace}

% Process given options
\ProcessOptions*

% Load base class
\LoadClass[letterpaper, \@defaultFontSize]{report}
%-----------------------------------------------------------------------------------%


%-----------------------------------------------------------------------------------%
%  PACKAGES
%-----------------------------------------------------------------------------------%
\RequirePackage[T1]{fontenc}      % accented characters for output
\RequirePackage[utf8]{inputenc}   % accented characters for input
\RequirePackage[USenglish]{babel} % USA hyphenation patterns
\RequirePackage{geometry}         % page margins/layout
%\RequirePackage[showframe]{geometry} % (debug) page margins/layout
\RequirePackage{fancyhdr}         % headers/footers
\RequirePackage{marginnote}       % margin notes
\RequirePackage{setspace}         % text spacing
\RequirePackage{array}            % row and column types
\RequirePackage{multicol}         % multiple columns
\RequirePackage{multirow}         % multiple rows
\RequirePackage[hyphens]{url}     % url links
\RequirePackage{hyperref}         % hyperlinks
\RequirePackage[usenames, dvipsnames, table, svgnames]{xcolor} % colors
\RequirePackage{soul}             % text highlight
\RequirePackage{ifthen}           % conditional macros
\RequirePackage{ragged2e}         % text alignment
\RequirePackage{graphicx}         % graphics
\RequirePackage{natbib}           % references
%\RequirePackage[numbers]{natbib}  % references with numbering
\RequirePackage{titlesec}         % customize section displays
\RequirePackage[titles]{tocloft}  % customize LOF, LOT
\RequirePackage{parskip}          % paragraph formatting
\RequirePackage{amsmath}          % AMS math
\RequirePackage{amsthm}           % AMS theorem
\RequirePackage{amssymb}          % AMS symbols
\RequirePackage{amsfonts}         % AMS fonts
\RequirePackage{etoolbox}         % e-TeX programming facilities
\RequirePackage{algorithmicx}     % second algorithm environment
\RequirePackage{algpseudocode}    % layout for algorithm environment
\RequirePackage{booktabs}         % professional tables
\RequirePackage{caption}          % figure captions
\RequirePackage[flushleft]{threeparttable} % table formatting (caption, table, tablenotes)
\RequirePackage{listings}         % code listings
\RequirePackage{nomencl}          % create a nomenclature
\RequirePackage[countmax]{subfloat} % sub figure floats
\RequirePackage{subfig}           % sub figures
\RequirePackage{tikz}             % vector drawings
\RequirePackage{pgfplots}         % generate plots
%-----------------------------------------------------------------------------------%


%-----------------------------------------------------------------------------------%
%  GLOBAL AND PACKAGES CONFIGURATIONS
%-----------------------------------------------------------------------------------%
% Page margins/layout
% MS Word template:
% (top=1.0in, bottom=1.3in, left=1.25in, right=1.25in, header=0.5in, footer=1.0in)
\geometry{
    top=1in, bottom=1.25in, left=1.25in, right=1.25in,
    marginparwidth=1.05in, marginparsep=0.1in,
    heightrounded, headheight=0.25in, headsep=0.25in, footskip=0.75in
}

% Fancy headers/footers
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0in} % remove default rule in headers

% Footnotes numbering style
\renewcommand{\thefootnote}{\arabic{footnote}}
%\renewcommand{\thefootnote}{\roman{footnote}}

% Paragraph indentation
\setlength{\parindent}{0pt}
\newcommand{\tab}[1][3em]{\hspace*{#1}}

% Paragraph vertical space (do not use as it conflicts with explicit spacings)
%\setlength{\parskip}{\the\baselineskip}

% Document type
\ifthenelse{\equal{\@defaultDoctype}{thesis}}{\newcommand{\@defaultFCDoctype}{Thesis}}{%
\ifthenelse{\equal{\@defaultDoctype}{dissertation}}{\newcommand{\@defaultFCDoctype}{Dissertation}}{}}

% Font family
\ifthenelse{\equal{\@defaultFontFamily}{sans}}{\renewcommand{\familydefault}{\sfdefault}}{%
\ifthenelse{\equal{\@defaultFontFamily}{roman}}{\renewcommand{\familydefault}{\rmdefault}}{%
\ifthenelse{\equal{\@defaultFontFamily}{typewriter}}{\renewcommand{\familydefault}{\ttdefault}}{}}}

% Text line spacing
\ifthenelse{\equal{\@defaultTextSpace}{singlespace}}{\singlespacing}{%
\ifthenelse{\equal{\@defaultTextSpace}{onehalfspace}}{\onehalfspacing}{%
\ifthenelse{\equal{\@defaultTextSpace}{doublespace}}{\doublespacing}{}}}

% Text horizontal alignment
\ifthenelse{\equal{\@defaultTextAlign}{lefttext}}{\RaggedRight}{%
\ifthenelse{\equal{\@defaultTextAlign}{justifytext}}{\justifying}{}}

% Chapter and section title horizontal alignment
\ifthenelse{\equal{\@defaultTitleAlign}{lefttitle}}{\renewcommand{\@defaultTitleAlign}{\filright}}{%
\ifthenelse{\equal{\@defaultTitleAlign}{centertitle}}{\renewcommand{\@defaultTitleAlign}{\filcenter}}{}}

% Page number horizontal alignment
\ifthenelse{\equal{\@defaultPageNumAlign}{leftpagenum}}{\fancyfoot[L]{\thepage}}{%
\ifthenelse{\equal{\@defaultPageNumAlign}{centerpagenum}}{\fancyfoot[C]{\thepage}}{%
\ifthenelse{\equal{\@defaultPageNumAlign}{rightpagenum}}{\fancyfoot[R]{\thepage}}{}}}

% Margin notes font and (on/off)
\renewcommand{\marginfont}{\singlespacing\scriptsize}
\renewcommand{\raggedleftmarginnote}{}
\renewcommand{\raggedrightmarginnote}{\RaggedRight}
\ifthenelse{\equal{\@defaultNotes}{noteson}}{\newcommand{\note}[2][yellow]{\sethlcolor{#1}\hl{#2}}\newcommand{\mnote}[2][-\baselineskip]{\marginnote{#2}[#1]}}{%
\ifthenelse{\equal{\@defaultNotes}{notesoff}}{\newcommand{\note}[2][yellow]{}\newcommand{\mnote}[2][0em]{}}}

% Override LaTeX hyphenation
\tolerance=1000
\pretolerance=1000
\hbadness=10000
\emergencystretch=\maxdimen
\hyphenpenalty=10000    % reduce hyphenation
\clubpenalty=10000      % reduce orphan hyphens
\widowpenalty=10000     % reduce widow hyphens
\brokenpenalty=10000    % reduce hyphens across pages

% Hyperlinks setup
\hypersetup{
    pdftitle={\@title},       % PDF title option
    pdfauthor={\@author},     % PDF author option
    pdfsubject={\@defaultDoctype on \@title}, % PDF subject option
    pdfborder=0 0 0,          % PDF border options
    pdfnewwindow=true,        % open PDF links in new window
    pdfpagelayout=SinglePage, % open PDF in single page mode
    bookmarksnumbered=true, bookmarksopen=true, % PDF bookmarking options
    hypertexnames=false,      % extend link names parts and subparts
    plainpages=false,         % name page anchors by correct form of page number
    colorlinks=true,          % enable link colors
    allcolors=blue,           % set link colors
    breaklinks=false,         % allow multi-line links
    linktoc=all               % link entries of TOC/LOF/LOT
}
\urlstyle{same} % use same style as the text

% Custom column types, 'array' package
\newcolumntype{L}[1]{>{\raggedright\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{C}[1]{>{\centering\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{R}[1]{>{\raggedleft\arraybackslash\hspace{0pt}}m{#1}}

% Plotting and drawing settings, 'tikz' and 'pgfplots' packages
\usetikzlibrary{arrows,backgrounds,calc,decorations,er,folding,intersections,matrix,mindmap,patterns,positioning,shadows,shapes,trees}
\pgfplotsset{compat=1.13}
%-----------------------------------------------------------------------------------%


%-----------------------------------------------------------------------------------%
%  INTERNAL MACROS
%-----------------------------------------------------------------------------------%
% User-related macros
\providecommand{\@graduationYear}{}
\providecommand{\@graduationMonth}{}
\providecommand{\@majorProfessor}{}
\providecommand{\@dean}{}
\providecommand{\@major}{}
\providecommand{\@degree}{}
\providecommand{\@department}{}
\providecommand{\@university}{}
\providecommand{\@committeeMembers}{}
\newcommand{\graduationYear}[1]{\renewcommand{\@graduationYear}{#1}}
\newcommand{\graduationMonth}[1]{\renewcommand{\@graduationMonth}{#1}}
\newcommand{\majorProfessor}[1]{\renewcommand{\@majorProfessor}{#1}}
\newcommand{\dean}[1]{\renewcommand{\@dean}{#1}}
\newcommand{\major}[1]{\renewcommand{\@major}{#1}}
\newcommand{\degree}[1]{\renewcommand{\@degree}{#1}}
\newcommand{\college}[1]{\renewcommand{\@college}{#1}}
\newcommand{\department}[1]{\renewcommand{\@department}{#1}}
\newcommand{\university}[1]{\renewcommand{\@university}{#1}}
\newcommand{\committeeMembers}[1]{\renewcommand{\@committeeMembers}{#1}}

% Temporary length variable
\newlength{\@myTmpLen}
\setlength{\@myTmpLen}{0pt}
%-----------------------------------------------------------------------------------%


%-----------------------------------------------------------------------------------%
%  LEMMA, COROLLARY, THEOREM, AND DEFINITION CONFIGURATIONS
%-----------------------------------------------------------------------------------%
\theoremstyle{plain}
\newtheorem*{theorem*}{Theorem}
\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{corollary}{Corollary}[theorem]
\newtheorem{lemma}{Lemma}[theorem]
\newtheorem{proposition}{Proposition}[theorem]
\newtheorem{definition}{Definition}[theorem]
%-----------------------------------------------------------------------------------%


%-----------------------------------------------------------------------------------%
%  CHAPTER AND SECTION CONFIGURATIONS
%-----------------------------------------------------------------------------------%
% Set to upper-case reference macros that by default are in lower-case (see hyperref.sty)
\addto\HyLang@english{%
\renewcommand*{\chapterautorefname}{Chapter}
}

% chapter group - "Chapter #
%                   Title" (centered)
\titleformat{\chapter}[display]
    {\singlespacing\Large\bfseries\@defaultTitleAlign} % format for label and title
    {\MakeUppercase{\chaptertitlename\ \thechapter}} % label
    {0in} % vertical space (display) between label and title
    {\MakeUppercase} % pre-title commands
    {} % post-title commands
\titlespacing{\chapter}
    {0em} % left space
    {-0.6in} % before space
    {0.3in} % after space

% section group - "Title" (centered)
\titleformat{\section}[hang]
    {\singlespacing\large\bfseries\filright} % format for label and title
    {} % label
    {0em} % horizontal space between label and title
    {\thesection\ } % pre-title commands
    {} % post-title commands
\titlespacing{\section}
    {0em} % left space
    {0.1in} % before space
    {0in} % after space

% subsection group - "Title" (left-align, italic)
\titleformat{\subsection}[hang]
    {\singlespacing\normalsize\itshape\bfseries\filright} % format for label and title
    {} % label
    {0em} % horizontal space between label and title
    {\thesubsection\ } % pre-title commands
    {} % post-title commands
\titlespacing{\subsection}
    {0em} % left space
    {0.1in} % before space
    {0in} % after space

% subsubsection group - "Title" (left-align)
\titleformat{\subsubsection}[hang]
    {\singlespacing\normalsize\itshape\bfseries\filright} % format for label and title
    {} % label
    {0em} % horizontal space between label and title
    {\thesubsubsection\ } % pre-title commands
    {} % post-title commands
\titlespacing{\subsubsection}
    {0em} % left space
    {0.1in} % before space
    {0in} % after space
%-----------------------------------------------------------------------------------%


%-----------------------------------------------------------------------------------%
%  COMMITTEE APPROVAL PAGE (PRINT FORM)
%-----------------------------------------------------------------------------------%
\newcommand{\makeApprovalPage}{%
    \setlength{\@myTmpLen}{2.25in}
    \thispagestyle{empty}
    \begingroup\singlespacing\parindent\z@
        To the Graduate Council:\par
        \vspace*{\baselineskip}
        I am submitting herewith a \@defaultDoctype\ written by \@author\ entitled
        ``\@title.'' I have examined the final paper copy of this \@defaultDoctype\
        for form and content and recommend that it be accepted in partial fulfillment
        of the requirements for the degree of \@degree, with a major in \@major.\par
        \vspace*{2\baselineskip}
        \hspace*{2.5in}\parbox{3.5in}{%
            \underline{\hspace*{\@myTmpLen}}\\
            \@majorProfessor, Major Professor
        }\par
        \vspace*{\baselineskip}
        We have read this \@defaultDoctype\\
        and recommend its acceptance:\par
        \@for\@committeeMember:=\@committeeMembers\do{%
            \vspace*{1.5\baselineskip}
            \underline{\hspace*{\@myTmpLen}}\\
            \@committeeMember\par
        }
        \vspace*{\baselineskip}
        \hspace*{2.5in}\parbox{3.5in}{%
            Accepted for the Council:\par
            \vspace*{2\baselineskip}
            \underline{\hspace*{\@myTmpLen}}\\
            \@dean\\
            Vice Provost and Dean of the Graduate School
        }\par
    \endgroup
    \clearpage
}
%-----------------------------------------------------------------------------------%


%-----------------------------------------------------------------------------------%
%  COMMITTEE APPROVAL PAGE (ELECTRONIC FORM)
%-----------------------------------------------------------------------------------%
\newcommand{\makeApprovalPageE}{%
    \setlength{\@myTmpLen}{2.25in}
    \thispagestyle{empty}
    \begingroup\singlespacing\parindent\z@
        To the Graduate Council:\par
        \vspace*{\baselineskip}
        I am submitting herewith a \@defaultDoctype\ written by \@author\ entitled
        ``\@title.'' I have examined the final paper copy of this \@defaultDoctype\
        for form and content and recommend that it be accepted in partial fulfillment
        of the requirements for the degree of \@degree, with a major in \@major.\par
        \vspace*{2\baselineskip}
        \hspace*{2.5in}\parbox{3.5in}{%
            \underline{\hspace*{\@myTmpLen}}\\
            \vspace*{-\baselineskip}
            \@majorProfessor\\
            Major Professor
        }\par
        \vspace*{\baselineskip}
        We have read this \@defaultDoctype\\
        and recommend its acceptance:\par
        \@for\@committeeMember:=\@committeeMembers\do{%
            \vspace*{1.5\baselineskip}
            \underline{\hspace*{\@myTmpLen}}\\
            \vspace*{-\baselineskip}
            \@committeeMember
            \vspace*{\baselineskip}\par
        }
        \vspace*{\baselineskip}
        \hspace*{2.5in}\parbox{3.5in}{%
            Accepted for the Council:\par
            \vspace*{2\baselineskip}
            \underline{\hspace*{\@myTmpLen}}\\
            \vspace*{-\baselineskip}
            \@dean\\
            Vice Provost and Dean of the Graduate School
        }\par
        \Centering
        \vspace*{\fill}
        (Original signatures are on file with official student records.)\par
        \vspace*{\fill}
    \endgroup
    \clearpage
}
%-----------------------------------------------------------------------------------%


%-----------------------------------------------------------------------------------%
%  TITLE PAGE
%-----------------------------------------------------------------------------------%
\newcommand{\makeTitlePage}{%
    \thispagestyle{empty}
    \begingroup\singlespacing\Centering\Large
        \MakeUppercase{\textbf{\@title}}\par
        \vspace*{\fill}
        A \@defaultFCDoctype\ Presented for the\\ \@degree\\ Degree\\ \@university\par
        \vspace*{\fill}
        \@author\\ \@graduationMonth\ \@graduationYear\par
    \endgroup
    \clearpage
}
%-----------------------------------------------------------------------------------%


%-----------------------------------------------------------------------------------%
%  TABLE OF CONTENTS, LIST OF TABLES, LIST OF FIGURES
%-----------------------------------------------------------------------------------%
% Change titles to capital letters
% These commands are found in the 'babel' package
\addto\captionsUSenglish{%
\renewcommand{\contentsname}{\MakeUppercase{\Large\bfseries Table of Contents}}
\renewcommand{\listfigurename}{\MakeUppercase{\Large\bfseries List of Figures}}
\renewcommand{\listtablename}{\MakeUppercase{\Large\bfseries List of Tables}}
}

% Add 'Page' above page numbers
\addtocontents{toc}{~\hfill\textbf{Page}\par}
\addtocontents{lof}{~\hfill\textbf{Page}\par}
\addtocontents{lot}{~\hfill\textbf{Page}\par}

% Change depth of entries
%\setcounter{tocdepth}{3}
\setcounter{lofdepth}{1}
\setcounter{lotdepth}{1}

% Change font of entries
\renewcommand{\cftchapfont}{\scshape\bfseries}
\renewcommand{\cftsecfont}{}
\renewcommand{\cftfigfont}{}
\renewcommand{\cfttabfont}{}

% Figure 1.1  This is the caption of figure........10
\renewcommand{\cftfigpresnum}{\bfseries\figurename\ }
\renewcommand{\cftfigaftersnum}{}
\settowidth{\@myTmpLen}{\cftfigpresnum\cftfigaftersnum}
\addtolength{\cftfignumwidth}{\@myTmpLen}

% Table 1.1  This is the caption of table........10
\renewcommand{\cfttabpresnum}{\bfseries\tablename\ }
\renewcommand{\cfttabaftersnum}{}
\settowidth{\@myTmpLen}{\cfttabpresnum\cfttabaftersnum}
\addtolength{\cfttabnumwidth}{\@myTmpLen}
%----------------------------------------------------------------------------------------


%-----------------------------------------------------------------------------------%
%  MACROS TO SUPPORT ADDING MANUAL ENTRIES TO TABLE OF CONTENTS
%-----------------------------------------------------------------------------------%
% chapter without numbering
\newcommand{\addToTOC}[1]{%
    \phantomsection
    \addtocounter{chapter}{1}
    \addcontentsline{toc}{chapter}{#1}
}
% chapter with numbering
\newcommand{\addToTOCc}[1]{%
    \phantomsection
    \addtocounter{chapter}{1}
    \addcontentsline{toc}{chapter}{\protect\numberline{\thechapter}#1}
}
% section with numbering
\newcommand{\addToTOCs}[1]{%
    \phantomsection
    \addtocounter{section}{1}
    \addcontentsline{toc}{section}{\protect\numberline{\thesection}#1}
}
% subsection with numbering
\newcommand{\addToTOCss}[1]{%
    \phantomsection
    \addtocounter{subsection}{1}
    \addcontentsline{toc}{subsection}{\protect\numberline{\thesubsection}#1}
}
% subsubsection with numbering
\newcommand{\addToTOCsss}[1]{%
    \phantomsection
    \addtocounter{subsubsection}{1}
    \addcontentsline{toc}{subsubsection}{\protect\numberline{\thesubsubsection}#1}
}
%-----------------------------------------------------------------------------------%


%-----------------------------------------------------------------------------------%
%  COPYRIGHT PAGE
%-----------------------------------------------------------------------------------%
\newcommand{\makeCopyrightPage}{%
    \begingroup\singlespacing\Centering
        \vspace*{\fill}
        \vspace*{-0.5in}
        Copyright \copyright\ \@graduationYear\ by \@author\\
        All rights reserved.\par
        \vspace*{\fill}
    \endgroup
    \clearpage
}
%-----------------------------------------------------------------------------------%


%-----------------------------------------------------------------------------------%
%  LABEL-ONLY PAGE
%-----------------------------------------------------------------------------------%
\newcommand{\makeLabelOnlyPage}[1]{%
    \clearpage
    \phantomsection
    \addtocounter{chapter}{1}
    \addcontentsline{toc}{chapter}{#1}
    \begingroup\Centering
        \vspace*{\fill}
        \vspace*{-0.5in}
        \MakeUppercase{\Large \bfseries #1}\par
        \vspace*{\fill}
    \endgroup
    \clearpage
}
%-----------------------------------------------------------------------------------%


%-----------------------------------------------------------------------------------%
%  BIBLIOGRAPHY PAGE
%-----------------------------------------------------------------------------------%
\newcommand{\makeBibliography}[2][apalike]{%
    \renewcommand{\bibname}{\vspace*{-0.6in}} % remove bibliography title and shift text up
    \begingroup
        \bibliographystyle{#1} % bibliography style
        \bibliography{#2}
    \endgroup
}
%-----------------------------------------------------------------------------------%


\endinput % end UTK class

