#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Image::Magick;

die("Usage: $0 <input img> (scale)\n") if (@ARGV != 1);

my $image  = Image::Magick->new;

my $file_input = $ARGV[0];

my $file_output;
($file_output = $file_input) =~ s/^.+\./scale\./;

open(IMAGE, $file_input);
$image->Read(file=>\*IMAGE);

# scale an image
$image->Scale(geometry=>'800x600');

# make scaled image
$image->Write($file_output);

say 'input img: '.$file_input."\n".'output img (scaled): '.$file_output;

undef $image;
close(IMAGE);
