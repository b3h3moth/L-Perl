#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use File::Find 'finddepth';

# finddepth(\&wanted,  @directories);
#
# finddepth() works just like find() except that it invokes the wanted() 
# function for a directory after invoking it for the directory's contents. It 
# does a postorder traversal instead of a preorder traversal, working from the
# bottom of the directory tree up where find() works from the top of the tree
# down.

my $dir = '/etc';

opendir(my $dh, $dir) or die "Could not open $dir for readinf\n";

finddepth(\&print_dir, $dir);

sub print_dir {

    if ( -d ) {
        print "$File::Find::name\n" if /^[aeiou][avcde]/;
    }
}

closedir($dh);
