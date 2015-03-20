#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;


my $str = "regular expression";

say "A: $1" if ($str =~ /(.)\g1/);
