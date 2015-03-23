#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

#looping through multiple matches

#capture each e-mail address
my $email_list = 'bob@dylan.itjohn@from.ukluc@unix.uslarry@perl.org';

while ($email_list =~ m/([\w\.]+@[\w\.]+\.(it|org|us|uk))/gi) {
    say "e-mail: $1";
}

#assign the result of the matching operator to an array, each array element
#will contain an email address
