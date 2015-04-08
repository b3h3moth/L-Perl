#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Image::Magick;

# instantiate an image object
my $image  = Image::Magick->new;
# or with size
# my $image2 = Image::Magick->new(size=>'200x200');

my $filename = 'eve.jpg';
my $file_copy;
($file_copy = $filename) =~ s/^\w{3}/copy/;

# read an image
open(IMAGE, $filename);
$image->Read(file=>\*IMAGE);

# display an image
$image->Display();

# finally, destroying object
undef $image;

# close filehandle
close(IMAGE);
