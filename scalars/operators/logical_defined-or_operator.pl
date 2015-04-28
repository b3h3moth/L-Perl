#!/usr/bin/env perl
use warnings;
use strict;

# Logical Defined-or operator //
#
# It's exactly the same as '||', except that it tests the left hand side's
# definedness instead of its truth.
# 
# "$a // $b" is similar to "defined($a) || $b", except that it returns the
# value of $a rather than the value of "defined($a)"
#
# This is very useful for providing default values for variables. 

sub default_OS {
    my $os_devel = shift // 'Debian GNU/Linux';
    # It's the same of:
    # my $os_devel = shift @_ // 'OpenBSD';
}

my $os_devel = default_OS('Free');
print "$os_devel\n";
