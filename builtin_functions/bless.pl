#!/usr/bin/env perl
package Test;
use warnings;
use strict;
use v5.14;

# bless REF,CLASSNAME
# bless REF
#
# The bless() takes a REF and turns it into an object in the CLASSNAME package.
# If CLASSNAME is omitted, the current package is used.
my $a = {};
print '$a is a ', ref($a), " reference\n";
bless($a, "Person1");
print '$a is a ', ref($a), " reference\n";
bless($a, "Animal::Vertebrate::Mammal");
print '$a is a ', ref($a), " reference\n";
