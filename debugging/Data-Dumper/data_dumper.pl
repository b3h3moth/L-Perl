#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;
use Data::Dumper;

my $string = 'Dumping';
my $text = 'Dumping data in Perl';

# Dumping unique string
print Dumper($string);

# Dumping two strings
print Dumper($string, $text);
