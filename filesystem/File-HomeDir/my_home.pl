#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use File::HomeDir;

# The my_home() method takes no arguments and returns the main home-profile
# directory for the current user.
my $home = File::HomeDir->my_home();
say 'My home is: ', $home;
