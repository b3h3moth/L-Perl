#!/usr/bin/env perl
use strict;
use warnings;
use Getopt::Std;
 
# Command line options by using 'getopts' Getopt::Std package.

# Declare command line options:
my %options=();
getopts("hv:lm:n:", \%options);
 
# Check the validity of each option:
print "-h $options{h}\n" if defined $options{h};
print "-v $options{v}\n" if defined $options{v};
print "-l $options{l}\n" if defined $options{l};
print "-m $options{m}\n" if defined $options{m};
print "-n $options{n}\n" if defined $options{n};
 
# other things found on the command line
print "Other things found on the command line:\n" if $ARGV[0];
foreach (@ARGV)
{
  print "$_\n";
}
