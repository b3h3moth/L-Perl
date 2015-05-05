#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use List::MoreUtils qw(insert_after_string);

# insert_after_string STRING VALUE LIST;
# Inserts VALUE after the first item in LIST which is equal to STRING.
my @song = qw(We're jamming i wanna jam it with);
say 'before: '.join ' ',@song;
insert_after_string "with", "you" => @song;
say ' after: '.join ' ',@song;
