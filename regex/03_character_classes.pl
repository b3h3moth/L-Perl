#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my $lang = "perl";
my $superhero = "super-man";
my $year = "2015";
my $name = "michele";

#character classes is a set of allowed characters,
#specifying one character to match into square brackets.

if ($lang =~ m/[Pp]erl/) { say "I use $lang every day"; }
if ($superhero =~ m/super[ -]man/) { say "but I'm not $superhero :)"; }
if ($year =~ m/201[0123456789]/) { say "I hope $year will be good"; }

#grouping: match 'michele', 'michela' and 'michelle'
if ($name =~ m/michel([ae]|le)/) { say "Italian name \'$name\' is very old"; }
