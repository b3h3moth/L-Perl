#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

print "Do you like Perl Programming? ";

chomp($_ = <STDIN>);

#example with /i modifier, case-insensitive
if (/(Yes|Si)/i) {
    say "Good boy/girl";
} elsif (/No/i) {
    say "Really? go to visual basic right now";
}
