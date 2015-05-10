#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# How to find module in 'lib/' directory
use lib 'lib';
use Unix::Utilities;

my $os_host = Unix::Utilities::get_hostname();
my $id = Unix::Utilities::get_id();
say 'My host is '.$os_host.', my ID is '.$id;

# get package variable:
say 'Module version: '.$Unix::Utilities::VERSION;

# get value from subroutine (read only value);
my $MAX_USERS = Unix::Utilities::max_users();
say 'Max users: '.$MAX_USERS;
