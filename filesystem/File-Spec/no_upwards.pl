#!/usr/bin/env perl
use warnings;
use strict;
use diagnostics;
use v5.14;
use File::Spec;

# Given a list of file names, strip out those that refer to a parent directory.
opendir(DH, '.') or die "opendir() failed: $!";
my @files = File::Spec->no_upwards( readdir(DH) );
say join "\n", @files;
