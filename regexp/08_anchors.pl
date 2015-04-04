#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my $game = "football";
my $login = "s89287j";
my $lang = "Perl";
my $empty = "";

#anchors

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
