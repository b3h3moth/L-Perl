#!/usr/bin/env perl
use warnings;
use strict;
use DBI;
use v5.14;

my $driver = 'SQLite';
my $db = '';
my $user_id = '';
my $user_pass = '';

# Connection to Database
my $data_source = "DBI::$driver:dbname=$db";

# Database handle
my $dbh = DBI->connect(
    $dsn, 
    $user_id, 
    $user_pass, 
    { RaiseError => 1 },
) or die "DBI:errstr";

say "Database Opened with success";
