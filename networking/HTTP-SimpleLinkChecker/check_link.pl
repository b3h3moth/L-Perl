#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use HTTP::SimpleLinkChecker;

my @good_links = grep {
  check_link( $_ );
    ! $HTTP::SimpleLinkChecker::ERROR;
    } @links;

