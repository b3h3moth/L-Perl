#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Getopt::Std;

# Getopt::Std is used for single-character options

# options supported by the program
my $usage = "Usage: $0 [options] <arguments...>

Options:
-h help
-v version
";

# the die() function on line 12 will print the usage message only if the 
# program is not given any arguments on the command line. 
die $usage unless @ARGV;

my %opt;

getopts('hvp:', \%opt);

if ($opt{h}) {
    print $usage; 
    exit;
}

if ($opt{v}) {print "version 1.0\n"; exit}
if ($opt{p}) {print "version 1.0\n"; exit}

say "Other arguments were: @ARGV";
