#!/usr/bin/env perl
use strict;
use warnings;
use v5.14;

# eval EXPR
# eval BLOCK
# eval
#
# In the first form, often referred to as a "string eval", the return value of
# EXPR is parsed and executed as if it were a little Perl program. The value of
# the expression is first parsed, and if there were no errors, executed as a
# block within the lexical context of the current Perl program.

# In the second form, the code within the BLOCK is parsed only once and
# executed within the context of the current Perl program. This form is
# typically used to trap exceptions more efficiently than the first, while also
# providing the benefit of checking the code within BLOCK at compile time.

# The eval is also Perl's primitive exception mechanism.

my $size = 100;
my $len = 0;

# If an error happens while running code inside an eval block, the block stops
# executing. But even though the code inside the block is finished, Perl
# continues running the code right after the eval. 
# How does eval() operate with an illegal division by zero?
eval { my $average = $size / $len };
print "A: After eval(): $@" if $@;

eval { say("B: The say() function seems to work."); };

my $code = "chdir('/ttmp')";
eval($code) or die"C: There is a problem with this code: $code\n$! , stopped";
