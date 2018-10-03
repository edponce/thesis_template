# Thesis/dissertation template in LaTeX for UTK

## File and directory descriptions

1. **utk-class.cls** contains the formatting based on UTK guidelines
    You should not need to change this file.
1. **utk-main.tex** is the main file that gets compiled.
   It invokes all the other files (chapters, appendix, bib) in the correct order.
1. **utk-refs.bib** is a bibliography sample file
1. **utk-main.pdf** is the PDF produced with the default configurations
1. **utk-guide-to-thesisdissertation.pdf** is the official UTK guide to
   theses/dissertations
1. **utk-forms/** is a directory containing UTK Master and PhD graduate school
   forms such as admission to candidacy, committee, and thesis/dissertation
approval.
   to be completed and signed by committee members for thesis/dissertation
1. **figures/**, **front-matter/**, **chapters/**, **back-matter/**
   are directories that should be self-explanatory once you take a quick look
   at them and the PDF generated (utk-main.pdf)


## Instructions for PhD Dissertation

1. The template defaults are set for compiling a PhD dissertation.
1. The main changes required are to set the correct information (name, committee
   members, title of work, date, etc.) in **utk-main.tex**.
   Also, make sure that the dissertation sections are enabled as needed.


## Instructions for Master Thesis

1. In **utk-main.tex** make the following changes:
    1. Add *thesis* as an option to the document class (simply uncomment the
       corresponding line).
    1. Change the *degree* text to *Master of Science* (simply uncomment the
       corresponding line).
1. The main changes required are to set the correct information (name, committee
   members, title of work, date, etc.) in **utk-main.tex**.
   Also, make sure that the thesis sections are enabled as needed.


## Customization

1. This template contains various built-in customization features such text
   spacing and font. Unfortunately these features are not yet documented in
   this manual but rather in the TeX code itself. In **utk-main.tex** options
   will contain comments specifying available values, please read carefully.

