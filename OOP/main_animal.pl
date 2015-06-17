#!/usr/bin/env perl
use strict;
use warnings;

use lib 'lib/Animal';
use Cow;
use Horse;
use Sheep;
use Mouse;

# Called with full package name
#Cow::speak;
#Horse::speak;
#Sheep::speak;

#my @pasture = qw(Cow Horse Sheep Sheep Cow Cow Horse Horse Sheep);
#foreach my $beast (@pasture) {
#    no strict 'refs';
#    # symbolic coderef dereferencing
#    &{$beast."::speak"};
#}

# In Perl isn't a difference between a subroutine and a method.
# Method invocation arrow, like this: Cow->speak.

# without symbolic coderefs.
#foreach my $beast (@pasture) {
#    $beast->speak;
#}

# The invocation of Cow->speak() attempts to invoke the subroutine 
# Cow::speak('Class', @args); this means that we get the class name as the 
# first parameter, or the only parameter, if no arguments are given.

Cow->speak;
Sheep->speak;
Horse->speak;
Mouse-> speak;
