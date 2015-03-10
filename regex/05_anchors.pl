#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my $game = "football";
my $login = "s89287j";

#anchors
#pattern matches from the beginning of he string '^'
say "I like to play $game one" if ($game =~ m/^foot/);  #true
say "I like to play $game two" if ($game =~ m/^sfoot/); #false
say "text starts with non-digit one" if($login =~ m/^[^0-9]/);  #true
say "text starts with non-digit two" if($login =~ m/^[0-9]/);   #false
