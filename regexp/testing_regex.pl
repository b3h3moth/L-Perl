#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my $string = "user:x:1000:1000:name surname:/home/user:/usr/bin/zsh";
say "String to match:\n$string\n";

die "Usage: $0 <pattern>\n" if (@ARGV != 1);

my $pattern = $ARGV[0];

if ($string =~ m/($pattern)/) {
    print "\'$pattern\'=\'$1\' matches\n";
} else {
    print "\'$pattern\' doesn't match\n";
}
