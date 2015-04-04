#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

#backticks operator '`' is a common way to run commands and capture the output
#`command`

my $modules = `cat /etc/modules`;
#output returned as a string
say $modules;

my @passwd = `cat /etc/passwd`;

say "first array element: $passwd[0]";

#output returned as an array
foreach my $line (@passwd) {
    print "$line";
}
