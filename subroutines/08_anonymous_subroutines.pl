#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# An anonymous function is a subroutine without a name, it behaves like a named
# subroutine but the only way to deal with it is by reference.

my $opinion = sub { say 'Information wants to be free' };
$opinion->();

my $login_name = 'behemoth';
my $access = sub { say $login_name };
&$access();
&{$access}();
&{$access};
&$access;
