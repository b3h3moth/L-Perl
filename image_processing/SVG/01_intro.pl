#!/usr/bin/env perl
use warnings;
use strict;

#SVG module is essential :-)
#perl -MCPAN -e "install SVG"
use SVG;

#create an SVG object
#hash values are width and heigth.
my $svg_img = SVG->new(
    width   =>      200,
    heigth  =>      200
);

#draw a circle at position 100,100
$svg_img->circle(
    id      =>      'my circle',
    cx      =>      100,
    cy      =>      100,
    r       =>      50
);

#render SVG object
#xmlify method returns XML file
print $svg_img->xmlify;

#getting svg file
#./01_intro.pl > first.svg
