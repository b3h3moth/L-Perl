#!/usr/bin/env perl
use warnings;
use strict;

#line by line
#./prog.pl /etc/passwd
while (my $line = <>) {
    print $line;
}
