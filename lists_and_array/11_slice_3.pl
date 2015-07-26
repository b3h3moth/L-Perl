#!/usr/bin/env perl
use strict;
use warnings;
use 5.22.0;
     
my %employee = (
    luca => 980144,
    maria => 128756,
    fiorenza => 903610
);

# Assign a hash slice to @id1 array
my @id1 = ($employee{"luca"}, $employee{"maria"}, $employee{"fiorenza"});

# Print all employee ids from array @id1
say join ',', @id1;

# Assign a hash slice to @id2 array
my @id2 = @employee{ qw/luca maria fiorenza/ };

# Print all employee ids from array @id2
say join ',', @id2;

my %employee2 = (
    # Name, Employee Id, Department, Location
    luca => [980144,'Hacking','Rome'],
    maria => [128756,'Operating Systems', 'NewYork'],
    fiorenza => [903610, 'Web Development', 'Campobasso']
);

# Retrive the location of all employees
my @location = ( 
    $employee2{"luca"}->[2], 
    $employee2{"maria"}->[2], 
    $employee2{"fiorenza"}->[2]
);

# Print all employee's location
say join ',', @location;
