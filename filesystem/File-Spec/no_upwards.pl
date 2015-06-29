#!/usr/bin/env perl
use warnings;
use strict;
use diagnostics;
use v5.14;
use File::Spec;

opendir(DH, '.') or die "opendir() failed: $!";
my @files = File::Spec->no_upwards( readdir(DH) );
say join "\n", @files;
