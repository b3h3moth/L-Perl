#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Data::Dumper;
use Person3;

my $person = Person3->new("behemoth","italy","Computer Scientis","Perl");
print Dumper \$person;
