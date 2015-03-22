#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

#Perl defines the following zero-width assertions.
#
#\b match a word boundary;
#\B match except at a word boundary;
#\A match only at beginning of string;
#\Z match only at end of string, or before newline at the end;
#\z match only at end of string;
# $ match anywhere inside the string right in front of a newline;
#\G match only at pos().

my $str1 = "unix developers";
my $str2 = "unix devel";
my $text = "devel";
my $text2 = "devel\ndevelopers\n";

#\b
say "A:"    if ($str1 =~ /\bdevel\b/); #false
say "B: $&" if ($str2 =~ /\bdevel\b/); #true
say "C: $&" if ($str2 =~ /\b$text\b/); #true

#\B
say "D: $&" if ($text =~ /\Beve\B/);   #true
say "E:"    if ($text =~ /\Bdeve\B/);  #false

#\A
say "F: $&" if ($str1 =~ /\Auni/);    #true
say "G: $&" if ($text2 =~ /\Adev/);   #true
say "H:"    if ($text2 =~ /\Aeve/);   #false

#\Z
say "I: $&" if ($text2 =~ /ers\Z/);   #true
say "J:"    if ($text2 =~ /eve\Z/);   #false

#\z
say "K:"    if ($text2 =~ /ers\z/);   #false
say "L: $&" if ($text =~ /vel\z/);    #true
