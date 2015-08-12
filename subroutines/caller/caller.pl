#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;

# caller() returns the context of the current subroutine call.

# Without arguments, in list context, returns:
# ($package, $filename, $line) = caller
#  0         1          2
package metaverso;

metaverso();

sub metaverso {
    print_info_call();
    print_info_call_arg();
}

sub print_info_call {
    my ($package, $filename, $line) = caller();
    say "Called from \'$package\' in \'$filename\' at \'$line\' line";
}

sub print_info_call_arg {
    my ($package, $filename, $line, $sub) = caller(0);
    say "\'$sub\' called from \'$package\' in \'$filename\' at \'$line\' line";
}
