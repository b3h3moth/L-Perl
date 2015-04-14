#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

die("Usage: $0 <string><substring>\n") if (@ARGV != 2);

chomp(my $string = $ARGV[0]);
chomp(my $substring = $ARGV[1]);

my $result = index($string, $substring);

if ($result != -1) {
    say 'string: '.$string;
    say "the substring was found at index: $result";
} else {
    say "the substring was not found";
}

