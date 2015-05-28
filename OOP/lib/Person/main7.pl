#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Person7;

my $person1 = Person7->new();
say 'Object counter now is: '.Person7::head_count();
my $person2 = Person7->new();
say 'Object counter now is: '.Person7::head_count();
my $person3 = Person7->new();
say 'Object counter now is: '.Person7::head_count();
my $person4 = Person7->new();
say 'Object counter now is: '.Person7::head_count();
my $person5 = Person7->new();
say 'Object counter now is: '.Person7::head_count();
