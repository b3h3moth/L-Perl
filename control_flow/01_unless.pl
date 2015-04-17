#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# In an if control structure, the block of code is executed only when the
# conditional expression is true. If you want to execute a block of code only
# when the conditional is false, change if to unless.
my $name = 'wisp';
say "You're not $name" unless ($name eq 'wow');
