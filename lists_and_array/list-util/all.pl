#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use List::Util qw(all);
use constant MAX_NUM => 10;

# all { BLOCK } LIST;
# It evalutes BLOCK, setting $_ to each element of LIST in turn. It returns 
# true if all elements make the BLOCK return a true value, false otherwise.
