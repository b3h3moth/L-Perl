#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# To attach a name to a capturing group, you write either (?<name>...) or
# (?'name'...).
my $text = 'My telephone number is 0874-112233';

my $prefix          = qr/\d{4}/;
my $local_number     = qr/\d{6}/;
my $telephone_number = qr/$prefix(\s|-)?$local_number/;

if ($text =~ /(?<phone>$telephone_number)/ ) {
    say "Hi, your telephone number is: $+{phone}";
}
