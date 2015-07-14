#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# A function receives its parameters in a single array @_
sub language {
    my ($name) = @_;
    say "I'm writing $name program";
}

&language('Perl');

sub languages {
    say "One of my favorite programming languages is: $_" for @_;
}

&languages('C','C++','Perl','AWK','Lisp');

# Each invocation of shift will remove an item from the @_ array
sub configuration1 {
    my $os = shift;
    my $mail_server = shift;
    my $http_server = shift;
    my $db_server = shift;

    say "A: $os\nA: $mail_server\nA: $http_server\nA: $db_server";
}

&configuration1('OpenBSD','OpenSMTPD','apache','SQLite');

# list assignment (much more clear)
sub configuration2 {
    my ($os, $mail_server, $http_server, $db_server) = @_;
    say "B: $os\nB: $mail_server\nB: $http_server\nB: $db_server";
}

&configuration2('Debian','exim4','nginx','MySQL');

# array assignment
sub configuration3 {
    my (@array) = @_;
    say "C: @array";
}

&configuration3('FreeBSD','sendmail','http','MariaDB');

my %italian_football_club = (
    torino => 'torino',
    milano => 'milan',
    genova => 'genoa',
);

# hash assignment
sub print_club {
    my %club = @_;

    while (my ($name, $city) = each %club) {
        say "$name: $city";
    }
}

&print_club(%italian_football_club);

sub print_club_city {
    my ($club_name, %club_city) = @_;

    while (my ($name, $city) = each %club_city) {
        next unless $city eq $name;
        say "$name is a football team of $city";
    }
}

&print_club_city('torino', %italian_football_club);
