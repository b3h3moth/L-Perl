#!/usr/bin/env perl
use warnings;
use strict;

my @words = qw(tanto va la gatta al lardo che ci lascia la zampogna);
my @long_words;

foreach my $word (@words) {
    print "$word\n";
    if (length($word) >= 6) {
        push(@long_words, $word);
    }
}

print "Therewhere ", scalar(@long_words)," long_words\n";
print "@long_words";

