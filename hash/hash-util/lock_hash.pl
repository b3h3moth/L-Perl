#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Hash::Util 'lock_hash';

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

# lock_hash() locks an entire hash, making all keys and values read-only.
# No value can be changed, no keys can be added or deleted. All key/value are
# read only.
my %server = (
     user     => '/etc/passwd',
     group    => '/etc/group',
     homedir  => '/var/www/home/behemoth',
     max_user => 100
 );

lock_hash(%server);
$server{max_user} = 20; # I Can't !
