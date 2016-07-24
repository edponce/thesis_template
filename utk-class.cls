%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% UTK Dissertation Template 
% by Eduardo Ponce
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% Initialize class
\NeedsTeXFormat{LaTeX2e}
\newcommand{\@utkClass}{utk-class}
\ProvidesClass{\@utkClass}[2016/07/20 custom template]


%----------------------------------------------------------------------------------------
%  DEFAULT CLASS OPTIONS
%----------------------------------------------------------------------------------------

% Document type
\providecommand{\@defaultDoctype}{dissertation}

% Font size
\providecommand{\@defaultFontSize}{12pt}

% Font family
\providecommand{\@defaultFontFamily}{roman}

% Text spacing
\providecommand{\@defaultTextSpace}{onehalfspace}

% Text horizontal alignment
\providecommand{\@defaultTextAlign}{lefttext}

%----------------------------------------------------------------------------------------


%----------------------------------------------------------------------------------------
%  CLASS OPTIONS CONFIGURATION
%----------------------------------------------------------------------------------------

\DeclareOption{thesis}{\renewcommand{\@defaultDoctype}{thesis}}
\DeclareOption{dissertation}{\renewcommand{\@defaultDoctype}{dissertation}}

\DeclareOption{10pt}{\renewcommand{\@defaultFontSize}{10pt}}
\DeclareOption{11pt}{\renewcommand{\@defaultFontSize}{11pt}}
\DeclareOption{12pt}{\renewcommand{\@defaultFontSize}{12pt}}

\DeclareOption{sans}{\renewcommand{\familydefault}{\sfdefault}}
\DeclareOption{roman}{\renewcommand{\familydefault}{\rmdefault}}
\DeclareOption{typewriter}{\renewcommand{\familydefault}{\ttdefault}}

\DeclareOption{singlespace}{\renewcommand{\@defaultTextSpace}{singlespace}}
\DeclareOption{onehalfspace}{\renewcommand{\@defaultTextSpace}{onehalfspace}}
\DeclareOption{doublespace}{\renewcommand{\@defaultTextSpace}{doublespace}}

\DeclareOption{lefttext}{\renewcommand{\@defaultTextAlign}{lefttext}}
\DeclareOption{centertext}{\renewcommand{\@defaultTextAlign}{centertext}}
\DeclareOption{righttext}{\renewcommand{\@defaultTextAlign}{righttext}}

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
\RequirePackage[T1]{fontenc} % accented characters for output
\RequirePackage[utf8]{inputenc} % accented characters for input 
\RequirePackage[USenglish]{babel} % USA hyphenation patterns
\RequirePackage[showframe]{geometry} % page margins/layout
\RequirePackage[]{setspace} % text spacing
\RequirePackage[]{multicol} % multiple columns 
\RequirePackage[pdftex]{hyperref} % hyperlinks 
\RequirePackage[]{color} % colors
\RequirePackage[]{ifthen} % conditional macros
\RequirePackage[]{ragged2e} % text alignment 
\RequirePackage[]{graphicx} % graphics 
\RequirePackage[]{natbib} % link references
\RequirePackage[]{titlesec} % customize section displays 
\RequirePackage[]{amsmath} % AMS math
\RequirePackage[]{amsthm} % AMS theorem
\RequirePackage[]{amssymb} % AMS fonts

% Not used yet, supplemental packages
%\RequirePackage[]{fancyhdr} % headers/footers 
%\RequirePackage[]{booktabs} % professional tables
\RequirePackage[]{caption} % figure captions
\RequirePackage[]{nomencl} % create a nomenclature 
\RequirePackage[]{subfloat} % sub figure floats
\RequirePackage[]{subfig} % sub figures 

% Debug packages
\RequirePackage{layout} % show page measurements 
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

% Store font size of body text
\newlength{\@myFontSize}
\setlength{\@myFontSize}{\f@size pt}

% Temporary length variable 
\newlength{\@myTmpLen}
\setlength{\@myTmpLen}{0pt}

%----------------------------------------------------------------------------------------


%----------------------------------------------------------------------------------------
%  INITIALIZE GLOBAL SETTINGS
%----------------------------------------------------------------------------------------

