#!/usr/bin/env perl
use warnings;
use strict;

#reading file line by line
#./prog.pl /etc/passwd
while (my $line = <>) {
    print $line;
}
