#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my $file = "/etc/passwd";

open(INPUT, "<", "$file") or die "Err. open file: $!";

while (my $line = <INPUT>) {
    say "$1 $2 $3 $4 $5 $6" if ($line =~ /(\w+):(\w+):(\d+):(\d+):(.*):(.*)/);
}
