#!/usr/bin/env perl
use warnings;
use strict;
use DBI;
use v5.14;

my $db_driver = 'SQLite';
my $db_name = 'test.db';
my $username = '';
my $password = '';

# Data source
my $dsn = "dbi:$db_driver:dbname=$db_name";

# Database handle
my $dbh = DBI->connect(
    $dsn, 
    $username,
    $password,
    { RaiseError => 1, PrintError => 0, AutoCommit => 1 }
) or die "DBI:errstr";

say "Database \'$db_name\' Opened with success.";
