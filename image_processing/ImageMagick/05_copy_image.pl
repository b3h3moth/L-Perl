#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Image::Magick;

my $image  = Image::Magick->new;

die("Usage: $0 <input img> (scale)\n") if (@ARGV != 1);

my $file_input = $ARGV[0];

my $file_output;
($file_output = $file_input) =~ s/^.+\./copy\./;

open(IMAGE, $file_input);
$image->Read(file=>\*IMAGE);

# make a copy
$image->Write($file_output);

undef $image;
close(IMAGE);
