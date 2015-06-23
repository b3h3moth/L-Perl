#!/usr/bin/env perl
use warnings;
use strict;
use DBI;
use v5.14;

my $driver = 'SQLite';
my $db = '';
my $username = '';
my $password = '';

# Data source
my $dsn = "dbi:SQLite:dbname=test.db";

# Database handle
my $dbh = DBI->connect(
    $dsn, 
    $username,
    $password,
    { RaiseError => 1, PrintError => 0, AutoCommit => 1 }
) or die "DBI:errstr";

say "Database Opened with success";
