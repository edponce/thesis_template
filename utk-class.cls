%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                             %
%     UT.UT.UT.UT          UT.UT.UT.UT.UT.UT  UT.UT.UT.UT.UT.UT.UT.UT.UT      %
%     UT.UT.UT.UT          UT.UT.UT.UT.UT.UT  UT.UT.UT.UT.UT.UT.UT.UT.U       %
%     UT.UT.UT.UT        T.UT.UT.UT.UT.UT.UT  UT.UT.UT.UT.UT.UT.UT.UT         %
%     UT.UT.UT.UT       UT.UT.UT.UT.UT.UT.UT  UT.UT.UT.UT.UT.UT.UT.T          %
%     UT.UT.UT.UT     T.UT.UT.UT.UT.UT.UT.UT  UT.UT.UT.UT.UT.UT.UT            %
%     UT.UT.UT.UT    UT.UT.UT.UT.UT.UT.UT.UT  UT.UT.UT.UT.UT.UT.U             %
%     UT.UT.UT.UT  T.UT.UT.UT.UT.UT.UT.UT.UT  UT.UT.UT.UT.UT.UT               %
%     UT.UT.UT.UT UT.UT.UT.UT.UT.UT.UT.UT.UT  UT.UT.UT.UT.UT.UT               %
%     UT.UT.UT.UT                UT.UT.UT.UT  UT.UT.UT.UT                     %
%     UT.UT.UT.UT                UT.UT.UT.UT  UT.UT.UT.UT                     %
%     UT.UT.UT.UT                UT.UT.UT.UT  UT.UT.UT.UT                     %
%     UT.UT.UT.UT                UT.UT.UT.UT  UT.UT.UT.UT                     %
%     UT.UT.UT.UT                UT.UT.UT.UT  UT.UT.UT.UT                     %
%     UT.UT.UT.UT                UT.UT.UT.UT  UT.UT.UT.UT                     %
%     UT.UT.UT.UT                UT.UT.UT.UT  UT.UT.UT.UT                     %
%     UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT  UT.UT.UT.UT                     %
%     UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT  UT.UT.UT.UT                     %
%     UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT  UT.UT.UT.UT                     %
%      UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT    UT.UT.UT.UT                     %
%       UT.UT.UT.UT.UT.UT.UT.UT.UT.UT.UT      UT.UT.UT.UT                     %
%        UT.UT.UT.UT.UT.UT.UT.UT.UT.UT        UT.UT.UT.UT                     %
%         UT.UT.UT.UT.UT.UT.UT.UT.UT          UT.UT.UT.UT                     %
%                                                                             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%-----------------------------------------------------------------------------%
%  THESIS & DISSERTATION TEMPLATE
%-----------------------------------------------------------------------------%
% This template is distributed with ABSOLUTELY NO WARRANTY.
% It serves as a guideline and constitutes a basic structure for a thesis or
% dissertation. The user assumes full responsibility for formatting and
% typesetting their document and for verifying that all the thesis requirements
% set by the University of Tennessee are met. Please refer to the most recent
% UTK thesis guide (https://gradschool.utk.edu/thesesdissertations/formatting)
% or contact the thesis consultant (https://gradschool.utk.edu/thesesdissertations).
% Please report any bugs to the thesis consultant.
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{utk-class}
\def\filename{utk-class.cls}
\def\fileversion{version 3.6}
\def\filedate{November 21, 2018}
\def\contributors{Eduardo Ponce, Darrin Weber, and Tony Saad}

\typeout{UTK Thesis and Dissertation Template}
\typeout{\filename}
\typeout{\fileversion}
\typeout{\filedate}
\typeout{This LaTeX class is based on the template provided by David L. Page
and updated by \contributors.}
%-----------------------------------------------------------------------------%


%-----------------------------------------------------------------------------%
%  DEFAULT DOCUMENT CLASS OPTIONS
%-----------------------------------------------------------------------------%
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

% Chapter title horizontal alignment
% ((sub)sub)sections are always left-aligned
% Values: [lefttitle, centertitle]
\providecommand{\@defaultTitleAlign}{lefttitle}

% Page number horizontal alignment
% Values: [centerpagenum, rightpagenum]
\providecommand{\@defaultPageNumAlign}{centerpagenum}

% Margin notes
% Values: [notes]
\providecommand{\@defaultNotes}{}
%-----------------------------------------------------------------------------%


%-----------------------------------------------------------------------------%
%  DOCUMENT CLASS CONFIGURATIONS
%-----------------------------------------------------------------------------%
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

\DeclareOption{centerpagenum}{\renewcommand{\@defaultPageNumAlign}{centerpagenum}}
\DeclareOption{rightpagenum}{\renewcommand{\@defaultPageNumAlign}{rightpagenum}}

\DeclareOption{notes}{\renewcommand{\@defaultNotes}{notes}}

% Pass non-implemented options to base class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}

% Set default options
\ExecuteOptions{\@defaultFontFamily,\@defaultTextSpace}

% Process given options
\ProcessOptions*

% Load base class
\LoadClass[letterpaper,\@defaultFontSize]{report}
%-----------------------------------------------------------------------------%


%-----------------------------------------------------------------------------%
%  PACKAGES
%-----------------------------------------------------------------------------%
\RequirePackage[T1]{fontenc}      % accented characters for output
\RequirePackage[utf8]{inputenc}   % accented characters for input
\RequirePackage[english]{babel}   % USA hyphenation patterns
\RequirePackage{geometry}         % page margins/layout
%\RequirePackage[showframe]{geometry} % (debug) page margins/layout
\RequirePackage{fancyhdr}         % headers/footers
\RequirePackage{setspace}         % text spacing
\RequirePackage{ragged2e}         % text alignment
\RequirePackage{soul}             % text highlight
\RequirePackage{parskip}          % paragraph formatting
\RequirePackage[hyphens]{url}     % url links
\RequirePackage{hyperref}         % hyperlinks
\RequirePackage{appendix}         % appendix environment
\RequirePackage{marginnote}       % margin notes
\RequirePackage[usenames,dvipsnames,table,svgnames]{xcolor} % colors
\RequirePackage{etoolbox}         % e-TeX programming facilities
\RequirePackage{graphicx}         % graphics
\RequirePackage{titlesec}         % customize section displays
\RequirePackage[titles]{tocloft}  % customize TOC, LOT, LOF
\RequirePackage{caption}          % figure and table captions
\RequirePackage{subcaption}       % subfigure and subtable captions
\RequirePackage{amsmath}          % AMS math
\RequirePackage{amsthm}           % AMS theorem
\RequirePackage{amssymb}          % AMS symbols
\RequirePackage{amsfonts}         % AMS fonts
\RequirePackage{siunitx}          % SI units
\RequirePackage{array}            % row and column types
\RequirePackage{multicol}         % multiple columns
\RequirePackage{multirow}         % multiple rows

% Extra Packages
\RequirePackage{cleveref}         % improved references
\RequirePackage{algorithmicx}     % second algorithm environment
\RequirePackage{algpseudocode}    % layout for algorithm environment
\RequirePackage{booktabs}         % professional tables
\RequirePackage{threeparttable}   % table formatting (caption, table, tablenotes)
\RequirePackage{listings}         % code listings
\RequirePackage{tikz}             % vector drawings
\RequirePackage{pgfplots}         % generate plots
%-----------------------------------------------------------------------------%


%-----------------------------------------------------------------------------%
%  GLOBAL AND PACKAGES CONFIGURATIONS
%-----------------------------------------------------------------------------%
% Page margins/layout
% MS Word template:
% (top=1.0in,bottom=1.3in,left=1.25in,right=1.25in,header=0.5in,footer=1.0in)
\geometry{
    top=1in,bottom=1.25in,left=1.25in,right=1.25in,
    marginparwidth=1.05in,marginparsep=0.1in,
    heightrounded,headheight=0.25in,headsep=0.25in,footskip=0.75in
}

% Fancy headers/footers
\pagestyle{fancyplain}
\renewcommand{\chaptermark}[1]{\markboth{\MakeUppercase{\chaptertitlename\ \thechapter\ \ #1}}{}}
\renewcommand{\sectionmark}[1]{\markright{\MakeUppercase{\thesection\ \ #1}}}
\fancyhead{}
\fancyfoot{} % overriden by class option
\renewcommand{\headrulewidth}{0in} % remove default rule in header
\renewcommand{\footrulewidth}{0in} % remove default rule in footer

% Footnotes numbering style
\renewcommand{\thefootnote}{\arabic{footnote}}

% Paragraph indentation
\setlength{\parindent}{0em}
\newcommand{\tab}[1][3em]{\hspace*{#1}}

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

% Chapter title horizontal alignment
\ifthenelse{\equal{\@defaultTitleAlign}{lefttitle}}{\renewcommand{\@defaultTitleAlign}{\filright}}{%
\ifthenelse{\equal{\@defaultTitleAlign}{centertitle}}{\renewcommand{\@defaultTitleAlign}{\filcenter}}{}}

% Page number horizontal alignment
\ifthenelse{\equal{\@defaultPageNumAlign}{centerpagenum}}{\fancyfoot[C]{\thepage}}{%
\ifthenelse{\equal{\@defaultPageNumAlign}{rightpagenum}}{\fancyfoot[R]{\thepage}}{}}

% Margin notes font and (on/off)
\renewcommand{\marginfont}{\singlespacing\scriptsize}
\renewcommand{\raggedleftmarginnote}{}
\renewcommand{\raggedrightmarginnote}{\RaggedRight}
\ifthenelse{\equal{\@defaultNotes}{notes}}{\newcommand{\note}[2][yellow]{\sethlcolor{#1}\hl{#2}}\newcommand{\mnote}[2][-\baselineskip]{\marginnote{#2}[#1]}}{%
\newcommand{\note}[2][yellow]{\unskip}\newcommand{\mnote}[2][0em]{\unskip}}

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
    bookmarksnumbered=true,bookmarksopen=true, % PDF bookmarking options
    hypertexnames=false,      % extend link names parts and subparts
    plainpages=false,         % name page anchors by correct form of page number
    colorlinks=true,          % enable link colors
    allcolors=blue,           % set link colors
    breaklinks=false,         % allow multi-line links
    linktoc=all               % link entries of TOC, LOF, LOT
}
\urlstyle{same} % use same style as the text

% Custom column types, 'array' package
\newcolumntype{L}[1]{>{\raggedright\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{C}[1]{>{\centering\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{R}[1]{>{\raggedleft\arraybackslash\hspace{0pt}}m{#1}}

% Plotting and drawing settings, 'tikz' and 'pgfplots' packages
\usetikzlibrary{arrows,backgrounds,calc,decorations,er,folding,intersections,matrix,mindmap,patterns,positioning,shadows,shapes,trees}
\pgfplotsset{compat=1.13}

% Set custom names for \autoref macros (defaults are in hyperref.sty)
\addto\HyLang@english{%
    \renewcommand{\equationautorefname}{equation}
    \renewcommand{\footnoteautorefname}{footnote}
    \renewcommand{\itemautorefname}{item}
    \renewcommand{\figureautorefname}{Figure}
    \renewcommand{\tableautorefname}{Table}
    \renewcommand{\partautorefname}{Part}
    \renewcommand{\appendixautorefname}{Appendix}
    \renewcommand{\chapterautorefname}{Chapter}
    \renewcommand{\sectionautorefname}{section}
    \renewcommand{\subsectionautorefname}{subsection}
    \renewcommand{\subsubsectionautorefname}{subsubsection}
    \renewcommand{\paragraphautorefname}{paragraph}
    \renewcommand{\subparagraphautorefname}{subparagraph}
    \renewcommand{\FancyVerbLineautorefname}{line}
    \renewcommand{\theoremautorefname}{Theorem}
    \renewcommand{\pageautorefname}{page}
}
\addto\captionsenglish{%
    \renewcommand{\equationautorefname}{equation}
    \renewcommand{\footnoteautorefname}{footnote}
    \renewcommand{\itemautorefname}{item}
    \renewcommand{\figureautorefname}{Figure}
    \renewcommand{\tableautorefname}{Table}
    \renewcommand{\partautorefname}{Part}
    \renewcommand{\appendixautorefname}{Appendix}
    \renewcommand{\chapterautorefname}{Chapter}
    \renewcommand{\sectionautorefname}{section}
    \renewcommand{\subsectionautorefname}{subsection}
    \renewcommand{\subsubsectionautorefname}{subsubsection}
    \renewcommand{\paragraphautorefname}{paragraph}
    \renewcommand{\subparagraphautorefname}{subparagraph}
    \renewcommand{\FancyVerbLineautorefname}{line}
    \renewcommand{\theoremautorefname}{Theorem}
    \renewcommand{\pageautorefname}{page}
}
%-----------------------------------------------------------------------------%


%-----------------------------------------------------------------------------%
%  INTERNAL MACROS
%-----------------------------------------------------------------------------%
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
%-----------------------------------------------------------------------------%


%-----------------------------------------------------------------------------%
%  LEMMA, COROLLARY, THEOREM, AND DEFINITION CONFIGURATIONS
%-----------------------------------------------------------------------------%
\theoremstyle{plain}
\newtheorem*{theorem*}{Theorem}
\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{corollary}{Corollary}[theorem]
\newtheorem{lemma}{Lemma}[theorem]
\newtheorem{proposition}{Proposition}[theorem]
\newtheorem{definition}{Definition}[theorem]
%-----------------------------------------------------------------------------%


%-----------------------------------------------------------------------------%
%  CHAPTER AND SECTION CONFIGURATIONS
%-----------------------------------------------------------------------------%
% chapter group - "Chapter #
%                   Title"
\titleformat{\chapter}[display]
    {\singlespacing\Large\bfseries\@defaultTitleAlign} % format for label and title
    {\MakeUppercase{\chaptertitlename\ \thechapter\ }} % label
    {0in} % vertical space (display) between label and title
    {\MakeUppercase} % pre-title commands
    [] % post-title commands
\titlespacing{\chapter}
    {0em} % left space
    %{-0.6in} % before space
    {0in} % before space
    {0.3in} % after space

% section group - "Title"
\titleformat{\section}[hang]
    {\singlespacing\large\bfseries\filright} % format for label and title
    {} % label
    {0em} % horizontal space between label and title
    {\thesection\ } % pre-title commands
    [] % post-title commands
\titlespacing{\section}
    {0em} % left space
    {0.1in} % before space
    {0in} % after space

% subsection group - "Title"
\titleformat{\subsection}[hang]
    {\singlespacing\normalsize\bfseries\filright} % format for label and title
    {} % label
    {0em} % horizontal space between label and title
    {\thesubsection\ } % pre-title commands
    [] % post-title commands
\titlespacing{\subsection}
    {0em} % left space
    {0.1in} % before space
    {0in} % after space

% subsubsection group - "Title"
\titleformat{\subsubsection}[hang]
    {\singlespacing\normalsize\bfseries\filright} % format for label and title
    {} % label
    {0em} % horizontal space between label and title
    {\thesubsubsection\ } % pre-title commands
    [] % post-title commands
\titlespacing{\subsubsection}
    {0em} % left space
    {0.1in} % before space
    {0in} % after space
%-----------------------------------------------------------------------------%


%-----------------------------------------------------------------------------%
%  COMMITTEE APPROVAL PAGE (PRINT FORM)
%-----------------------------------------------------------------------------%
\newcommand{\makeApprovalPage}{%
    \clearpage
    \thispagestyle{empty}
    \begingroup
        \parindent\z@
        To the Graduate Council:\par
        \vspace*{\baselineskip}
        I am submitting herewith a \@defaultDoctype\ written by \@author\ entitled
        ``\@title.'' I have examined the final paper copy of this \@defaultDoctype\
        for form and content and recommend that it be accepted in partial fulfillment
        of the requirements for the degree of \@degree, with a major in \@major.\par
        \vspace*{2\baselineskip}
        \hspace*{2.5in}\parbox{3.5in}{%
            \underline{\hspace*{2.25in}}\\
            \@majorProfessor, Major Professor
        }\par
        \vspace*{\baselineskip}
        We have read this \@defaultDoctype\\
        and recommend its acceptance:\par
        \@for\@committeeMember:=\@committeeMembers\do{%
            \vspace*{1.5\baselineskip}
            \underline{\hspace*{2.25in}}\\
            \@committeeMember\par
        }
        \vspace*{\baselineskip}
        \hspace*{2.5in}\parbox{3.5in}{%
            Accepted for the Council:\par
            \vspace*{2\baselineskip}
            \underline{\hspace*{2.25in}}\\
            \@dean\\
            Vice Provost and Dean of the Graduate School
        }\par
    \endgroup
    \clearpage
}
%-----------------------------------------------------------------------------%


%-----------------------------------------------------------------------------%
%  COMMITTEE APPROVAL PAGE (ELECTRONIC FORM)
%-----------------------------------------------------------------------------%
\newcommand{\makeApprovalPageE}{%
    \clearpage
    \thispagestyle{empty}
    \begingroup
        \parindent\z@
        To the Graduate Council:\par
        \vspace*{\baselineskip}
        I am submitting herewith a \@defaultDoctype\ written by \@author\ entitled
        ``\@title.'' I have examined the final paper copy of this \@defaultDoctype\
        for form and content and recommend that it be accepted in partial fulfillment
        of the requirements for the degree of \@degree, with a major in \@major.\par
        \vspace*{2\baselineskip}
        \hspace*{2.5in}\parbox{3.5in}{%
            \underline{\hspace*{2.25in}}\\
            \vspace*{-\baselineskip}
            \@majorProfessor\\
            Major Professor
        }\par
        \vspace*{\baselineskip}
        We have read this \@defaultDoctype\\
        and recommend its acceptance:\par
        \@for\@committeeMember:=\@committeeMembers\do{%
            \vspace*{1.5\baselineskip}
            \underline{\hspace*{2.25in}}\\
            \vspace*{-\baselineskip}
            \@committeeMember
            \vspace*{\baselineskip}\par
        }
        \vspace*{\baselineskip}
        \hspace*{2.5in}\parbox{3.5in}{%
            Accepted for the Council:\par
            \vspace*{2\baselineskip}
            \underline{\hspace*{2.25in}}\\
            \vspace*{-\baselineskip}
            \@dean\\
            Vice Provost and Dean of the Graduate School
        }\par
        \Centering
        \vspace*{\fill}
        \vspace*{-0.25in}
        (Original signatures are on file with official student records.)\par
        \vspace*{\fill}
    \endgroup
    \clearpage
}
%-----------------------------------------------------------------------------%


%-----------------------------------------------------------------------------%
%  TITLE PAGE
%-----------------------------------------------------------------------------%
\newcommand{\makeTitlePage}{%
    \clearpage
    \thispagestyle{empty}
    \begingroup
        \Centering\Large
        \vspace*{0in}
        \MakeUppercase{\textbf{\@title}}\par
        \vspace*{\fill}
        A \@defaultFCDoctype\ Presented for the\\ \@degree\\ Degree\\ \@university\par
        \vspace*{\fill}
        \@author\\ \@graduationMonth\ \@graduationYear\par
    \endgroup
}
%-----------------------------------------------------------------------------%


%-----------------------------------------------------------------------------%
%  TABLE OF CONTENTS, LIST OF TABLES, LIST OF FIGURES
%-----------------------------------------------------------------------------%
% Change labels to capital letters
% These commands are found in the 'babel' package
\addto\captionsenglish{%
    \renewcommand{\contentsname}{\MakeUppercase{\Large\bfseries Table of Contents}}
    \renewcommand{\listtablename}{\MakeUppercase{\Large\bfseries List of Tables}\vspace{0.5em}}
    \renewcommand{\listfigurename}{\MakeUppercase{\Large\bfseries List of Figures}\vspace{0.5em}}
}

% Remove additional vertical space for entries from different chapters LOT and LOF
\newcommand*{\noaddvspace}{\renewcommand*{\addvspace}[1]{}}
\addtocontents{lot}{\protect\noaddvspace}
\addtocontents{lof}{\protect\noaddvspace}

% Depth of entries
\setcounter{tocdepth}{2}
\setcounter{lotdepth}{1}
\setcounter{lofdepth}{1}

% Font of entries
\renewcommand{\cftchapfont}{\large\scshape\bfseries}
\renewcommand{\cftsecfont}{}
\renewcommand{\cftsubsecfont}{}
\renewcommand{\cftsubsubsecfont}{}
\renewcommand{\cfttabfont}{}
\renewcommand{\cftfigfont}{}

% Symbol from label to page number in TOC, LOT, LOF
\renewcommand{\cftdot}{.}
\renewcommand{\cftdotsep}{1}
\renewcommand{\cftchapdotsep}{2}

% Chapter 1: Introduction ........ 1
\newlength{\@chapLabelLen}
\setlength{\@chapLabelLen}{0pt}
\renewcommand{\cftchapleader}{\hfill} % remove separator symbol for chapters
\renewcommand{\cftchappresnum}{\scshape\bfseries\chaptername\ } % Chapter 1: Introduction
\renewcommand{\cftchapaftersnum}{:}
%\renewcommand{\cftchappresnum}{} % 1 Introduction
%\renewcommand{\cftchapaftersnum}{}
\settowidth{\@chapLabelLen}{\cftchappresnum\cftchapaftersnum}
\addtolength{\cftchapnumwidth}{\@chapLabelLen}

% Table 1-1. This is the caption of table ........  1
\newlength{\@tabLabelLen}
\setlength{\@tabLabelLen}{0pt}
\renewcommand{\cfttabpresnum}{\bfseries\tablename\ }
\renewcommand{\cfttabaftersnum}{.}
\settowidth{\@tabLabelLen}{\cfttabpresnum\cfttabaftersnum}
\addtolength{\cfttabnumwidth}{\@tabLabelLen}

% Figure 1-1. This is the caption of figure ........  1
\newlength{\@figLabelLen}
\setlength{\@figLabelLen}{0pt}
\renewcommand{\cftfigpresnum}{\bfseries\figurename\ }
\renewcommand{\cftfigaftersnum}{.}
\settowidth{\@figLabelLen}{\cftfigpresnum\cftfigaftersnum}
\addtolength{\cftfignumwidth}{\@figLabelLen}

% Caption font and style setup
% (table/figure)within = {none,chapter,section}
% labelformat = {empty,simple,parens)
% labelsep = {none,colon,period,endash,space,quad,newline}
% (label/text)font = {bf,it}
% justification = {RaggedRight,Centering}
% singlelinecheck = {on,off} if 'on', then single line caption will always be centered
\captionsetup[table]{%
%    tablewithin=none, % allow continuous numbering across chapters
    labelformat=simple,labelsep=period,
    labelfont=bf,textfont=normal,
    singlelinecheck=off,justification=Centering
}
\captionsetup[figure]{%
%    figurewithin=none, % allow continuous numbering across chapters
    labelformat=simple,labelsep=period,
    labelfont=bf,textfont=normal,
    singlelinecheck=off,justification=Centering
}
\captionsetup[subtable]{%
    labelformat=parens,labelsep=none,
    labelfont=normalfont,textfont=normal,
    singlelinecheck=off,justification=Centering
}
\captionsetup[subfigure]{%
    labelformat=parens,labelsep=none,
    labelfont=normalfont,textfont=normal,
    singlelinecheck=off,justification=Centering
}

% Table and Figure (sub)captions numbering
% arabic = 1,2
% alph = a,b
% Alph = A,B
% roman = i,ii
% Roman = I,II
\renewcommand{\thetable}{\thechapter-\arabic{table}} % requires chapters
\renewcommand{\thefigure}{\thechapter-\arabic{figure}} % requires chapters
\renewcommand{\thesubtable}{\alph{subtable}}
\renewcommand{\thesubfigure}{\alph{subfigure}}
%\renewcommand{\thesubtable}{(\alph{subtable})} % for text references use manual parenthesis and labelformat=simple, instead of using labelformat=parens from captionsetup
%\renewcommand{\thesubfigure}{(\alph{subfigure})} % for text references use manual parenthesis and labelformat=simple, instead of using labelformat=parens from captionsetup
%-----------------------------------------------------------------------------%


%-----------------------------------------------------------------------------%
%  MACROS TO SUPPORT ADDING MANUAL ENTRIES TO TABLE OF CONTENTS
%-----------------------------------------------------------------------------%
% chapter or ((sub)sub)section without number
\newcommand{\addToTOC}[2][chapter]{%
    \ifthenelse{\equal{#1}{chapter}}{\clearpage}{}
    \phantomsection
    \addtocounter{#1}{0}
    \addcontentsline{toc}{#1}{#2}
}

% chapter or ((sub)sub)section with number
\newcommand{\addToTOCn}[2][chapter]{%
    \ifthenelse{\equal{#1}{chapter}}{\clearpage}{}
    \phantomsection
    \addtocounter{#1}{1}
    \addcontentsline{toc}{#1}{\protect\numberline\expandafter\csname the#1\endcsname #2}
}
%-----------------------------------------------------------------------------%


%-----------------------------------------------------------------------------%
%  COPYRIGHT PAGE
%-----------------------------------------------------------------------------%
\newcommand{\makeCopyrightPage}{%
    \clearpage
    \begingroup
        \Centering
        \vspace*{\fill}
        \vspace*{-0.5in}
        Copyright \copyright\ \@graduationYear\ by \@author\\
        All rights reserved.\par
        \vspace*{\fill}
    \endgroup
    \clearpage
}
%-----------------------------------------------------------------------------%


%-----------------------------------------------------------------------------%
%  LABEL-ONLY PAGE
%-----------------------------------------------------------------------------%
\newcommand{\makeLabelOnlyPage}[1]{%
    \clearpage
    \addToTOC{#1}
    \thispagestyle{plain}
    \begingroup
        \Centering
        \vspace*{\fill}
        \vspace*{-0.5in}
        \MakeUppercase{\Large\bfseries #1}\par
        \vspace*{\fill}
    \endgroup
    \clearpage
}
%-----------------------------------------------------------------------------%


%-----------------------------------------------------------------------------%
%  BIBLIOGRAPHY PAGE
%-----------------------------------------------------------------------------%
\newcommand{\makeBibliography}[1]{%
    \makeLabelOnlyPage{#1}
    \renewcommand{\bibname}{\vspace*{-4\baselineskip}} % remove bibliography title and shift text up
}
%-----------------------------------------------------------------------------%


%-----------------------------------------------------------------------------%
%  APPENDIX PAGE AND SETTINGS
%-----------------------------------------------------------------------------%
\newcommand{\initializeAppendix}[2][1]{%
    \newcounter{theprevchapter}
    \setcounter{theprevchapter}{\thechapter} % save previous chapter number
    \edef\prevchaptertitlename{\chaptertitlename} % save chapter title name
    \edef\prevchapapp{\@chapapp} % save chapter header name
    \edef\prevHychapapp{\Hy@chapapp} % save chapter cross-reference name
    \edef\prevHychapterstring{\Hy@chapterstring} % save chapter name
    \appendix % environment and cross-references, changes settings so need to restore
    \makeLabelOnlyPage{#2}
    \addtocontents{toc}{\protect\setcounter{tocdepth}{#1}}
    \addtocontents{toc}{%
        \begingroup
        \let\protect\l@chapter\protect\l@section
        \let\protect\l@section\protect\l@subsection
        \let\protect\l@subsection\protect\l@subsubsection
    }
}

% restore chapter settings prior to appendix environment
\newcommand{\finalizeAppendix}{%
    \addtocontents{toc}{%
        \endgroup
    }
    \setcounter{chapter}{\value{theprevchapter}} % restore chapter numbering
    \renewcommand{\thechapter}{\arabic{chapter}} % restore chapter numbering format
    \edef\chaptertitlename{\prevchaptertitlename} % restore chapter title name
    \edef\@chapapp{\prevchapapp} % restore chapter header name
    \edef\Hy@chapapp{\prevHychapapp} % restore chapter cross-reference name
    \edef\Hy@chapterstring{\prevHychapterstring} % restore chapter name
}
%-----------------------------------------------------------------------------%


\endinput % end UTK class
