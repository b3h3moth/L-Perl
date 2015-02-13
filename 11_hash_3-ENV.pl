#!/usr/bin/env perl
use warnings;
use strict;
use v5.10;

#accesso singoli elementi hash %ENV
print "PATH is $ENV{PATH}\n";
print "HOME is $ENV{HOME}\n";
print "SHELL is $ENV{SHELL}\n";

#for my $chiave (keys %ENV)
#{
#    say "Chiave: $chiave";
#}
#
#for my $value (values %ENV)
#{
#    say "Valore: $value";
#}

#iterazioni su tutte le coppie chiave:valore dell'hash %ENV
while (my ($env_var, $env_var_values) = each %ENV)
{
    say "$env_var: $env_var_values";
}
