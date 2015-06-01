#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# Dereferencing uses the value that a reference points to, there are several 
# different forms.

# The basic form is to use a block ${ reference }, 
my $year = 2015;
my $scalar_ref = \$year;
say ${ $scalar_ref };
my $next_year = ${ $scalar_ref } + 1;
say $next_year;
