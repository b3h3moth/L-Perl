#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use File::Spec;

#How to concatenate one or more directory names and a filename to form an
#absolute path ending with a filename.
my $path = File::Spec->catfile(qw{home behemoth docs books perl.pdf});

print "My pdf books path: $path\n";

my @docs = qw(home behemoth docs books);
my @books = qw(infosec programming networking gamedevel);
my $dpath = File::Spec->catdir(@docs, @books);
print "$dpath\n";
