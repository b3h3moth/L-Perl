#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

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

my @elem = keys %stuff;
undef @stuff{ @elem };
my @unique = keys %stuff;
say join ', ',@unique;
