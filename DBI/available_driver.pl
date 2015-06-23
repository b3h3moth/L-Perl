#!/usr/bin/env perl
use warnings;
use strict;
use DBI;

# The DBI Database Interface is a database access for the Perl programming
# language.
my @available_drivers = DBI->available_drivers();
