#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my $password = "9n0A";

#using dash to specify range of numbers or characters
say "$password" if ($password =~ m/[0-9][a-z][0-9][A-Z]/);
#both work fine. Final 'i' stands for ignore case
say "(with ignore case) $password" if ($password =~ m/[0-9][a-z][0-9][a-z]/i);
