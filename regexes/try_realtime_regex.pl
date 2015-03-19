#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my $string = "user:x:1000:1000:name surname:/home/user:/usr/bin/zsh";

die "Usage: $0 <pattern>\n\nYou\'re working on /etc/passwd field\:\n$string"
if (@ARGV != 1);

