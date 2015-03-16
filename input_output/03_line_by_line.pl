#!/usr/bin/env perl
use warnings;
use strict;

#reading file line by line
#./$0 /etc/passwd
while (my $line = <>) {
    print $line;
}
