#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# The Perl special variables (part 2)

# List of special variables covered:
#   $@
#   $&
#   $`
#   $+
#   $'

# $@ Holds the syntax error message from the last eval() function call.
say '6) $@';

my $average = eval { 10 / 0 };
print "After eval(): $@";

# $& Holds the string that was matched by the last successful pattern match.
# $` Holds the string that preceded whatever was matched by the last successful pattern match.
# $+ Holds the string matched by the last bracket in the last successful pattern match. For example, the statement /Fieldname: (.*)|Fldname: (.*)/ && ($fName = $+); will find the name of a field even if you don't know which of the two possible spellings will be used.
# $' Holds the string that followed whatever was matched by the last successful pattern match.
my $text = 'PerlLanguageProgramming';
say "$`_$&_$'" if ($text =~ /[Ll]anguage/);
