#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# We need to create a block of code and give it a name using 'sub' keyword:
# sub function_name {
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

# Invoking subroutine:
Usage(); # or &Usage; or Usage; or &Usage();
