#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

#A function receives its parameters in a single array @_
sub language {
    my ($name) = @_;
    say "I'm writing $name program";
}

language('Perl');

sub languages {
    say "One of my favorite programming languages is: $_" for @_;
}

languages('C','C++','Perl','AWK','Lisp');

#each invocation of shift will remove an item from the @_ array
sub configuration1 {
    my $os = shift;
    my $mail_server = shift;
    my $http_server = shift;
    my $db_server = shift;

    say "$os\n$mail_server\n$http_server\n$db_server";
}

configuration1('OpenBSD','OpenSMTPD','apache','SQLite');

#list of variables
sub configuration2 {
    my ($os, $mail_server, $http_server, $db_server) = @_;
    say "$os\n$mail_server\n$http_server\n$db_server";
}

configuration1('Debian','exim4','nginx','MySQL');

#array
sub configuration3 {
    my (@array) = @_;
    say "@array";
}

configuration3('FreeBSD','sendmail','http','MariaDB');
