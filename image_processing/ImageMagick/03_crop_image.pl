#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Image::Magick;

die ("Usage: $0 <input img> (crop)>\n") if (@ARGV != 1);

my $image  = Image::Magick->new;

my $file_input = $ARGV[0];
(my $file_output = $file_input) =~ s/^.+\./crop\./;

open(IMAGE, $file_input);
$image->Read(file=>\*IMAGE);

# crop an image
$image->Crop(geometry=>'200x200');

# make cropped image
$image->Write($file_output);

say 'input img: '.$file_input."\n".'output img (cropped): '.$file_output;

undef $image;
close(IMAGE);
