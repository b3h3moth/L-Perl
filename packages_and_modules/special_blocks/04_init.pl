#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# There are five special blocks executed at the beginning and at the end of a
# running program; these named code blocks are: BEGIN; CHECK; END; INIT; 
# UNITCHECK.

# UNITCHECK, CHECK and INIT code blocks are useful to catch the transition
# between the compilation phase and the execution phase of the main program.

# INIT
# INIT blocks are run just before the Perl runtime begins execution, in FIFO 
# order.
