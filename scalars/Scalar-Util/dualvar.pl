#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;
use Scalar::Util 'dualvar';

# dualvar NUM, STRING
# Returns a scalar that has the value NUM in a numeric context and the value 
# STRING in a string context.

my $str_and_num = dualvar 2012, "Serie A";
my $num = $str_and_num + 3;
my $str = $str_and_num." Champion";
say $num;
say $str;

my @team = (10, 20, $str_and_num, 20, 10);
say @team;
