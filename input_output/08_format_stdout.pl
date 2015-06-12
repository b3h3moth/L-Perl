#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# Output record formats are declared as follows:
#
# format NAME =
#        FORMLIST
# 
# If the name is omitted, format "STDOUT" is defined. A single "." in  column 1
# is used to terminate a format. FORMLIST consists of a sequence  of lines, 
# each of which may be one of three types:
# 
# 1) A comment '#';
# 2) A "picture" line giving the format for one output line;
# 3) An argument line supplying values to plug into the previous picture line.
#
# Picture lines contain output field definitions, intermingled with literal 
# text. Field definitions are made up from a set of characters, for starting 
# and extending a field to its desired width.
# 
# The set of characters for field definitions:
# @    start of regular field;
# ^    start of special field;
# <    pad character for left justification;
# |    pad character for centering;
# >    pad character for right justification;
# #    pad character for a right-justified numeric field;
# 0    instead of first #: pad number with leading zeroes;
# .    decimal point within a numeric field;
# ...  terminate a text field, show "..." as truncation evidence;
# @*   variable width field for a multi-line value;
# ^*   variable width field for next line of a multi-line value;
# ~    suppress line with all fields empty;
# ~~   repeat line until all fields are exhausted.

# Each field in a picture line starts with either @ or ^, indicating what we'll
# call, respectively, a "regular" or "special" field. The choice of pad 
# characters determines whether a field is textual or numeric. The tilde 
# operators are not part of a field.

open (COLORS, 'list_of_colors.txt') or die "Can't open file: $!";

while (<COLORS>) {
    print $_;
}

my @colors = qw(white black blu green orange yellow gray purple );
foreach my $color (@colors) {
    format STDOUT = 
@<<<<< @<<<<<<
    $color, $color
.
    write;
}
