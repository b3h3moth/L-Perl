#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# Perl 5.10 added named captures, which allow you to capture portions of
# matches from applying a regular expression and access them later.
#
# To attach a name to a capturing group: (?<name>...) or (?'name'...):
#
# Parentheses enclose the capture. The ?< name > construct immediately follows
# the opening parenthesis and provides a name for this particular capture.
#
# When a match against the enclosing pattern succeeds, Perl updates the magic
# variable %+. In this hash, the key is the name of the capture and the value
# is the portion of the string which matched the capture.

my $text = 'My telephone number is 0874-112233';

my $prefix          = qr/\d{4}/;
my $local_number     = qr/\d{6}/;
my $telephone_number = qr/$prefix(\s|-)?$local_number/;

if ($text =~ /(?<phone>$telephone_number)/ ) {
    say "Hi, your telephone number is: $+{phone}";
}
