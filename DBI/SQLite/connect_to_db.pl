#!/usr/bin/env perl
use warnings;
use strict;
use DBI;
use v5.14;

my $driver = 'SQLite';
my $db = 'addressbook';
my $user_id = 'behemoth';
my $user_pass = '9c6k3tbnf2';

# Connection to DB
my $dsn = "DBI::$driver:dbname=$db";
my $dbh = DBI->connect(
    $dsn, 
    $user_id, 
    $user_pass, 
    { RaiseError => 1 },
) or die "DBI:errstr";

