#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use File::Spec;

# Returns a string representation of the parent directory.
my $updir = File::Spec->updir();
say $updir;
