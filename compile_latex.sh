#! /usr/bin/env bash 

# Usage information
case $1 in 
    -h | --h*)
    cat <<\EOF
Usage: compile_latex [--help] [LaTeX file [output directory]]

If LaTeX file is not provided, current directory is searched for a file.

Default output directory is 'build'.
EOF
    exit 0
    ;;
esac

# Validate TeX file
TEXFILE="$1"
if [ -z "$1" ]; then
    TEXFILE=`ls | grep ".*\.tex$"`
    NUMFILES=`echo "$TEXFILE" | wc -l`
    if [ "$NUMFILES" -eq "1" ]; then
        echo "Warning: automatic TeX file found, '$TEXFILE'."
    else
        echo "Error: too many TeX files found, '$TEXFILE'."
        exit 1
    fi
fi
if [ ! -e "$TEXFILE" ]; then
    echo "Error: TeX file does not exists, '$TEXFILE'."
    exit 1
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
PDFVIEW_CMD="evince $OUTDIR/$BASEFILE.pdf"

# Run commands
$PDFLATEX_CMD
$BIBTEX_CMD
$PDFLATEX_CMD
$PDFLATEX_CMD
$PDFVIEW_CMD &

