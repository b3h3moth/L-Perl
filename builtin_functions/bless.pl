#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# bless REF,CLASSNAME
# bless REF
#
# The bless() function takes a reference 'REF' and turns it into an object. It
# changes the type of the reference. Instead of being an array reference or a 
# hash reference, Perl now thinks of it as a Person1 reference.
my $one = {};
my $two = [];
my $three = \100;
my $four = \$three;

say '$one is a ', ref($one), " reference";
say '$two is a ', ref($two), " reference";
say '$three is a ', ref($three), " reference";
say '$four is a ', ref($four), " reference";

# Change $one reference into Person reference
bless($one, "Person");
say '$one is a ', ref($one), " reference";

bless($two, "Person::Man");
say '$two is a ', ref($two), " reference";
