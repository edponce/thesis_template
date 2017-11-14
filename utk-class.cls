%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% UTK Thesis/Dissertation Template
% by Eduardo Ponce
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% Initialize class
\NeedsTeXFormat{LaTeX2e}
\newcommand{\@utkClass}{utk-class}
\ProvidesClass{\@utkClass}[11/14/2017 UTK thesis template]


%----------------------------------------------------------------------------------------
%  DEFAULT CLASS OPTIONS
%----------------------------------------------------------------------------------------
% Document type
% Values: [thesis, dissertation]
\providecommand{\@defaultDoctype}{dissertation}
\providecommand{\@defaultFCDoctype}{Dissertation}

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
% (Sub)Subsection are always left-aligned
% Values: [leftsection, centersection]
\providecommand{\@defaultSectionAlign}{centersection}
%----------------------------------------------------------------------------------------


%----------------------------------------------------------------------------------------
%  CLASS OPTIONS CONFIGURATION
%----------------------------------------------------------------------------------------
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

\DeclareOption{leftsection}{\renewcommand{\@defaultSectionAlign}{leftsection}}
\DeclareOption{centersection}{\renewcommand{\@defaultSectionAlign}{centersection}}

% Pass non-implemented options to base class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}

% Set default options
\ExecuteOptions{\@defaultFontFamily, \@defaultTextSpace}

% Process given options
\ProcessOptions*

% Load base class
\LoadClass[letterpaper, \@defaultFontSize]{report}
%----------------------------------------------------------------------------------------


%----------------------------------------------------------------------------------------
%  LOAD PACKAGES
%----------------------------------------------------------------------------------------
% Mandatory packages
\RequirePackage[T1]{fontenc}        % accented characters for output
\RequirePackage[utf8]{inputenc}     % accented characters for input
\RequirePackage[USenglish]{babel}   % USA hyphenation patterns
\RequirePackage[]{geometry}         % page margins/layout
\RequirePackage[]{setspace}         % text spacing
\RequirePackage[]{multicol}         % multiple columns
\RequirePackage[]{multirow}         % multiple rows
\RequirePackage[]{hyperref}         % hyperlinks
\RequirePackage[]{color}            % colors
\RequirePackage[]{ifthen}           % conditional macros
\RequirePackage[]{ragged2e}         % text alignment
\RequirePackage[]{graphicx}         % graphics
\RequirePackage[]{natbib}           % link references
\RequirePackage[]{titlesec}         % customize section displays
\RequirePackage[titles]{tocloft}    % customize LOF, LOT
\RequirePackage[]{amsmath}          % AMS math
\RequirePackage[]{amsthm}           % AMS theorem
\RequirePackage[]{amssymb}          % AMS fonts

% Supplemental packages
\RequirePackage[]{fancyhdr}         % headers/footers
\RequirePackage[]{booktabs}         % professional tables
\RequirePackage[]{caption}          % figure captions
\RequirePackage[]{nomencl}          % create a nomenclature
\RequirePackage[]{subfloat}         % sub figure floats
\RequirePackage[]{subfig}           % sub figures
\RequirePackage[]{parskip}

% Debug packages
%\RequirePackage[frame]{geometry}    % page margins/layout
%\RequirePackage{layout}             % show page measurements
%----------------------------------------------------------------------------------------


%----------------------------------------------------------------------------------------
%  INTERNAL MACROS
%----------------------------------------------------------------------------------------
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
%----------------------------------------------------------------------------------------


%----------------------------------------------------------------------------------------
%  CONFIGURE GLOBAL SETTINGS
%----------------------------------------------------------------------------------------
% Page margins/layout
% Match MS Word template:
% (top=1.0in, bottom=1.3in, left=1.25in, right=1.25in, header=0.5in, footer=1.0in)
\geometry{
    top=1.0in, bottom=1.53125in, left=1.25in, right=1.25in,
    headheight=16pt, headsep=0.28in, footskip=0.3125in
}

% Paths where figures are located
\graphicspath{{figures/}}
%\DeclareGraphicsExtensions{.png, .pdf, .jpg}

