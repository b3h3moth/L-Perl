#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

#In Perl, a slice is a way to select a few elements of an array,  list, or hash
#instead of the entire set of data. You use the @ sign.

my @football_club = ('Juventus','P.S.G.','Barcellona','RealMadrid','CB');
my @fav_club = @football_club[0,4];
say @fav_club;

#It doesn't make sense to take a single-element slice, so, if you do this, you
#get a warning (use warnings):

#my @club = @football_club[0];

#Scalar value @football_club[0] better written as $football_club[0] at
#./11_slice.pl │line 18.
