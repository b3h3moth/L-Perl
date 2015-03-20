#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my $str = "regular expression, 771133 how many pair pf characters are there?";

say "A: $1" if ($str =~ /(\d)\1+/);
