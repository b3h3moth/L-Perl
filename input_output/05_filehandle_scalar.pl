#!/usr/bin/env perl
use warnings;
use strict;

# Read file, reverse each line and then print output in a new file.

die "Usage: ./prg.pl <input_filename>\n" if (@ARGV != 1);

my ($input_file) = @ARGV;
my $output_file = "reverse_$input_file";

# Read file
open(my $in, "< $input_file") or die "Err. reading $input_file. $!";

# Write into file
open(my $out, "> $output_file") or die "Err. reading $output_file. $!";

# Always check if that files have been opened correctly
while (<$in>) {
    chomp;
    my $reverse = reverse $_;
    print $out "$reverse\n";
}

close($input_file);
close($output_file);

