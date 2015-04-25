#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use List::Util qw(minstr);

# minstr LIST
# Treats all the entries in the list as strings and returns the lowest string
# as defined by the lt (less than) operator. If the list is empty then undef is
# returned.
