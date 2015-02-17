#!/usr/bin/env perl
use warnings;
use strict;
use v5.10;

my $pass = "bob";
my @alphabet = ('a' .. 'z');

for (my $i = 1; $i <= 1000000; $i++) {
    my $first = $alphabet[rand(26)];
    my $second= $alphabet[rand(26)];
    my $third= $alphabet[rand(26)];

    my $guess = $first . $second . $third;

    if ($guess eq $pass) {
        print "$i: pass is $guess\n";
        last;
    }
}
