#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# chr NUMBER
# It converts a number to a character. It returns the character rapresented by
# NUMBER in the craracter set.

my $number = 97;
my $result_char_conversion = chr($number);
say "$number:$result_char_conversion";

foreach(97..122) {
    say "$_ = ASCII ".chr($_);
}
