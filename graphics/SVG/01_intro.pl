#!/usr/bin/env perl
use warnings;
use strict;
use SVG;


#create an SVG object 50x50 px
my $first_svg = SVG->new(
    width   =>      50,
    heigth  =>      50
);

#add circle
$first_svg->circle(
    cx      =>      25,
    cy      =>      25,
    r       =>      15
);

#render SVG object
print $first_svg->xmlify;

#getting XML file
#./01_intro.pl > first.svg
