#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# There are five special blocks executed at the beginning and at the end of a
# running program; these named code blocks are: BEGIN; CHECK; END; INIT; 
# UNITCHECK.

# UNITCHECK, CHECK and INIT code blocks are useful to catch the transition 
# between the compilation phase and the execution phase of the main program.

# UNITCHECK
# UNITCHECK blocks are run just after the unit which defined them has been 
# compiled.


say "First line";

UNITCHECK {
    say "first UNITCHECK";
}

CHECK {
    say "first CHECK";
}

say "Second line";

INIT {
    say "first INIT";
}

UNITCHECK {
    say "second UNITCHECK";
}

say "Third line";

CHECK {
    say "second CHECK";
}

INIT {
    say "second INIT";
}
