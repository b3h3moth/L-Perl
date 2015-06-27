#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# The Perl special variables (part 1)

# List of special variables covered:
#   $_
#   $. 
#   $/
#   $,
#   $\

say '1) $_';
# The default variable is a parameter for a lot of functions.
foreach (1..3) { say $_ }

say "\n".'2) $.';
# Holds the current line number for the last filehandle accessed.
open (my $input_file, '<', "/etc/modules") or die("Cannot open file\n");

while (my $line = <$input_file>) {
    print "$. - $line";
}

close($input_file);

say "\n".'3) $/';
# $/ Holds the input record separator, usually the newline character.

say "\n".'4) $,';
# $, The output separator for the print() function. Normally, this variable is
# an empty string. However, setting $, to a newline might be useful if you need
# to print each element in the parameter list on a separate line.
$, = "\n\t";
print "","Special","variables","in","Perl";

say "\n".'4) $\ ';
# $\ Added as an invisible last element to the parameters passed to the print()
# function. Normally, an empty string, but if you want to add a newline or some other suffix to everything that is printed, you can assign the suffix to $.
