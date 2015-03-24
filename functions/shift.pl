#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

#shift function perform actions on the start of the array (the left side).
my @club = qw(Juventus Barcellona RealMadrid Bayern);

#Juventus is really my favorite club :)
my $my_favorite_club = shift(@club);
#now there is Barcellona etc...
my $next_club = shift(@club);

say $my_favorite_club;
say $next_club;
