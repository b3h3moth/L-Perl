#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;
use Data::Dumper;

#$Data::Dumper::Indent = 0;

# Marhalling in computer science is the process of transforming the memory of
# an object to a data format suitable for storage or transmission, and it is
# typically used when data must be moved between different parts of a computer
# program or from one program to another. It is similar to serialization.

my $dog_name = 'luna';
my $colors = ['black', 'green', 'gray', 'blu', 'red', 'white'];

say "Print out the original values:";
print '$dog_name = ', $dog_name, "\n";
print '$district = [', join ', ',@$colors, ']';

# new Data::Dumper object
my $dumper_a = Data::Dumper->new( [$dog_name], [qw(dog_name)] );
my $dumper_b = Data::Dumper->new( [$colors], [qw(colors)] );

# Dump the Perl values out into a variable
my $dumped_val = $dumper_a->Dump().$dumper_b->Dump();

open(MYDUMP, '>', 'new.txt') or die "cannot write file\n";
print MYDUMP $dumped_val;
close(MYDUMP);

# Reset each value of the variables
$dog_name = 'aaa';
$colors = ['xxx','yyy','zzz','kkk','jjj','www','hhh','iii'];

# Print out the new values
say "\nPrint out the new values:";
print '$dog_name = ', $dog_name, "\n";
print '$colors = [', join ', ',@$colors, ']';

# slurp!
my $data = do {
    local $/;
    open(GETDUMP, '<', 'new.txt') or die "cannot read file\n";
    <GETDUMP>;
    close(GETDUMP);
};

$dumped_val = eval $data;
say "\n\nPrint out the original values - after eval() invocation:";
print '$dog_name = ', $dog_name, "\n";
print '$colors = [', join ', ',@$colors, ']';
