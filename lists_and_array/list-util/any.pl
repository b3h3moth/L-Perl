#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use List::Util;

# any { BLOCK } LIST;
# It evalutes BLOCK, setting $_ to each element of LIST in turn. It Returns
# true if any elements makes the BLOCK return a true value.
