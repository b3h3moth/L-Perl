#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Image::Magick;

# instantiate an image object
my $image  = Image::Magick->new;
# with size
# my $image2 = Image::Magick->new(size=>'200x200');

my $filename = 'eve.jpg';
my $file_copy;
($file_copy = $filename) =~ s/^\w{3}/copy/;

# read an image
open(IMAGE, $filename);
$image->Read(file=>\*IMAGE);

# crop an image
$image->Crop(geometry=>'200x200');

# make an image
$image->Write($file_copy);

# finally, destroying object
undef $image;

# close filehandle
close(IMAGE);
