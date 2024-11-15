#!/usr/bin/awk -f

BEGIN {
    if (ARGC < 2) {
        print "Usage: catlines <filename> ..."
        exit 1
    }
}

FILENAME != lastfile {
    if (lastfile) print ""
    print "= "FILENAME
    lastfile = FILENAME
}

# Print each line with leading zero line numbers
{
    printf "%03d| %s\n", FNR, $0
}

