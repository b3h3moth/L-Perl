#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Hash::Util;

# An hash whose keys or values can't be altered
my %workstation = (
     user     => '/etc/passwd',
     group    => '/etc/group',
     homedir  => '/home/myname',
     max_user => 10
 );

say 'Before: ', $workstation{homedir};
# Fix value, I'm working on hash %workstation
$workstation{homedir} = '/home/behemoth';
say ' After: ', $workstation{homedir};

my %server = (
     user     => '/etc/passwd',
     group    => '/etc/group',
     homedir  => '/var/www/home/behemoth',
     max_user => 100
 );

