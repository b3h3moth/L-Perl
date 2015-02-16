#!/usr/bin/env perl
use warnings;
use strict;
use feature "switch";


#given/when a' analogo allo switch/case di altri linguaggi.

print "Quale frutto?: ";

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
