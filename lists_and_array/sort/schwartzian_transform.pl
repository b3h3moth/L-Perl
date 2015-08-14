#!/usr/bin/env perl

# what is a schwartzian transform?

# http://en.wikipedia.org/wiki/Schwartzian_transform

use feature qw{ say } ;

# notice how all of these are not in any order?

my @tedx_feeds = qw{
        tedx
        tedxboston
        tedxindianapolis
        tedxiu
        tedxpurdueu
        tedxlafayette
        tedxohiostateu
        tedxpsu
        tedxuiowa
        } ;

# we'll read this backwards.
my @sorted =
 map { $_->[0] }
        # ... and then we just use the words, jettisoning
        # the lengths and creating the final array.

        sort { $a->[1] <=> $b->[1] }
        # ... which we sort numerically by the length

        map { [ $_ , length $_ ] }
        # ... becomes an array of arrays, being all
        # the words and their lengths, starting
        # with [ 'tedx' , 4 ] ...

        @tedx_feeds ; # the array in unsorted order ...

    # Start here and go up <-----------------<<<<<

    say join "\n" , @sorted ;

    # output looks like:
    # tedx
    # tedxiu
    # tedxpsu
    # tedxuiowa
    # tedxboston
    # tedxpurdueu
    # tedxlafayette
    # tedxohiostateu
    # tedxindianapolis
