#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use HTTP::SimpleLinkChecker 'check_link';

my @links = qw(http:/www.perl.org htp:://www.perl.org perlorg);

my @good_links = grep {
    check_link( $_ );
    ! $HTTP::SimpleLinkChecker::ERROR;
} @links;

say join ', ', @good_links;

foreach (@links) {
    die "$HTTP::SimpleLinkChecker::ERROR\n" 
        unless (my $code = HTTP::SimpleLinkChecker::check_link($_));
    
    say $code;
}
