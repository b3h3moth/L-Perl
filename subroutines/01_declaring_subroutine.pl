#!/usr/bin/env perl
use warnings;
use v5.14;
use strict; # <use strict/warning/v5.14> is a prgama. 
            # A pragma is a hint to a compiler, telling it something about the
            # code. In this case, the <use strict> pragma  tells Perl's 
            # internal compiler that it should enforce some good programming 
            # rules for the rest of this block or source file.


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
