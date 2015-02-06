#!/usr/bin/env perl
use warnings;
use strict;


my $dna ="ATCAYCAGTACAGAGAGAGAGA";
my $length = length($dna);
die "$length is not a valid length" if ($length < 100);

# oppure
# if($eta < $tot) {
#     die "aiaiaiaa non bene\n";
# }
