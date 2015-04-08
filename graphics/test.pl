#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# detects objects from picture (openccv)
use Image::ObjectDetect;

my $cascade = 'file.xml';
my $file = '/home/behemoth/wallpaper/leopardo.jpg';
