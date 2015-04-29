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
            print "I love Perl\n";
            last;
        }
        when (/c?/) {
            print "I love C\n";
            last;
        }
        default {
            print "I hope you are on Unix System: ";
        }
    }
}
