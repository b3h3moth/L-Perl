#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Image::Magick;

die ("Usage: $0 <input img> (border)>\n") if (@ARGV != 1);

my $image  = Image::Magick->new;

my $file_input = $ARGV[0];
(my $file_output = $file_input) =~ s/^.+\./border\./;

open(IMAGE, $file_input);
$image->Read(file=>\*IMAGE);

# make border
$image->Border(geometry=>'5x5',bordercolor=>'#ffffff');

# make image with border
$image->Write($file_output);

say 'input img: '.$file_input."\n".'output img (with border): '.$file_output;

undef $image;
close(IMAGE);
