#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;
use Data::Dumper;

my $string = 'Dumping';
my $text = 'Dumping data in Perl';

print Dumper($string);
print Dumper([$string]);
