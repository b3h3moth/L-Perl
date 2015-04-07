#!/usr/bin/env perl
use warnings;
use strict;

die "Usage: $0 <filename>\n" if (@ARGV != 1);

#reading file line by line
#./$0 /etc/passwd
while (my $line = <>) {
    print $line;
}
