#!/usr/bin/env perl
use warnings;
use strict;


#defined_op operator //
#utile per i valodi di default
sub default_OS {
    my $os_name = shift // 'OpenBSD';
}

my $os_name = default_OS();
print "$os_name\n";
