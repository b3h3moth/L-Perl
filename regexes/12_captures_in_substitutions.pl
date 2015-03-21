#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my $text = "Regular expression in Perl language";

say "before: \'$text\'";

#swap two words using captures in substitutions
if ($text =~ s/(\S+)\s+(\S+)/$2 $1/) {
    say " after: \'$text\'";
}
