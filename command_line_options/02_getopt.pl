#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Getopt::Std;

my $usage = "Usage: $0 [options] <arguments...>

Options:
-h help
-v version
";

die $usage unless @ARGV;

my %opt;

getopts('hv:', \%opt);

if ($opt{h}) {print $usage; exit}
if ($opt{v}) {print "version 1.0\n"; exit}

say "Other arguments were: @ARGV";
