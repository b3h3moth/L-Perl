#!/usr/bin/env perl
use warnings;
use strict;
use feature "switch";

# The given-when control structure allows you to run a block of code when the 
# argument to given satisfies a condition, it is Perl's equivalent to C's 
# switch statement.

die ("Usage: $0 <language programming>\n") if (@ARGV != 1);

given ($ARGV[0]) {
    when (/^perl$/i) {
        print "Good boy :)\n";
    }
    when (/^c$/i) {
        print "Old school, nice!\n";
    }
    when (/(^C\+\+$|^Cpp$)/i) {
        print "Do you like hard OOP? Yeah!\n";
    }
    when (/^awk$/i) {
        print "UNIX guru must knows AWK\n";
    }
    when (/^python$/i) {
        print "Modern programming is good ... and simple!\n";
    }
    when (/^C#$/i) {
        print "I'm sorry but I prefer other stuff.\n";
    }
    default {
        print "Hey, do you a programmer yes or not?\n";
    }
}
