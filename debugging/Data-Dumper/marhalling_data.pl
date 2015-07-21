#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;
use Data::Dumper;

# Marhalling in computer science is the process of transforming the memory of
# an object to a data format suitable for storage or transmission, and it is
# typically used when data must be moved between different parts of a computer
# program or from one program to another. It is similar to serialization.

my @ita_football_club = qw(juventus torino inter milan sampdoria genoa);
my @eng_football_club = qw(chelsea arsenal liverpool city united leeds);

push @eng_football_club, \@ita_football_club;
push @ita_football_club, \@eng_football_club;

my $string = Dumper(\@ita_football_club, \@eng_football_club);
