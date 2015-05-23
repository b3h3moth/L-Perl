#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# How to achieve a tree-like data structure.

# Main address book hash
my %address_book;

# Basic structure
$address_book{"luca"} = {
    address     => "san lorenzo",
    cellphone   => "1234556",
};

say $address_book{luca}{address};
