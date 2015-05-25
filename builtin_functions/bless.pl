#!/usr/bin/env perl
package Test;
use warnings;
use strict;
use v5.14;

# bless REF,CLASSNAME
# bless REF
#
# The bless() function takes a reference 'REF' and turns it into an object. It
# changes the type of the reference. Instead of being an array reference or a 
# hash reference, Perl now thinks of it as a Person1 reference.
my $a = {};
say '$a is a ', ref($a), " reference";

bless($a, "Person1");
say '$a is a ', ref($a), " reference";

bless($a, "Animal::Vertebrate::Mammal");
say '$a is a ', ref($a), " reference";
