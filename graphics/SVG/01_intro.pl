#!/usr/bin/env perl
use warnings;
use strict;
use SVG;


#create an SVG object 50x50 px
my $first_svg = SVG->new(
    width   =>      40,
    heigth  =>      40
);

#add circle
$first_svg->circle(
    cx      =>      20,
    cy      =>      20,
    r       =>      18
);

#render SVG object
#output will be an XML file
print $first_svg->xmlify;

#getting XML file
#./01_intro.pl > first.svg
