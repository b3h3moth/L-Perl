#!/usr/bin/env perl
use warnings;
use strict;
use feature "switch";

# The given-when control structure allows you to run a block of code when the 
# argument to given satisfies a condition, it is Perl's equivalent to C's 
# switch statement.

say "Which is you favorite programming language? ";

while (1) {
    my $fruit_name = <>;
    chomp $fruit_name;
    
    given ($fruit_name) {
        when (/arance?/) {
            print "Mi piacciono le $fruit_name\n";
            last;
        }
        when (/mele?/) {
            print "Adoro le $fruit_name\n";
            last;
        }
        when (/banane?/) {
            print "Preferisco le $fruit_name\n";
            last;
        }
        when (/ananas?/) {
            print "Sono ghiotto di $fruit_name\n";
            last;
        }
        default {
            print "Nom mangiare frutta fa male alla salute!!!\nRiprova: ";
        }
    }
}
