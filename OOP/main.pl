#!/usr/bin/env perl
use strict;
use warnings;

use lib 'lib';
use Cow;
use Horse;
use Sheep;

# Called with full package name
Cow::speak;
Horse::speak;
Sheep::speak;

my @pasture = qw(Cow Horse Sheep Sheep Cow Cow Horse Horse Sheep);
foreach my $anim (@pasture) {
    no strict 'refs';
    # symbolic coderef dereferencing
    &{$anim."::speak"};
}

# In Perl isn't a difference between a subroutine and a method:
Cow->speak;
Horse->speak;
Sheep->speak;
