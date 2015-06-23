#!/usr/bin/env perl
use warnings;
use strict;
use DBI;
use v5.14;

# The DBI Database Interface is a database access for the Perl programming
# language.
my @available_drivers = DBI->available_drivers();
say join "\n", @available_drivers;
