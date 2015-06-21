#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# defined EXPR
# Returns a boolean value telling whether EXPR has a value other than the 
# undefined value "undef". If EXPR is not present, $_ is checked.

my $name = 'behemoth';
my $surname;

say $name if (defined($name));
say $surname if (defined($surname)) or die('$surname has undef value');
