#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use File::Spec;

# Returns a string representation of the first writable directory from a list 
# of possible temporary directory; in Unix System checks $ENV{TMPDIR} and /tmp.

my $tmp_dir = File::Spec->tmpdir();
say $tmp_dir;
