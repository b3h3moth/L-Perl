#!/usr/bin/env perl
length(string)
    This function returns the number of characters in its argument. If no argument is given, length()
returns the number of characters in Perl's default variable $_. An example of the code follows:
#!/usr/bin/perl
# length.pl
use warnings;
use strict;
my $song = 'The Great Gig in the Sky';
print 'length of $song: ', length($song), "\n";
# the *real* length is 4:44
$_ = 'Us and Them';
print 'length of $_: ', length, "\n";
# this one is 7:40

