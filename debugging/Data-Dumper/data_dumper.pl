#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;
use Data::Dumper;

# Data::Dumper
# stringified perl data structures, suitable for both printing and eval.

my $string = 'behemoth';
my $text = 'Dumping data in Perl';
my %hash = (
    1 => 10,
    2 => 20,
    3 => 30,
    4 => 40
);

# Dumping unique string
print Dumper($string);

# Dumping two strings
print Dumper($string, $text);

# Dumping reference
print Dumper([$string]);

# Dumping Hash
print Dumper(\%hash);

# output on the same line
$Data::Dumper::Indent = 0;
# output with sorted keys
$Data::Dumper::Sortkeys = 1;
print Dumper(\%hash);
