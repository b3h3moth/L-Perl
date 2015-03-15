#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my $sequence = "PROGRAMMINGPERLEVERYDAYISAWESOME";

#pattern match operator 'm//' indicates that we are trying to match a string
#binding operator '=~' it tells Perl to match the pattern on the right
#against the string on the left.
if ($sequence =~ m/NGPER/) {
    say "A: found";
} else {
    say "B: not found";
}

my $str = "PERL";

#if you choose the forward slash as the delimiter, you may omit the initial 'm'
# 'm//' and '//' are the same thing
if ($sequence =~ /$str/) {
    say "C: found";
} else {
    say "D: not found";
}

#se le stringhe non corrispondono, si usa !~
if ($sequence !~ m/GPERLE/) {
    say "E: found";
} else {
    say "F: not found";
}

# =~ m//    match
# =~ //     match
# !~ //     not match
# =~ s///   substitution
#       g = globally        s/T/U/g
#       i = ignore case     s/T/U/i
#                           s/T/U/gi
# =~ tr///  transliteration
