#!/usr/bin/env perl
use warnings;
use strict;
use Data::Dumper;
use v5.22.0;

# In older Perl version these were also know as associative arrays

#declare a new hash
my %my_hash; #now is empty

#$ 'dollar signs'   = scalar variable
#@ 'at' symbol      = array
#% 'percent' sign   = hash
#@hash              = entire hash
#$hash{'elem'}      = hash element

%my_hash = ('key', 'value');
print Dumper \%my_hash;
