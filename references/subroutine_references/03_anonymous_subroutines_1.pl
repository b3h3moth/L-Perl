#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;

# An anonymous subroutine is a subroutine without a name, it behaves like a 
# named subroutine but the only way to deal with it is by reference.

my $login = sub { 
    my $username = shift // 'anon';
    
    if ($username eq "behemoth") {
        say "Access granted as '$username'";
    } elsif ($username eq "anon") {
        say "Access granted as '$username' (read only)";
    } else {
        say "Access denied as '$username'";
    }
}; # We need a semicolon to (en)close the statement.

$login->('BEHEMOTH');

my $user = 'behemoth';

&$login($user);
&{$login}('luca'); 
&$login('anon');
&$login;

