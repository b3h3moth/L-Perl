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
my $db_connection = "DBI::$driver:dbname=$db";

