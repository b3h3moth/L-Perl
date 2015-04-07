#!/usr/bin/env perl
use warnings;
use strict;
use diagnostics;

my $filename = '/etc/fstab';

open(my $spies_to_espy, '<', $filename)
    or die "Cannot open `$filename' for writing: $!";

while ( my $line = <$spies_to_espy> ) {
    next if $line =~ /^#/; # skip comments

    #my ($name, $case_number, $description ) = split /\W/, $line;
    #print "$name ($case_number): $description\n";
    print "$1\n" if ($line =~ /^UUID=(\w{8}-\w{4})/);
}

close($spies_to_espy) or die "Could not close `$filename': $!";
