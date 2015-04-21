#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# A hash slice is a list of keys or values of a hash indexed in a single 
# operation. 

my %colors = (
    bl => 'blue',
    or => 'orange',
    wh => 'white',
);

# To initialize multiple elements of a hash at once:
@colors{qw(gr cy ma re)} = (1) x 4;

