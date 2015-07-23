#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;
use Data::Dumper;

# Data::Dumper
# stringified perl data structures, suitable for both printing and eval.

my $string = 'behemoth';
my $text = 'Dumping data in Perl';

# Dumping unique string
print Dumper($string);

# Dumping two strings
print Dumper($string, $text);

# Dumping string reference
print Dumper([$string, $text]);

print Dumper({$string => $text});
