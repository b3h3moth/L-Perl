#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

#Slice in brief: how to create a new array with elements of another array using
#indexing.

#In Perl, a slice is a way to select a few elements of an array,  list, or hash
#instead of the entire set of data. You use the @ sign.

my @football_club = ('Juventus','P.S.G.','Barcellona','RealMadrid','CB');
my @fav_club = @football_club[0,4];
say 'A: '.$fav_club[0].' '.$fav_club[1];

#It doesn't make sense to take a single-element slice, so, if you do this, you
#get a warning (use warnings):

#my @club = @football_club[0];

#Scalar value @football_club[0] better written as $football_club[0] at
#./11_slice.pl │line 18.
my @fibonacci = ('one','one','two','three','five','eight','thirteen');
my @numbers = @fibonacci[-1,-3];

foreach my $num (@numbers) {
    say 'B: '.$num;
}

#how to working with lists of sequential numbers
my @num_list = (1..300);
