#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Hash::Util;

# An hash whose keys or values can't be altered
my %server = (
     user     => '/etc/passwd',
     group    => '/etc/group',
     homedir  => '/home/myname',
     max_user => 100
 );
     
