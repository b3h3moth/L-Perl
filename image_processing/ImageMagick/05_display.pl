#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Image::Magick;

my $image  = Image::Magick->new;

my $filename = 'eve.jpg';

open(IMAGE, $filename);
$image->Read(file=>\*IMAGE);

# display an image
$image->Display();

undef $image;
close(IMAGE);
