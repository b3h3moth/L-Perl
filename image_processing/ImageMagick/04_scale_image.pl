#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Image::Magick;

my $image  = Image::Magick->new;

my $file_output;
($file_output = $filename) =~ s/^.+\./scale\./;

open(IMAGE, $filename);
$image->Read(file=>\*IMAGE);

# scale an image
$image->Scale(geometry=>'800x600');

# make scaled image
$image->Write($file_output);

undef $image;
close(IMAGE);
