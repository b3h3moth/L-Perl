#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Getopt::Long;

my $usage = "Usage: $0 [options] <arguments...>

Options:
--version
--help
--flag
--number <number>
--string <string>
";

# Variables that will correspond to each of the possible command-line options.
my $flag;
my $number;
my $string;

# GetOptions() function to parse the specified command-line options.

GetOptions(
    "flag"      => \$flag,
    
    # How to associate arguments with particular options:
    # 'i' = integer
    # 's' = string
    # 'f' = floating point
    "number=i"  => \$number, 
    "string=s"  => \$string, 

    "version"   => sub {print "1.0\n"; exit},
    "help"      => sub {print $usage; exit},
);

if ($flag) {
    print "flag turned on\n";
}
     
if ($string) {
    print "string set: $string\n";
}
     
if ($number) {
    print "number set: $number\n";
}

print "Other arguments were: @ARGV\n";
