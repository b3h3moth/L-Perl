#!/usr/bin/env perl
use strict;
use warnings;
use v5.20.2;

# eval EXPR
# eval BLOCK
# eval
#
# In the first form, often referred to as a "string eval", the return value of
# EXPR is parsed and executed as if it were a little Perl program. The value of
# the expression is first parsed, and if there were no errors, executed as a
# block within the lexical context of the current Perl program.
#
# In the second form, the code within the BLOCK is parsed only once and
# executed within the context of the current Perl program. This form is
# typically used to trap exceptions more efficiently than the first, while also
# providing the benefit of checking the code within BLOCK at compile time.

eval { say("The say() function seems to work.\n"); };

my $code = "chdir('/ops/dir')";
eval($code) or die"There is a problem with this code: $code\n$! , stopped";
