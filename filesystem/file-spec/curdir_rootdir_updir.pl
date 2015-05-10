#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use File::Spec;

#How to get current, root and up directories
my $cur_directory = File::Spec->curdir();
my $root_directory = File::Spec->rootdir();
my $up_directory = File::Spec->updir();

say "current dir: $cur_directory";
say "   root dir: $root_directory";
say "     up dir: $up_directory";
