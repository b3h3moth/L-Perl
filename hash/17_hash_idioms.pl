#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# Because each key exists only once in a hash, assigning the same key to a hash
# multiple times stores only the most recent value associated with that key.
# This behavior is useful, for example, to find unique elements of a list.

my %stuff = (
    A => 189,
    nome => 'luca',
    arsenal => 'londra',
    tmux => 'multiplexer',
    vim => 'editor',
    A => 189,
    nome => 'luca',
    A => 189,
    nome => 'luca',
    lang => 'perl',
    vim => 'editor',
    asso => 'picche',
    asso => 'quadri',
    B => 89,
    arsenal => 'londra',
    tmux => 'multiplexer',
    vim => 'editor',
    C => 110,
    asso => 'fiori',
    asso => 'cuori',
    juventus => 'torino',
    lang => 'perl',
    asso => 'picche',
    asso => 'quadri',
    B => 89,
);

# find and print unique elements
my @elem = keys %stuff;
undef @stuff{ @elem };
# Using undef with a hash slice sets the values of the hash to undef. 
# This idiom is the cheapest way to perform set operations with a hash.
my @unique = keys %stuff;
say join ', ',@unique;
