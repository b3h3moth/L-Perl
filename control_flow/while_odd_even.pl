#!/usr/bin/env perl
use warnings;
use strict;

die "Specify al least five numbers\n" if (@ARGV < 5);

my @numbers = @ARGV;

while (@numbers) {
    my $number = shift(@numbers);

    if ($number % 2 == 0) {
        print "Number: $number is even\n";
    } else {
        print "Number: $number is odd\n";
    }
}
