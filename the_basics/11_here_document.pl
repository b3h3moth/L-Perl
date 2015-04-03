#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my $date = localtime();
my $kernel = qx(uname -v);
chomp($kernel);

#double quotes
say <<"SYS"
Today is:
$date

I'm running on:
$kernel
bye
SYS