% Page margins/layout 
% Match MS Word template:
% (top=1.0in, bottom=1.3in, left=1.25in, right=1.25in, header=0.5in, footer=1.0in)
\geometry{
    top=1.0in, bottom=1.53125in, left=1.25in, right=1.25in,
    headheight=16pt, headsep=0.28in, footskip=0.3125in
}

% Text line spacing
\ifthenelse{\equal{\@defaultTextSpace}{singlespace}}{\singlespacing}{%
\ifthenelse{\equal{\@defaultTextSpace}{onehalfspace}}{\onehalfspacing}{%
\ifthenelse{\equal{\@defaultTextSpace}{doublespace}}{\doublespacing}{}}}

% Text horizontal alignment 
\ifthenelse{\equal{\@defaultTextAlign}{lefttext}}{\RaggedRight}{%
\ifthenelse{\equal{\@defaultTextAlign}{centertext}}{\Centering}{%
\ifthenelse{\equal{\@defaultTextAlign}{righttext}}{\RaggedLeft}{}}}

% Paragraph indentation
\setlength{\parindent}{0.5in}

% Fancy headers/footers
%\pagestyle{fancy}
%\renewcommand{\headrulewidth}{0pt} % remove default rule in header

% Hyperlinks setup
\hypersetup{
    hypertexnames=false, % use unique values for page anchors, \hyperpage is affected and might not work properly. Used to suppress warning due to multi-font page numbering. 
    plainpages=false, % name page anchors by arabic form of page number
    colorlinks=true, % enable link colors
    linkcolor=blue, filecolor=magenta, citecolor=magenta, urlcolor=cyan,
    breaklinks=false, % allow multi-line links
    pdftitle={\@title}, pdfauthor={\@author}, % PDF options
    pdfsubject={\@defaultDoctype on \@title}
}
\urlstyle{same} % use same style as class for URL links


% Paths where figures are located
\graphicspath{{figures/}{figures/eps/}{figures/pdf/}}

% Bibliography style
\bibliographystyle{apalike}

% Define lemma, corollary, and theorem environments
\theoremstyle{plain}
\newtheorem*{theorem*}{Theorem}
\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{corollary}{Corollary}[theorem]
\newtheorem{lemma}{Lemma}[theorem]

% Customize section titles
\titleformat{\chapter}[display] % shape
    {\Large \bfseries \filcenter} % format for label and title
    {\MakeUppercase{\chaptertitlename\ \thechapter}} % label
    {0pt} % vertical space between label and title
    {\uppercase} % pre-commands
    {} % post-commands
\titlespacing{\chapter} % shape
    {0pt} % left space 
    {-2.0\@myFontSize} % before space
    {1.0\@myFontSize} % after space

%----------------------------------------------------------------------------------------


%----------------------------------------------------------------------------------------
%  APPROVAL PAGE (PAPER SUBMISSION) 
%----------------------------------------------------------------------------------------

% Make committee approval page
\newcommand{\makeApprovalPage}{%
    \setlength{\@myTmpLen}{1.75in}
    \thispagestyle{empty}
    \begingroup \parindent\z@
        To the Graduate Council:\\[\@myFontSize]
        I am submitting herewith a \@defaultDoctype\ written by \@author\ entitled
        ``\@title.'' I have examined the final paper copy of this \@defaultDoctype\ 
        for form and content and recommend that it be accepted in partial fulfillment
        of the requirements for the degree of \@degree, with a major in \@major.

        \begin{multicols}{2}
            \vspace*{\fill}
            We have read this \@defaultDoctype\\
            and recommend its acceptance:

            \@for\@committeeMember:=\@committeeMembers\do{%
                \vspace*{2.0\@myFontSize}
                \underline{\hspace*{\@myTmpLen}}\\
                \@committeeMember \par
            }%
            \vspace*{4.0\@myFontSize}
            \vspace*{\fill}
            \columnbreak % move to second column

            \vspace*{\fill}
            \underline{\hspace*{\@myTmpLen}}\\
            \@majorProfessor\\
            Major Professor
            \par \vspace*{16.0\@myFontSize}

            Accepted for the Council:\\[2.0\@myFontSize]
            \underline{\hspace*{\@myTmpLen}}\\
            \@dean\\
            Dean of the Graduate School
            \vspace*{\fill}
        \end{multicols}
    \endgroup
    \newpage
}

