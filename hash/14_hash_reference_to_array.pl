#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# hash reference
my $record = { name => 'luca', email => 'my@mail.com'};

# to add a hash reference to an array, push it on:
my @database;
push @database, $record;

