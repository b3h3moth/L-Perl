#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;
use Cwd;

# chdir()  change the working directory

my @directories = qw(. .. / /etc /boot /var /home ~);
foreach (@directories) {
    chdir $_;
    say getcwd();
}
