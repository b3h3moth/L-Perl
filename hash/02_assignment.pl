#!/usr/bin/env perl
use warnings;
use strict;
use Data::Dumper;

my %job;

#assignment
$job{luca} = 'Programmer';
$job{mamy} = 'Student';
$job{albi} = 'Professor';
$job{papi} = 'Doctor';

#multiple assignment, method 1
%job = ('carla', 'actress', 'francesco', 'actor', 'maria', 'barman');
#multiple assignment, method 2
%job = (
    'papi', 'Software developer',
    'albi', 'driver'
);
#in both cases the keys of hash are immediately followed by their respective
#values

#multiple assignment, method 3
%job = (
    franco => 'student',
    gina   => 'professor'

);

print Dumper \%job;
