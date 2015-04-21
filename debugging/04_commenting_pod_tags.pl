#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my @skill = qw(C C++ Perl Python Zsh Bash TCP/IP Lisp Awk Regex);
=debug
my $lang = 'perl';
say "$lang programming";
each line is a comment
=cut
for (@skill) {
    say $_;
}
