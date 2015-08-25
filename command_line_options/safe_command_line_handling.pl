#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;

# Perl v5.22.0 new operator; safe command line handling with <<>>.

# Double diamonds <<>> is like <> but uses three-argument open to open each 
# file in @ARGV. This means that each element of @ARGV will be treated as an
# actual file name, and "|foo" won't be treated as a pipe open.

while (<<>>) {
    print $_;
}
