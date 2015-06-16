#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my $string = 'ŧ¶';
my $length = length($string);
print "$string has $length characters\n";

use utf8;
my $ustring = 'ŧ¶';
my $ulength = length($ustring);
print "$ustring has $ulength characters\n";
