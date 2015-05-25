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

# Change $two reference into Person::Man reference
bless($two, "Person::Man");
say '$two is a ', ref($two), " reference";

# Change $four reference into Animal::Mammal reference
bless($four, "Sport::Football::Europe::Italy");
say '$four is a ', ref($four), " reference";

# Modification of a read-only value
bless($three, "Animal::Mammal");

__END__
You've changed where Perl should look if any methods are called by the
reference. At this stage you haven't even defined an Animal::Mammal package, 
but that's OK because you're not going to call any methods yet, if you did, 
they would surely fail.
