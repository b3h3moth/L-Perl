#!/usr/bin/env perl
use warnings;
use v5.22.0;
use strict; # use strict;
            # use warnings;
            # use v5.14>; 
            # They are prgama.
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
    state $len += 1;
    say $len;
}

# Invoking subroutine:
Usage(); 
# or 
&Usage; 
# or 
Usage; 
# or 
&Usage();
