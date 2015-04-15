#!/usr/bin/env perl
use warnings;
use strict;
use v5.20.1;

# Anchors
# ^     Match string start (or line, if /m is used)
# $     Match string end (or line, if /m is used) or before newline
# \b    Match word boundary (between \w and \W)
# \B    Match except at word boundary (between \w and \w or \W and \W)
# \A    Match string start (regardless of /m)
# \Z    Match string end (before optional newline)
# \z    Match absolute string end
# \G    Match where previous m//g left off
# \K    Keep the stuff left of the \K, don't include it in $&

my $game = "football";
my $login = "s89287j";
my $lang = "Perl";
my $empty = "";

#pattern matches from the beginning of the string '^'
say "I like to play $game - ^1" if ($game =~ m/^foot/);  #true
say "I like to play $game - ^2" if ($game =~ m/^sfoot/); #false
say "text starts with non-digit - ^1" if($login =~ m/^[^0-9]/);  #true
say "text starts with non-digit - ^2" if($login =~ m/^[0-9]/);   #false

#pattern matches at the end of the string '$'
say "I like to play $game - 1\$" if ($game =~ m/ball$/);  #true
say "I like to play $game - 2\$" if ($game =~ m/balls$/); #false
say "$lang language is great" if ($lang =~ m/^[Pp]erl$/); #true unique string
say "I love $lang" if ($lang =~ m/^perl$/i); #true unique string, with 'i'
say "Empty string" if ($empty =~ m/^$/);     #true empty string
