#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# PerlMagick is an object oriented interface to Image::Magick.
use Image::Magick;

# verify if PerlMagick works:
say Image::Magick->VERSION;
