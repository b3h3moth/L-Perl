#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# our VARIABLE;
# our (LIST OF VARIABLES);
# It allows you to declare package variables in the current package without
# needing to use the full package name.

package Bsd;
our $version = 'OpenBSD 5.7 is out (1st May 2015)';
$BSD::version = 'OpenBSD 5.7 is out (1st May 2015)';
