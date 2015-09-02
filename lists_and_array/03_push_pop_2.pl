#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;

my @words = qw(Buffal Soldier Dreadlock Rasta 
               There was a buffalo soldier in
               the heart of America);

# Save long words
my @long_words;

# Loop each element of the list
foreach my $word (@words) {
    print "$word ";

    # Save long words greater than 6 into list
    if (length($word) >= 6) {
        push(@long_words, $word);
    }
}

say "\nLyrics has ", scalar(@long_words)," long words:";
say "@long_words";
