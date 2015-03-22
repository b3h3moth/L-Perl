#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

#Perl defines the following zero-width assertions.
#
#\b match a word boundary;
#\B match except at a word boundary;
#\A match only at beginning of string;
#\Z match only at end of string, or before newline at the end;
#\z match only at end of string;
#\G match only at pos() (e.g. at the end-of-match position of prior m//g).

my $str1 = "unix developers";
my $str2 = "unix devel";

say "A: $&" if ($str1 =~ /\bdevel\b/);
say "B: $&" if ($str2 =~ /\bdevel\b/);
