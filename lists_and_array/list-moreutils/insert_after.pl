#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use List::MoreUtils qw(insert_after);

# insert_after BLOCK VALUE LIST
#
# Inserts VALUE after the first item in LIST for which the criterion in BLOCK 
# is true.
