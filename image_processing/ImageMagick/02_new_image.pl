#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Image::Magick;

# instantiate an image object
my $image  = Image::Magick->new;
# with size
my $image2 = Image::Magick->new(size=>'200x200');

# finally, destroying it
undef $image;
undef $image2;
