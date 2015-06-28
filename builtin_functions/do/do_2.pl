#!/usr/bin/env perl
use warnings;
use strict;

# slurp all of a file's contents into a variable

die "Usage: $0 <filename>\n" if (@ARGV != 1);
chomp( my $filename = $ARGV[0] );

my $file = do {
    # localize input record separator
    local $/;
    # localize ARGV
    local @ARGV = ( $filename );
    <>;
};

print $file;