% Paragraph indentation
%\setlength{\parindent}{0.5in}
\setlength{\parindent}{0pt}

% Paragraph vertical space
%\setlength{\parskip}{\baselineskip}

% Bibliography style
\bibliographystyle{apalike}

% Document type
\ifthenelse{\equal{\@defaultDoctype}{thesis}}{\renewcommand{\@defaultFCDoctype}{Thesis}}{%
\ifthenelse{\equal{\@defaultDoctype}{dissertation}}{\renewcommand{\@defaultFCDoctype}{Dissertation}}{}}

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
\ifthenelse{\equal{\@defaultTextAlign}{justifytext}}{}{}}

% Chapter and section title horizontal alignment
\ifthenelse{\equal{\@defaultSectionAlign}{leftsection}}{\renewcommand{\@defaultSectionAlign}{\filright}}{%
\ifthenelse{\equal{\@defaultSectionAlign}{centersection}}{\renewcommand{\@defaultSectionAlign}{\filcenter}}{}}

% Override LaTeX hyphenation
\tolerance=1000
\pretolerance=1000
\hbadness=10000
\emergencystretch=\maxdimen
\hyphenpenalty=10000    % reduce hyphenation
\clubpenalty=10000      % reduce orphan hyphens
\widowpenalty=10000     % reduce widow hyphens
\brokenpenalty=10000    % reduce hyphens across pages

% Fancy headers/footers
%\pagestyle{fancy}
\renewcommand{\headrulewidth}{0pt} % remove default rule in header

% Cool footnotes
\renewcommand{\thefootnote}{\arabic{footnote}}

% Hyperlinks setup
\hypersetup{
    pdftitle={\@title},     % PDF title option
    pdfauthor={\@author},   % PDF author option
    pdfsubject={\@defaultDoctype on \@title},
    %pdfborder=0 0 0,        % so that PDF looks good when printed
    bookmarksnumbered=true, bookmarksopen=false, % PDF bookmarking options
    hypertexnames=false,    % use unique values for page anchors, \hyperpage is affected and might not work properly. Used to suppress warning due to multi-font page numbering.
    plainpages=false,       % name page anchors by arabic form of page number
    colorlinks=true,        % enable link colors
    allcolors=blue, citecolor=magenta,
    breaklinks=false        % allow multi-line links
}
\urlstyle{same} % use same style as class for URL links
%----------------------------------------------------------------------------------------


%----------------------------------------------------------------------------------------
% Define lemma, corollary, and theorem environments
%----------------------------------------------------------------------------------------
\theoremstyle{plain}
\newtheorem*{theorem*}{Theorem}
\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{corollary}{Corollary}[theorem]
\newtheorem{lemma}{Lemma}[theorem]
\newtheorem{proposition}{Proposition}[theorem]
\newtheorem{definition}{Definition}[theorem]
%----------------------------------------------------------------------------------------


%----------------------------------------------------------------------------------------
% Customize chapter and sections groups
%----------------------------------------------------------------------------------------
% Set to upper-case reference macros that by default are in lower-case (see hyperref.sty)
%\addto\HyLang@english{%
%\renewcommand*{\chapterautorefname}{Chapter}
%}

% chapter group - "Chapter #
%                   Title" (centered)
\titleformat{\chapter}[display] % shape
    {\Large \bfseries \@defaultSectionAlign} % format for label and title
    {\MakeUppercase{\chaptertitlename\ \thechapter}} % label
    {0pt} % vertical space (display) between label and title
    {\uppercase} % pre-title -commands
    {} % post-title commands
\titlespacing{\chapter} % shape
    {0pt} % left space
    {-1.5\baselineskip} % before space
    {2.0\baselineskip} % after space

% section group - "Title" (centered)
\titleformat{\section}[hang] % shape
    {\large \bfseries \@defaultSectionAlign} % format for label and title
    {} % label
    {0pt} % horizontal space between label and title
    {\thesection\ } % pre-title -commands
    {} % post-title commands
\titlespacing{\section} % shape
    {0pt} % left space
    {1.5\baselineskip} % before space
    {1.0\baselineskip} % after space

