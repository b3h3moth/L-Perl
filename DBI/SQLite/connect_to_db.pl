#!/usr/bin/env perl
use warnings;
use strict;
use DBI;
use v5.14;

my $driver = 'SQLite';
my $db = 'addressbook';
my $user_id = '';
my $user_pass = '';

# Connection to DB
my $dsn = "DBI::$driver:dbname=$db";
my $dbh = DBI->connect(
    $dsn, 
    $user_id, 
    $user_pass, 
    { RaiseError => 1 },
) or die "DBI:errstr";

say "Database Opened with success";
