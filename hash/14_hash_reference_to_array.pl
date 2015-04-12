#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my @record = (
    { name => 'luca', email => 'luca@mluca.com'},
    { name => 'gino', email => 'gino@gino.com'},
    { name => 'paola', email => 'paol@paola.com'},
    { name => 'carla', email => 'carla@carla.com'},
    { name => 'giusy', email => 'giusy@giusy.com'},
);

foreach my $rec (@record) {
    say "$rec->{name}:$rec->{email}";
}
