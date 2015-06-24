#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my @names = qw(vanessa rossana maria claudia francesca maria);

foreach (@names) {
    say "I'm working...";

    when (/maria/i) {
        say "maria is in it";
        continue;
    }

    when (/\Amari/i) {
        say "name starts with 'mari'";
        continue;
    }

    when (/giusy/) {
        say "giusy there is";
        continue;
    }

    when (/rossana/) {
        say "rossana there is";
        continue;
    }

    say "Move to default ...";

    default {
        say "I don't see anything";
    }
}
