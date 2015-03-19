#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

#Capture variables are associated with parentheses inside regex, thery are also
#known as capture buffers; each pair of parentheses in a regex captures what
#its contents match and memorizes it in a capture variable.

#These special variables will be only populated if the match succeeds,
#unsuccessful match leave capture variables with the value they contained
#before the evaluation.

my $cellphone = "123-456-7890";

say "A: $1 $2 $3" if ($cellphone =~ /([0-9]{3})-([0-9]{3})-([0-9]{4})/);
#true, matches 123 456 7890

$_ = 'http://www.perlmonks.org/index.html';

if (m#^http://([^/]+)(.*)#) {
    say "B: host $1"; #true, matches www.perlmonks.orf
    say "C: path $2"; #true, matches /index.html
}

#the '$+' special variable contains the value of the last non empty buffer
say "special variable \$+: $+";

my $movie = "Natural born killers, by Oliver Stone";
say "D: $1" if ($movie =~ /\s([a-zA-Z]+),/); #true, matches killers

say "special variable \$+: $+";


