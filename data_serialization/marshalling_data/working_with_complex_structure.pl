#!/usr/bin/env perl
use strict;
use warnings;
use v5.22.0;
use Data::Dump qw(dump);

# Structure I want to dump
my %hash = (
    number => 42,
    string => 'This is a string',
    array  => [ 1 .. 10 ],
    hash   => { apple => 'red', banana => 'yellow' },
);

# Print out the structures dump
print "Here is the structure before dumping to file:\n";
dump \%hash;

# Print structure to file
open my $out, '>', 'dump_struct' or die $!;
print {$out} dump \%hash;
close $out;

# Read structure back in again
open my $in, '<', 'dump_struct' or die $!;
my $data;
{
    local $/;    # slurp mode
    $data = eval <$in>;
}
close $in;

# See what the structure read in looks like
print "Here is the structure after reading from file:\n";
dump $data;
