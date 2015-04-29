#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use feature "switch";

# The given-when control structure allows you to run a block of code when the 
# argument to given satisfies a condition, it is Perl's equivalent to C's 
# switch statement.

say "Which is you favorite programming language? ";

given ($ARGV[0]) {
    when (/perl/i) {
        print "Good boy :)\n";
    }
    when (/C/i) {
        print "Old school, nice!\n";
    }
    when (/(C++|Cpp)/i) {
        print "Do you like hard OOP? Yeah!\n";
    }
    when (/awk/i) {
        print "I like programming UNIX too\n";
    }
    when (/python/i) {
        print "Modern programming is good\n";
    }
    when (/C#/i) {
        print "What? Only serious programmer please. \n";
    }
    default {
        print "Hey, are you a programmer yes or not\n";
    }
}