%----------------------------------------------------------------------------------------


%----------------------------------------------------------------------------------------
%  APPROVAL PAGE (ELECTRONIC SUBMISSION) 
%----------------------------------------------------------------------------------------

% Make committee approval page
\newcommand{\makeApprovalPageE}{%
    \thispagestyle{empty}
    \begingroup \parindent\z@
        To the Graduate Council:\\[\@myFontSize]
        I am submitting herewith a \@defaultDoctype\ written by \@author\ entitled
        ``\@title.'' I have examined the final paper copy of this \@defaultDoctype\
        for form and content and recommend that it be accepted in partial fulfillment
        of the requirements for the degree of \@degree, with a major in \@major.

        \begin{multicols}{2}
            \vspace*{\fill}
            We have read this \@defaultDoctype\\
            and recommend its acceptance:
            \par \vspace*{\@myFontSize}

            \@for\@committeeMember:=\@committeeMembers\do{%
                \@committeeMember\\[-1.2\@myFontSize]
                \settowidth{\@myTmpLen}{\@committeeMember}
                \underline{\hspace*{\@myTmpLen}}
                \vspace*{2.0\@myFontSize} \par
            }%
            \vspace*{4.0\@myFontSize}
            \vspace*{\fill}
            \columnbreak % move to second column

            \@majorProfessor\\[-1.2\@myFontSize]
            \settowidth{\@myTmpLen}{\@majorProfessor}
            \underline{\hspace*{\@myTmpLen}}\\
            Major Professor
            \par \vspace*{12.0\@myFontSize}

            Accepted for the Council:\\[\@myFontSize]
            \@dean\\[-1.2\@myFontSize]
            \settowidth{\@myTmpLen}{\@dean}
            \underline{\hspace*{\@myTmpLen}}\\
            Dean of the Graduate School
        \end{multicols}

        \centering
        \vspace*{-\@myFontSize} % remove blank line when 'multicols' ends
        \vspace*{\fill}
        (Original signatures are on file with official student records.)
        \vspace*{\fill}
        \par % stop switches (e.g., centering)
    \endgroup
    \newpage
}

%----------------------------------------------------------------------------------------


%----------------------------------------------------------------------------------------
%  TITLE PAGE  
%----------------------------------------------------------------------------------------

% Make title page
\newcommand{\makeTitlePage}{%
    \thispagestyle{empty}
    \begingroup \centering \Large

        \MakeUppercase{\textbf{\@title}}

        \vspace*{\fill}
        A Dissertation Presented for\\ the \@degree\\ Degree\\ \@university
        \vspace*{\fill}

        \@author\\ \@graduationMonth\ \@graduationYear
        \par % stop switches (e.g., centering)
    \endgroup
    \newpage
}

%----------------------------------------------------------------------------------------


%----------------------------------------------------------------------------------------
%  COPYRIGHT PAGE  
%----------------------------------------------------------------------------------------

% Make copyright page
\newcommand{\makeCopyrightPage}{%
    \begingroup \centering
        \vspace*{\fill}
        Copyright \copyright\ \@graduationYear\ by \@author\\
        All rights reserved.
        \vspace*{\fill}
        \par % stop switches (e.g., centering)
    \endgroup
    \newpage
}

%----------------------------------------------------------------------------------------

%http://www.emerson.emory.edu/services/latex/latex_toc.html#SEC145
%http://svn.gna.org/viewcvs/*checkout*/latexrefman/trunk/latex2e.html#Font-sizes
%https://www.sharelatex.com/learn/Environments
%https://www.sharelatex.com/learn/Page_size_and_margins
%http://tex.stackexchange.com/questions/79046/baselinestretch-vs-setspace
%http://tex.stackexchange.com/questions/31776/latex-at-symbol
%http://stackoverflow.com/questions/1211888/is-there-any-way-i-can-define-a-variable-in-latex
%http://tex.stackexchange.com/questions/239305/latex-variables-varname
%http://tex.stackexchange.com/questions/58628/optional-argument-for-newcommand

\endinput % finalize class

