#!/usr/bin/env perl
use warnings;
use strict;
use v5.20.1;

# (?:) groups a series of atoms without making a capture.
my $band = "Bob Marley & the Wailers";
say "A: I Love Reggae music" if ($band =~ /(?:bob|marley|wailers)/i);
