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
say '$a is a ', ref($a), " reference";

bless($a, "Person1");
say '$a is a ', ref($a), " reference";

bless($a, "Animal::Vertebrate::Mammal");
say '$a is a ', ref($a), " reference";
