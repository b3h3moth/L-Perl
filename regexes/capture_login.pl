#!/usr/bin/env perl
use warnings;
use strict;

my $file = "/etc/passwd";

open(INPUT, "<", "$file") or die "Err. open file: $!";

while (my $line = <INPUT>) {
    print "login: $1\n"  if ($line =~ /([a-z]+):/);
}
