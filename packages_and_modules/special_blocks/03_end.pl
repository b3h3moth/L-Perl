#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# There are five special blocks executed at the beginning and at the end of a
# running program; these named code blocks are: BEGIN; CHECK; END; INIT; 
# UNITCHECK.

# END
# An END block is executed as late as possible, after perl has finished running
# the program and just before the interpreter is being exited.

say "A";

END {
    say "B";
}

exit;

END {
    say "C";
}
