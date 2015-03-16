#!/usr/bin/env perl
use warnings;
use strict;
use v5.10;

my %count;

die "Usage ./$0 <str 1><str 2><str 3>...<str N>\n" if (@ARGV < 4);

#count each word
foreach my $word (@ARGV) {
    $count{$word}++;
}

#print sort results (keys)
foreach my $word (sort keys %count) {
    print "$word\t$count{$word}\n";
}
