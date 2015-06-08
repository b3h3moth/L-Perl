#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Getopt::Std;
use File::HomeDir;

# Display directory size

#my $path = File::HomeDir->my_home();
my $path = '/home/behemoth';
my $usage = "Usage: $0 [options] <arguments...>

Options:
-d directory;
";

getopts('d');

my %opt;

getopts('hvp:', \%opt);

if ($opt{d} eq '') {
    say $usage;
}

open(DIR, " du -sk $opt{d}$path |") or die "Cannot open dir: $!";

while (<DIR>) {
    chomp;
    my @record = split
}
