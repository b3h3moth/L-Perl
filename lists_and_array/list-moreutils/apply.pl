#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use List::MoreUtils qw(apply);

# apply BLOCK LIST;
# Applies BLOCK to each item in LIST and returns a list of the values after 
# BLOCK has been applied. In scalar context, the last element is returned.  
# This function is similar to map but will not modify the elements of the 
# input list.
