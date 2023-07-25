#!/usr/bin/env perl
# example .latexmkrc 

# platex pdf-sync
$latex = 'platex -halt-on-error %O %S';

# platex less-error-message
$latex_silent = 'platex -halt-on-error -interaction=batchmode %O %S';

# pbibtex
$bibtex = 'pbibtex';

# div -> pdf output main.pdf 
$dvipdf = 'dvipdfmx %O -o %D %S';

# index
$makeindex = 'mendex %O -o %D %S';

$max_repeat = 4;

# dvi -> pdf
$pdf_mode = 3;

# preview update
$pdf_update_method = 4;
