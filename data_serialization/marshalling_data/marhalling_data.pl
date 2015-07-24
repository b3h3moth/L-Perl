#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;
use Data::Dumper;

$Data::Dumper::Indent = 0;

# Marhalling in computer science is the process of transforming the memory of
# an object to a data format suitable for storage or transmission, and it is
# typically used when data must be moved between different parts of a computer
# program or from one program to another. It is similar to serialization.

my $dog_name = 'luna';
my $colors = ['black', 'green', 'gray', 'blu', 'red', 'white'];

print '$dog_name = ', $dog_name, "\n";
print '$district = [', join ', ',@$colors, ']';

# new Data::Dumper object
my $dumper_a = Data::Dumper->new( [$dog_name], [qw(dog_name)] );
my $dumper_b = Data::Dumper->new( [$colors], [qw(colors)] );

# Dump the Perl values out into a variable
my $dumped_val = $dumper_a->Dump()."\n".$dumper_b->Dump();

# Show what Data::Dumper has made of the variables!
say "\nPerl Data::Dumper:";
print $dumped_val, "\n";

# Reset the variables
$dog_name = 'weak';
$colors = ['weak','weak','weak','weak','weak','weak'];

# Print out the new values
print '$dog_name = ', $dog_name, "\n";
print '$district = [', join ', ',@$colors, ']';


# Historical note: Data Marshalling is so named because it was first studied in
# 1962 by Edwars Waire Marshalll.
