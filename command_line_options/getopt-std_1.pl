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
# The string 'hvp:' specifies that there are four options: -h, -v, and -p. 
# The colon following p indicates that -p expects an additional argument. 
#
# The other options do not take arguments.
getopts('hvp:', \%opt);

if ($opt{h}) {
    print $usage; 
    exit;
}

if ($opt{v}) {
    print "Version basics 0.1\n"; 
    exit;
}

if ($opt{p}) {
    print "Parameter is: $opt{p}\n"; 
    exit;
}

# Any other arguments that were specified on the command line.
say "Other arguments were: @ARGV";
