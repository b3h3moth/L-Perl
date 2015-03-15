#!/usr/bin/env perl
use warnings;
use strict;

my $sequence = "AACTAGCGGATTCCAGACCGT";

#binding operator =~
#matching operator 'm//' indicates that we are trying to match a string
if ($sequence =~ m/GATTCCA/) {
    print "sequence found\n";
} else {
    print "sequence not found\n";
}

my $str = "TAGCGGA";

#if you choose the forward slash at the delimiter, you may omit the initial m
if ($sequence =~ /$str/) {
    print "found $str\n";
} else {
    print ("not found $str\n");
}

#se le stringhe non corrispondono, si usa !~
if ($sequence !~ m/GATTCCA/) {
    die "Found sequence\n";
} else {
    print ("not found\n");
}

# =~ m//    match
# =~ //     match
# !~ //     not match
# =~ s///   substitution
#       g = globally        s/T/U/g
#       i = ignore case     s/T/U/i
#                           s/T/U/gi
# =~ tr///  transliteration
