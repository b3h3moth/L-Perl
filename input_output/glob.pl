#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# glob EXPR
#
# In list context, returns a list of filename expansions on the value of EXPR.
# In scalar context, glob iterates through such filename expansions, returning
# undef when the list is exhausted. If EXPR is omitted, $_ is used. 
# 
# Globbing: patterns to match files and directories.
