#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use List::Util qw(maxstr);

# maxstr LIST
# Treats all the entries in the list as strings and returns the highest string
# as defined by the gt (greater than) operator. If the list is empty then undef
# is returned.
