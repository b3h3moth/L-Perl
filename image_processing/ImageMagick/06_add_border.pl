#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Image::Magick;

my $image  = Image::Magick->new;

my $filename = 'crop.jpg';
my $new_file;
($new_file = $filename) =~ s/.+\./border\./;

open(IMAGE, $filename);
$image->Read(file=>\*IMAGE);

# make a border
$image->Border(geometry=>'5x5',bordercolor=>'#ffffff');

$image->Write($new_file);
undef $image;
close(IMAGE);
