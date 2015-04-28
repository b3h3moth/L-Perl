#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

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
    my $os_devel = shift // 'OpenBSD';
    # It's the same of:
    # my $os_devel = shift @_ // 'OpenBSD';
}

my $work_station = default_OS('Debian GNU/Linux');
my $server = default_OS();

say "My workstation for every day use is $work_station";
say "Server machine is: $server";
say "I write code on $work_station and $server";
