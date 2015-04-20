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
my $text = "\lPerl";
my $name = "\ul\Uuca";
say $text.' '.$name;
