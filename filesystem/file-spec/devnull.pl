#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use File::Spec;

# Returns a string representation null device
my $null_device = File::Spec->devnull();
say $null_device;
