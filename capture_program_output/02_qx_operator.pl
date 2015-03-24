#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

#qx operator is an alrternative to backticks
my $kernel = qx/uname -a/;

say 'my kernel is: '.$kernel;
