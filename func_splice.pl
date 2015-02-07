#!/usr/bin/env perl
use warnings;
use strict;

#splice ARRAY, OFFSET, LENGTH, LIST
#rimuove LENGTH elementi a partire da OFFSET nell'ARRAY, rimpiazza con LIST se
#e' stato inserito

my @skills = qw(C C++ win$oz Perl Awk Unix);
my $new_skill = 'System Programming';

foreach my $name (@skills) {
    print "skill: $name\n";
}
splice @skills, 2, 1, $new_skill;

print "\n\nNew skills: \n";
foreach my $name (@skills) {
    print "skill: $name\n";
}
