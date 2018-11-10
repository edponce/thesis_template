# Thesis/dissertation template in LaTeX for UTK

## Project files and directories descriptions

1. **utk-class.cls** - contains the formatting based on UTK guidelines.
   For general use, you should not need to change this file.
1. **utk-main.tex** - main file that gets compiled. It invokes all the
   other files (chapters, appendix, bibliography) in the correct order.
1. **utk-refs.bib** - sample TeX bibliography file.
1. **utk-main.pdf** - sample PDF generated with the default configurations.
1. **utk-guide-to-thesisdissertation.pdf** - official UTK guide to
   theses/dissertations at the time of this writing 11/2018.
1. **utk-forms/** - directory containing UTK Master and PhD graduate school
   forms such as admission to candidacy, committee, and thesis/dissertation
   approval to be completed and signed by committee members for
   thesis/dissertation.
1. **figures/**, **front-matter/**, **chapters/**, **back-matter/** -
   directories that should be self-explanatory once you take a quick look
   at them and the sample PDF (utk-main.pdf)


## PhD dissertation-specific instructions

In **utk-main.tex** make the following changes:
1. Add `dissertation` to the document class options,
   `\documentclass[dissertation]{utk-class}`.
1. In the **General Information** section change the degree text,
   `\degree{Doctor of Philosophy}`.


## Master thesis-specific instructions

In **utk-main.tex** make the following changes:
1. Add `thesis` to the document class options,
   `\documentclass[thesis]{utk-class}`.
1. In the **General Information** section change the degree text,
   `\degree{Master of Science}`.


## General instructions

In **utk-main.tex** make the following changes:
1. Set remaining **General Information** fields accordingly: `title`,
   `author`, `major`, `department`, `university`, `graduationYear`,
   `graduationMonth`, `majorProfessor`, `dean`, and `committeeMembers`.
1. Enable/disable section items to be included in manuscript by
   commenting/uncommenting. Note that not all sections are mandatory, some
   sections will be tagged as either `optional` or `if applicable`.
   The following is a listing of each section and corresponding items:
    1. **Front-matter section**
        - `\makeTitlePage` - mandatory, creates title page
        - `\makeCopyrightPage` - optional, creates copyright page
        - `dedication` - optional, include dedication page
        - `acknowledgments` - optional, include acknowledgments page
        - `abstract` - mandatory, include abstract page
        - `preface` - optional, include preface page
    1. **Tables section**
        - `\tableofcontents` - mandatory, creates a table of contents for
          manuscript sections
        - `\listoftables` - if applicable, creates a table of contents for
          tables.
        - `\listoffigures` - if applicable, creates a table of contents for
          figures.
        - `abbreviations` - if applicable, include if manuscript requires a
          list describing abbreviations. Use example provided as template.
        - `symbols` - if applicable, include if manuscript requires a
          list describing symbols/nomenclature. Use example provided as
          template.
    1. **Chapters section**
        - `chapter-#` - mandatory, includes chapter # page.
        - If your manuscript requires less chapters simply
          disable/comment/remove those lines.
        - If your manuscript requires more chapters, then create files in
          **chapters/** named **chapter-#.tex** and add the corresponding
          `\input` commands to include those files.
    1. **Bibliography` section**
        - `\makeBibliography` - mandatory, create bibliography page
        - `\bibliographystyle{...}` - sets the bibliography style. For example,
          *APA* and *IEEE Transactions*.
        - `\bibliography{utk-refs}` - mandatory, uses the references found in
          file **utk-refs.bib**.
    1. **Back-matter section**
        - `\initializeAppendix`, `\finalizeAppendix` - if applicable, creates
          appendix page and controls appendix formatting environment.
        - `appendix-x` - if applicable, files with appendix content located in
          **back-matter/** and named as **appendix-x.tex**.
        - `vita` - mandatory, includes the vita page


## Usage

### Document class options

This template allows a user to control several aspects of the manuscript via
document class options in **utk-main.tex**. Document class options are
placed between square brackets as a comma-separated list in the
`documentclass` command.
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
   respective TeX package in the *Package Configurations* section in
   **utk-main.tex**. These are common font packages supported:
    1. `\usepackage{times}` - (Default) Times
    1. `\usepackage{helvet}` - Helvetica
    1. `\usepackage{avant}` - Avant-Garde
    1. `\usepackage{lmodern}` - Latin Modern
    1. `\usepackage{courier}` - Courier
1. `onehalfspace`, `singlespace`, `doublespace` - (Default is
   `onehalfspace`) controls the text spacing in regular text regions.
1. `lefttext`, `justifytext` - (Default is `lefttext`) controls the text
   alignment in regular text regions.
1. `lefttitle`, `centertitle` - (Default is `lefttitle`) controls the
   text alignment in chapter titles.
1. `centerpagenum`, `rightpagenum` - (Default is `centerpagenum`) controls
   the location of page numbers.
1. `noteson`, `notesoff` - (Default is `noteson`) enables/disables notes
   generated by `\note` and `\mnote` commands.


### Using notes to annotate manuscript

When writing long/complex manuscripts it is convenient to be able to include
temporary annotations. These annotations can be embedded in-text or placed
along the margin of the page and can serve to post answer/questions/comments
during draft versions.

This template supports both in-text and on-margin annotations via the `\note`
and `\mnote` commands. The `\note` command uses colored highlight (default is
yellow) and `\mnote` command does not highlights (because text is in margin).
Notes are shown when the `noteson` option is set in document class options,
and notes are hidden/removed with the `notesoff` option.

Examples:
- `\note{This is an in-text note with a yellow highlight.}`
- `\note[green]{This is an in-text note with a green highlight.}`
- `\mnote{This is a margin note with no highlight color.}`