% subsection group - "Title" (left-align, italic)
\titleformat{\subsection}[hang] % shape
    {\normalsize \it \bfseries \filright} % format for label and title
    {} % label
    {0pt} % horizontal space between label and title
    {\thesubsection\ } % pre-title -commands
    {} % post-title commands
\titlespacing{\subsection} % shape
    {0pt} % left space
    {1.5\baselineskip} % before space
    {0.25\baselineskip} % after space

% subsubsection group - "Title" (left-align)
\titleformat{\subsubsection}[hang] % shape
    {\normalsize \bfseries \filright} % format for label and title
    {} % label
    {0pt} % horizontal space between label and title
    {\thesubsubsection\ } % pre-title -commands
    {} % post-title commands
\titlespacing{\subsubsection} % shape
    {0pt} % left space
    {1.5\baselineskip} % before space
    {0.25\baselineskip} % after space
%----------------------------------------------------------------------------------------


%----------------------------------------------------------------------------------------
% Customize List of Figures entry format
%----------------------------------------------------------------------------------------
% Figure 1.1:  This is the caption of figure........10
\renewcommand{\cftfigpresnum}{\figurename\ }
\renewcommand{\cftfigaftersnum}{:}
\settowidth{\@myTmpLen}{\cftfigpresnum\cftfigaftersnum}
\addtolength{\cftfignumwidth}{\@myTmpLen}
%----------------------------------------------------------------------------------------


%----------------------------------------------------------------------------------------
% Customize List of Tables entry format
%----------------------------------------------------------------------------------------
% Table 1.1:  This is the caption of table........10
\renewcommand{\cfttabpresnum}{\tablename\ }
\renewcommand{\cfttabaftersnum}{:}
\settowidth{\@myTmpLen}{\cfttabpresnum\cfttabaftersnum}
\addtolength{\cfttabnumwidth}{\@myTmpLen}
%----------------------------------------------------------------------------------------


%----------------------------------------------------------------------------------------
%  APPROVAL PAGE (PAPER VERSION)
%----------------------------------------------------------------------------------------
% Make committee approval page
\newcommand{\makeApprovalPage}{%
    \setlength{\@myTmpLen}{1.75in}
    \thispagestyle{empty}
    \begingroup \parindent\z@
        To the Graduate Council:\\[\baselineskip]
        I am submitting herewith a \@defaultDoctype\ written by \@author\ entitled
        ``\@title.'' I have examined the final paper copy of this \@defaultDoctype\
        for form and content and recommend that it be accepted in partial fulfillment
        of the requirements for the degree of \@degree, with a major in \@major.

        \begin{multicols}{2}
            \vspace*{\fill}
            We have read this \@defaultDoctype\\
            and recommend its acceptance:

            \@for\@committeeMember:=\@committeeMembers\do{%
                \vspace*{1.5\baselineskip}
                \underline{\hspace*{\@myTmpLen}}\\
                \@committeeMember \par
            }%
            \vspace*{2.5\baselineskip}
            \vspace*{\fill}
            \columnbreak % move to second column

            \vspace*{\fill}
            \underline{\hspace*{\@myTmpLen}}\\
            \@majorProfessor\\
            Major Professor
            \par \vspace*{10.5\baselineskip}

            Accepted for the Council:\\[1.5\baselineskip]
            \underline{\hspace*{\@myTmpLen}}\\
            \@dean\\
            Dean of the Graduate School
            \vspace*{\fill}
        \end{multicols}
    \endgroup
    \clearpage
}
%----------------------------------------------------------------------------------------


