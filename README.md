[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/edponce/thesis_template/blob/master/LICENSE)


# Thesis/dissertation template in LaTeX for UTK

Templates for thesis/dissertation proposal and research manuscript. This
template is distributed with ABSOLUTELY NO WARRANTY. It serves as a guideline
and constitutes a basic structure for a thesis or dissertation. The user
assumes full responsibility for formatting and typesetting their document and
for verifying that all the thesis requirements set by the University of
Tennessee are met. Please refer to the most recent UTK thesis guide
https://gradschool.utk.edu/thesesdissertations/formatting or contact the thesis
consultant https://gradschool.utk.edu/thesesdissertations.


## Project files and directories

1. **utk-class.cls** - TeX class file for research manuscript. Contains
   configuration, macros, and functionalities for adhering to UTK guidelines.
   Users should not need to modify this file (see *Advanced options*
   documentation).
1. **utk-main.tex** - main compilation file for research manuscript. Users need
   to modify parts of this file as desired. It contains document options,
   general information, and invokes all TeX files required for compilation.
   This file contains comments and notes that users should read prior to
   customizing it.
1. **utk-refs.bib** - sample bibliography file. It is recommended not to change
   the name of this file as it is invoked by **utk-main.tex** and
   **utk-proposal-main.tex**.
1. **sample-dissertation.pdf** - PDF example of a research manuscript generated
   with the default configurations.
1. **utk-guide-to-thesisdissertation.pdf** - official UTK guide to
   theses/dissertations at the time of this writing 11/2018.
