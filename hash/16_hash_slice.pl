#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# A slice is a way to select a few elements of an array, list, or hash instead 
# of the entire set of data. You use the @ sign.

my %colors = (
    bl => 'blue',
    or => 'orange',
    wh => 'white',
);

# A hash slice is a list of keys or values of a hash indexed in a single 
# operation. 

# To initialize multiple elements of a hash at once:
@colors{qw(green cyan red gray violet)} = (0) x 5 ;

while (my($key, $value) = sort each %colors) {
    say $key."\t".$value;
}
