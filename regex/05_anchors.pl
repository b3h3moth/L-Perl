#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my $game = "football";

#anchors
#pattern matches from the beginning of he string '^'
say "I like to play $game one" if ($game =~ m/^foot/);  #true
say "I like to play $game two" if ($game =~ m/^sfoot/); #false
