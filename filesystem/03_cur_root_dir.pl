#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use File::Spec;

#How to get current and root directories
my $cur_directory = File::Spec->curdir();
my $root_directory = File::Spec->rootdir();

print "current dir: $cur_directory\nroot dir: $root_directory";
