#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use File::Spec;

# How to concatenate two or more directory names to form an absolute path
# ending with a directory
my @docs = qw(home behemoth docs books);
my @books = qw(programming perl);

my $dpath = File::Spec->catdir(@docs, @books);

print "My computer science books path:\n\/$dpath\n";
