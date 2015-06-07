#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# There are five special blocks executed at the beginning and at the end of a
# running program; these named code blocks are: BEGIN; CHECK; END; INIT; 
# UNITCHECK.

# UNITCHECK, CHECK and INIT code blocks are useful to catch the transition 
# between the compilation phase and the execution phase of the main program.

# CHECK
# CHECK code blocks are run just after the initial Perl compile phase ends and
# before the run time begins, in LIFO order. CHECK code blocks are used in the
# Perl compiler suite to save the compiled state of the program.