%----------------------------------------------------------------------------------------
%  APPROVAL PAGE (ELECTRONIC VERSION)
%----------------------------------------------------------------------------------------
% Make committee approval page
\newcommand{\makeApprovalPageE}{%
    \setlength{\@myTmpLen}{1.75in}
    \thispagestyle{empty}
    \begingroup \parindent\z@
        To the Graduate Council:\\[\baselineskip]
        I am submitting herewith a \@defaultDoctype\ written by \@author\ entitled
        ``\@title.'' I have examined the final paper copy of this \@defaultDoctype\
        for form and content and recommend that it be accepted in partial fulfillment
        of the requirements for the degree of \@degree, with a major in \@major.

        \begin{multicols}{2}
            \vspace*{\fill}
            We have read this \@defaultDoctype\\
            and recommend its acceptance:
            \par \vspace*{\baselineskip}

            \@for\@committeeMember:=\@committeeMembers\do{%
                \@committeeMember\\[-0.8\baselineskip]
                \underline{\hspace*{\@myTmpLen}}
                \vspace*{1.5\baselineskip} \par
            }%
            \vspace*{2.5\baselineskip}
            \vspace*{\fill}
            \columnbreak % move to second column

            \@majorProfessor\\[-0.8\baselineskip]
            \underline{\hspace*{\@myTmpLen}}\\
            Major Professor
            \par \vspace*{8.0\baselineskip}

            Accepted for the Council:\\[\baselineskip]
            \@dean\\[-0.8\baselineskip]
            \underline{\hspace*{\@myTmpLen}}\\
            Vice Provost and
            Dean of the Graduate School
        \end{multicols}

        \Centering
        \vspace*{-\baselineskip} % remove blank line when 'multicols' ends
        \vspace*{\fill}
        (Original signatures are on file with official student records.)
        \vspace*{\fill}
        \par % stop switches (e.g., Centering)
    \endgroup
    \clearpage
}
%----------------------------------------------------------------------------------------


%----------------------------------------------------------------------------------------
%  TITLE PAGE
%----------------------------------------------------------------------------------------
\newcommand{\makeTitlePage}{%
    \thispagestyle{empty}
    \begingroup \Centering \Large

        \MakeUppercase{\textbf{\@title}}

        \vspace*{\fill}
        A \@defaultFCDoctype\ Presented for the\\ \@degree\\ Degree\\ \@university
        \vspace*{\fill}

        \@author\\ \@graduationMonth\ \@graduationYear
        \par % stop switches (e.g., Centering)
    \endgroup
    \clearpage
}
%----------------------------------------------------------------------------------------



%----------------------------------------------------------------------------------------
%  TABLE OF CONTENTS, LIST OF TABLES, LIST OF FIGURES
%----------------------------------------------------------------------------------------
% Change titles to all capital letters
% This commands are found in the 'babel' package
\addto\captionsUSenglish{%
\renewcommand{\contentsname}{\MakeUppercase{\Large \bfseries Table of Contents}}
\renewcommand{\listtablename}{\MakeUppercase{\Large \bfseries List of Tables}}
\renewcommand{\listfigurename}{\MakeUppercase{\Large \bfseries List of Figures}}
}
%----------------------------------------------------------------------------------------


%----------------------------------------------------------------------------------------
%  Macros to add manual entries to the table of contents
%----------------------------------------------------------------------------------------
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
%----------------------------------------------------------------------------------------


%----------------------------------------------------------------------------------------
%  COPYRIGHT PAGE
%----------------------------------------------------------------------------------------
\newcommand{\makeCopyrightPage}{%
    \begingroup \Centering
        \vspace*{\fill}
        Copyright \copyright\ \@graduationYear\ by \@author\\
        All rights reserved.
        \vspace*{\fill}
        \par % stop switches (e.g., Centering)
    \endgroup
    \clearpage
}
%----------------------------------------------------------------------------------------


%----------------------------------------------------------------------------------------
%  LABEL-ONLY PAGE
%----------------------------------------------------------------------------------------
\newcommand{\makeLabelOnlyPage}[1]{%
    \clearpage
    \phantomsection
    \addtocounter{chapter}{1}
    \addcontentsline{toc}{chapter}{#1}
    \thispagestyle{plain}
    \begingroup \Centering
        \vspace*{\fill}
        \MakeUppercase{\Large \bfseries #1}
        \vspace*{\fill}
        \par % stop switches (e.g., Centering)
    \endgroup
    \clearpage
}
%----------------------------------------------------------------------------------------


\endinput % finalize UTK class

