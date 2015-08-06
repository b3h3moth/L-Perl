#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;
use Scalar::Util 'dualvar';

# dualvar NUM, STRING
# Returns a scalar that has the value NUM in a numeric context and the value 
# STRING in a string context.

my $juventus = dualvar 2012, "Serie A";
my $num = $juventus + 3;
my $str = $juventus." Champion";
say $num;
say $str;

my @team = (10, 20, $juventus, 20, 10);
say @team;
