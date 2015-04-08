#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# detects objects from picture (openccv)
use Image::ObjectDetect;

my $cascade = 'file.xml';
my $file = '/home/behemoth/wallpaper/leopardo.jpg';

my $detector = Image::ObjectDetect->new($cascade);

my @faces= $detector->detect($file);

for my $face (@faces) {
    print $face->{x}, "\n";
    print $face->{y}, "\n";
    print $face->{height}, "\n";
    print $face->{weigth}, "\n";
}
