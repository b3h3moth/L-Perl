#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

#first example

my $text = "Regular expression in Perl language";

say "before: \'$text\'";

#swap two words using captures in substitutions
if ($text =~ s/(\S+)\s+(\S+)/$2 $1/) {
    say " after: \'$text\'";
}

#second example

my %HTML_entity = (
        '&'     => 'amp',
        '<'     => 'lt',
        '>'     => 'gt'
    );

my $html = '<html>you & me</html>';

#converting HTML entity escaping
if ($html =~ s/([&<>])/&$HTML_entity{$1};/g) {
    say "$html";
}
