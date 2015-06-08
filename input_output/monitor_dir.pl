#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Getopt::Std;
use File::HomeDir;

# Display directory size

my $path = File::HomeDir->my_home();

getopts('d');

my %opt;

getopts('hvp:', \%opt);

if ($opt{'d'} eq '') {
    usage();
}

open(DIR, " du -sk $opt_d\/\* |") or die "Cannot open dir: $!";

while (<DIR>) {
    chomp;
    say $_;
}

sub usage() {
}
