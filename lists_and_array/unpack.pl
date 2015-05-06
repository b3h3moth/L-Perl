#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# unpack TEMPLATE, EXPR;
# It expands a string (EXPR) into a list of values according to the TEMPLATE
# and returns those values. This function does the reverse of pack.
#
# The TEMPLATE is a sequence of characters that give the order and type of
# values: perldoc -f unpack (template characters table).
