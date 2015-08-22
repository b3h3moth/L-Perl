#!/usr/bin/env perl
use warnings;
use strict;
use v5.20.0;
use Cwd;

die "Usage: $0 [pull | push]\n" if (@ARGV != 1);

my $git_option = $ARGV[0];

my @dirs = qw(/home/behemoth/devel/L-LP /home/behemoth/devel/L-C
              /home/behemoth/devel/L-Perl /home/behemoth/devel/L-ASD
              /home/behemoth/devel/L-CPP);

foreach (@dirs) {
    chdir $_;
    say getcwd();
    `git status`;
    `git $git_option origin master`;
}
