#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# Standard input can be read with <STDIN>.

# Read the next line:
# $line = <STDIN>;
# chomp($line);

# Same thing:
# chomp($line = <STDIN>);

# Same thing;
# while ( defined($_ = <STDIN>)) {
#   say $_;
# }

while (<STDIN>) {
    say $_;
}
