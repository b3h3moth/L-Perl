#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# \n newline
# \r return
# \t tab
# \\ backslash
# \' single quote
# \" double quote
# \l lowercase next character
# \L lowercase all folowing character until \E
# \u uppercase next character
# \U uppercase all folowing character until \E
my $name = "\LBEHEMOTH";
my $text = "\\\t\umy name is \u\'$name\', \ui \"\Ulove\E\" \uper\lL\t\\";

say $text;
