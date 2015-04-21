#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# A slice is a way to select a few elements of an array, list, or hash instead 
# of the entire set of data. You use the @ sign.

my %student = (
    carla => 123456,
    luca  => 234567,
    maria => 345678,
);

# A hash slice is a list of keys or values of a hash indexed in a single 
# operation. 

# assign a hash slice to array
my @arr1 = ($student{"carla"}, $student{"luca"}, $student{"maria"});

say join ' => ', @arr1;

# To initialize multiple elements of a hash at once:
@student{qw(mario pina clara lucia iris)} = (101010) x 5 ;

while (my($key, $value) = sort each %student) {
    say $key."\t".$value;
}
