#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my @names = qw(vanessa rossana maria);

foreach (@names) {
    when (/ari/i) {
        say "name has 'ari' in it";
        continue;
    }

    when (/\Amari/i) {
        say "name starts with 'mari'";
        continue;
    }

    when (/'maria'/) {
        say "name is maria";
        continue;
    }

    default {
        say "I don't see anything";
    }
}
