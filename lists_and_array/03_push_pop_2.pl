#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;

my @words = qw(Buffal Soldier Dreadlock Rasta 
               There was a buffalo soldier in
               the heart of America);
my @long_words;

foreach my $word (@words) {
    print "$word\n";
    if (length($word) >= 6) {
        push(@long_words, $word);
    }
}

print "Therewhere ", scalar(@long_words)," long_words\n";
print "@long_words";