1. **utk-forms/** - directory containing UTK Master and PhD graduate school
   forms such as admission to candidacy, committee, and thesis/dissertation
   approval to be completed and signed by committee members for
   thesis/dissertation. It is recommended to check the official website for the
   most recent versions.
1. **figures/**, **front-matter/**, **chapters/**, **back-matter/** -
   directories that should be self-explanatory once you take a quick look at
   them and the sample PDF (sample-dissertation.pdf). It is recommended to use
   the provided *.tex* files as templates because they contain common commands
   such as `\tab`, `\autoref`, `\cref`, `\cite`, `\url`, `footnote`, etc.
   and contain examples of tables and figures.
1. **utk-proposal-class.cls** - TeX class file for proposal document. Users
   should not need to modify this file (see *Advanced options* documentation).
1. **utk-proposal-main.tex** - main compilation file for proposal document.
   Users need to modify parts of this file as desired. It contains document
   options, general information, and invokes all TeX files for compilation.
   This file contains comments and notes that users should read prior to
   customizing it.
1. **sample-proposal.pdf** - PDF example of a proposal generated with the
   default configurations.
1. **proposal/** - directory containing the sections for the proposal document.


## PhD dissertation instructions

In **utk-main.tex** make the following changes:
1. Add `dissertation` to the document class options,
   `\documentclass[dissertation]{utk-class}`.
1. In the **General Information** section change the degree text,
   `\degree{Doctor of Philosophy}`.


## Master thesis instructions

In **utk-main.tex** make the following changes:
1. Add `thesis` to the document class options,
   `\documentclass[thesis]{utk-class}`.
1. In the **General Information** section change the degree text,
   `\degree{Master of Science}`.


## PhD/Master proposal instructions

1. Customize **utk-proposal-main.tex** following instructions similar to the
   *PhD dissertation instructions* or the *Master thesis instructions*.
1. Files with sections for the proposal document section are in **proposal/**.


## General instructions for PhD dissertation and Master thesis

In **utk-main.tex** make the following changes:
1. Set remaining **General Information** fields accordingly: `title`,
   `author`, `major`, `department`, `university`, `graduationYear`,
   `graduationMonth`, `majorProfessor`, `dean`, and `committeeMembers`.
1. Enable/disable section items to be included in manuscript by
   commenting/uncommenting. Note that not all sections are mandatory, some
   sections will be tagged as either `optional` or `if applicable`.
   The following is a listing of each section and corresponding items:
    1. **Front-matter section**
        - `\makeTitlePage` - mandatory, creates title page.
        - `\makeCopyrightPage` - optional, creates copyright page.
        - `dedication` - optional, includes dedication page.
        - `acknowledgments` - optional, includes acknowledgments page.
        - `abstract` - mandatory, includes abstract page.
        - `preface` - optional, includes preface page.
    1. **Tables section**
        - `\tableofcontents` - mandatory, creates a table of contents for
          manuscript sections.
        - `\listoftables` - if applicable, creates a table of contents for
          tables.
        - `\listoffigures` - if applicable, creates a table of contents for
          figures.
        - `abbreviations` - if applicable, includes if manuscript requires a
          list describing abbreviations. Use example provided as template.
        - `symbols` - if applicable, includes if manuscript requires a
          list describing symbols/nomenclature. Use example provided as
          template.
    1. **Chapters section**
        - `chapter-#` - mandatory, includes chapter # page.
        - If your manuscript requires less chapters simply
          disable/comment/remove those lines.
        - If your manuscript requires more chapters, then create files in
          **chapters/** named **chapter-#.tex** and add the corresponding
          `\input` commands to include those files.
    1. **Bibliography section**
        - `\makeBibliography` - mandatory, create bibliography page.
        - `\bibliographystyle{...}` - sets the bibliography style. For example,
          *APA* and *IEEE Transactions*.
        - `\bibliography{utk-refs}` - mandatory, uses the references found in
          file **utk-refs.bib**.
    1. **Back-matter section**
        - `\initializeAppendix`, `\finalizeAppendix` - if applicable, creates
          appendix page and controls appendix formatting environment.
        - `appendix-x` - if applicable, files with appendix content located in
          **back-matter/** and named as **appendix-x.tex**.
        - `\addToTOC{vita}` - mandatory, adds the vita section to the table of
          contents.
        - `vita` - mandatory, includes the vita page.


## Document class options

This template allows a user to control several aspects of the manuscript via
document class options in **utk-main.tex**. Document class options are
placed between square brackets as a comma-separated list in the
`\documentclass` command.
For example, `\documentclass[option1, option2, ...]{utk-class}`

The following is a list of the available document class options. **Use a
single option per category. If an option is not set explicitly then the
default option will be used.**
1. `dissertation`, `thesis` - (Default is `dissertation`) controls document
   type printed in title page and approval forms. *Note: auto-generated
   approval forms have been deprecated, use external forms provided by
   institution or at **utk-forms/**.*
1. `11pt`, `12pt` - (Default is `12pt`) controls the font size in regular
   text regions. Headers for chapter titles, sections, subsections, ... are
   relative to this font size.
1. `roman`, `sans`, `typewriter` - (Default is `roman`) controls the font
   family used for the entire manuscript.
   For specific font control, you need to enable/uncomment the
   respective TeX package in the **Package Configurations** section in
   **utk-main.tex**. These are common font packages supported:
    1. `\usepackage{times}` - (Default) Times
    1. `\usepackage{helvet}` - Helvetica
    1. `\usepackage{avant}` - Avant-Garde
    1. `\usepackage{lmodern}` - Latin Modern
    1. `\usepackage{courier}` - Courier
1. `onehalfspace`, `singlespace`, `doublespace` - (Default is
   `onehalfspace`) controls the text spacing in regular text regions.
1. `lefttext`, `justifytext` - (Default is `justifytext`) controls the text
   alignment in regular text regions.
1. `lefttitle`, `centertitle` - (Default is `lefttitle`) controls the
   text alignment in chapter titles.
1. `centerpagenum`, `rightpagenum` - (Default is `centerpagenum`) controls
   the location of page numbers.
1. `notes` - (Default is `notes`) enables/disables notes
   generated by `\note` and `\mnote` commands.


## Advanced options

The file **utk-class.cls** controls several formatting functionalities which
can be modified (use caution and make sure you know general TeX concepts).
This section describes how to enable/use some of these functionalities.

### Manage packages

The **Packages** section contains a list of all packages included by default.
Here a user can change an option of an existing package or add a new package.
New packages can also be added in **utk-main.tex**.

### Show header at top of page with the section and chapter information

In **Global and Packages Configurations** section, comment the command
`fancyhead{}`. This will show a header line at the top of pages that are
consider as intermediate pages for a particular chapter or major section.

## Change page layout to landscape

To change a page to landscape layout, use the `landscape` environment:  
`\begin{landscape}`  
...  
`\end{landscape}`

## Using notes to annotate manuscript

When writing long/complex manuscripts it is convenient to be able to include
temporary annotations. These annotations can be embedded in-text or placed
along the margin of the page and can serve to post answer/questions/comments
during draft versions.

This template supports both in-text and on-margin annotations via the `\note`
and `\mnote` commands. The `\note` command uses colored highlight (default is
yellow) and `\mnote` command does not highlights (because text is in margin).
Notes are shown when the `notes` option is used in the document class options,
and notes are hidden/removed when the option is not used.

Examples:
- `\note{This is an in-text note with a yellow highlight.}`
- `\note[green]{This is an in-text note with a green highlight.}`
- `\mnote{This is a margin note with no highlight color.}`
