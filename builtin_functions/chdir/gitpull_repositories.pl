#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;
use Cwd;

my @dirs = qw(/home/behemoth/devel/L-LP /home/behemoth/devel/L-C 
              /home/behemoth/devel/L-Perl /home/behemoth/devel/L-ASD
              /home/behemoth/devel/L-CPP);

foreach (@dirs) {
    chdir $_;
    say getcwd();
    `git status`;
    `git push origin master`;
}
