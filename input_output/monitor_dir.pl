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

if ($opt{d}) {
    usage();
}

open(DIR, " du -sk $opt{d}\/\* |") or die "Cannot open dir: $!";

while (<DIR>) {
    chomp;
    say $_;
}

sub usage() {
    say "Usage:";
    say "$0 -d <dirname>\n";

    exit;
}
