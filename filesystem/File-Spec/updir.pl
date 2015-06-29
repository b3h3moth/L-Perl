#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use File::Spec;

my $updir = File::Spec->updir();
say $updir;
