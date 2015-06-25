#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use File::Temp 'tempfile';

# tempfile()
# The function make temporary files.

my $filename = 'temp';
my $fh = tempfile();
($fh, $filename) = tempfile();
