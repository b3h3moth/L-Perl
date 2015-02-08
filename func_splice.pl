#!/usr/bin/env perl
use warnings;
use strict;
use Data::Dumper;

#splice ARRAY, OFFSET, LENGTH, LIST
#rimuove LENGTH elementi a partire da OFFSET nell'ARRAY, rimpiazza con LIST se
#e' stato inserito
#L'OFFSET inizia da zero
my @skills = qw(C C++ win$oz Perl Awk Unix);
my $new_skill = 'System Programming';

foreach my $name (@skills) {
    print "skill: $name\n";
}

#elimino il terzo elemento e aggiungo uno nuovo
splice @skills, 2, 1, $new_skill;

print "\n\nNew skills: \n";
foreach my $name (@skills) {
    print "skill: $name\n";
}

my @os_skylls = qw(Unix GNU/Linux OpenBSD FreeBSD);

#Aggiungo un array nel precedente, dal primo elemento
splice @skills, 0, 0, @os_skylls;

print Dumper \@skills;
