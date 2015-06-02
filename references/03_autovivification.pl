#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Data::Dumper;

# Autovivifation
# If you use a scalar with an undefined value as if it were a reference to
# another object, Perl automatically creates an object of the appropriate type
# and makes that scalar a reference to that type. This is called 
# autovivification. 
#
# The following code creates an array of four elements and makes $ref a 
# reference to it:
my $ref;
undef $ref;
my $ref->[3] = 'four';

say Dumper \$ref;
