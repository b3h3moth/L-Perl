#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;
use Cwd;

die "Usage: $0 [pull | push]\n" if (@ARGV != 1);

my $git_option = $ARGV[0];
chomp($git_option);

my @git_repositories = qw(/home/behemoth/devel/L-LP /home/behemoth/devel/L-C
                         /home/behemoth/devel/L-Perl /home/behemoth/devel/L-ASD
                         /home/behemoth/devel/L-CPP);

foreach (@git_repositories) {
    chdir $_;
    say getcwd();
    `git $git_option origin master`;
}
