#! /usr/bin/env bash 

# Usage information
if [ "$1" == "-h" ] || [ "$1" == "--help" ]; then
    echo
    echo "compile_latex [-h|--help] [LaTeX file] [output directory]"
    echo
    echo "Comments:"
    echo " 1. If LaTeX file is not provided, current directory is searched for a file."
    echo " 2. An explicit LaTeX file has to be provided before specifying output directory."
    echo " 3. Default output directory is 'build'."
    echo
    exit
fi

# Validate TeX file
TEXFILE="$1"
if [ -z "$1" ]; then
    TEXFILE=`ls | grep ".*\.tex$"`
    NUMFILES=`echo "$TEXFILE" | wc -l`
    if [ "$NUMFILES" -eq "1" ]; then
        echo "Warning: automatic TeX file found, '$TEXFILE'."
    else
        echo "Error: too many TeX files found, '$TEXFILE'."
        exit 
    fi
fi
if [ ! -e "$TEXFILE" ]; then
    echo "Error: TeX file does not exists, '$TEXFILE'."
    exit
fi

# Validate output directory
OUTDIR="$2"
if [ -z "$2" ]; then
    OUTDIR="build"
fi
if [ ! -d "$OUTDIR" ]; then
    mkdir "$OUTDIR"
fi

# Internal stuff
BASEFILE="${TEXFILE%.*}"

# Define commands
PDFLATEX_CMD="pdflatex -synctex=1 -interaction=nonstopmode -output-dir=$OUTDIR $TEXFILE"
BIBTEX_CMD="bibtex $OUTDIR/$BASEFILE"

# Run commands
$PDFLATEX_CMD
$BIBTEX_CMD
$PDFLATEX_CMD
$PDFLATEX_CMD

