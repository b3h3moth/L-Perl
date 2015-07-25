#!/usr/bin/env perl
use strict;
use warnings;
use v5.22.0;
use Data::Dump qw(dump);

# Structure I want to dump
my %hash = (
    number => 31,
    string => 'Marshallindg Data in Perl',
    array  => [ 5 .. 10 ],
    hash   => { ferrari => 'red', ducati => 'red' },
);

# Print out the structures dump
print "Here is the structure before dumping to file:\n";
dump \%hash;

# Print structure to file
open my $out, '>', 'dumped_structure.txt' or die $!;
print {$out} dump \%hash;
close $out;

# Read structure back in again
open my $in, '<', 'dumped_structure.txt' or die $!;
my $data;
{
    local $/;    # slurp mode
    $data = eval <$in>;
}
close $in;

# See what the structure read in looks like
print "Here is the structure after reading from file:\n";
dump $data;
