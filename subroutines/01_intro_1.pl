#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

#we need to create a block of codeand give it a name using 'sub' keyword
# sub functionName {
#    ...
#    body of function
#    ...
# }
sub Usage {
    say "How to use subroutines in Perl";
    say "sub functioName {";
    say "    body";
    say "}";
    say "bye";

    exit(0);
}

Usage();
