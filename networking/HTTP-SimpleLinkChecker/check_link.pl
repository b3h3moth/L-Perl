#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use HTTP::SimpleLinkChecker 'check_link';

my @links = qw(perl.org perl.it perl.com perl.ne perl.fr perl.net perl.arbour);

my @good_links = grep {
    check_link( $_ );
    ! $HTTP::SimpleLinkChecker::ERROR;
} @links;

say join ', ', @good_links;
