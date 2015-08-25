#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;

# from Perl v5.22.0 we have safe command line handling, <<>>

while (<<>>) {
    print $_;
}
