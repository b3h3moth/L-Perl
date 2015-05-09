#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# our VARIABLE;
# our (LIST OF VARIABLES);
# It allows you to declare package variables in the current package without
# needing to use the full package name. It's for package variables and not 
# lexically scoped ones.
package Bsd;

our $version = 'OpenBSD 5.7 is out (1st May 2015)';
say $version;

$Bsd::version = 'OpenBSD 5.7';
say $Bsd::version;
