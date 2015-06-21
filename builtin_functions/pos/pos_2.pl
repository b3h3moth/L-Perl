#!/usr/bin/env perl
use warnings;
use strict;

my $text = "get up stand up, stand up for your rights";

while ($text =~ /(\w+)/g) {
    my $position = pos($text);
    print "Word \'$1\' ends at position $position\n";
}
