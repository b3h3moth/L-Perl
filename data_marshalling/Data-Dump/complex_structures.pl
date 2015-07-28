#!/usr/bin/env perl
use strict;
use warnings;
use v5.22.0;
use Data::Dump qw(dump);

my $file_dump = 'dumped_structure.txt';

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
open (DUMP_OUT, '>', $file_dump) or die "Cannot write $file_dump: $!\n";
print DUMP_OUT dump \%hash;
close(DUMP_OUT);

# Read structure back in again
open (DUMP_IN, '<', $file_dump) or die "Cannot read $file_dump: $!\n";

my $data;
{
    # slurp!
    local $/;
    $data = eval <DUMP_IN>;
}

close(DUMP_IN);

# See what the structure read in looks like
print "Here is the structure after reading from file:\n";
dump $data;
