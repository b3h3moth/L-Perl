#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

#to match special characters use backslah before the special character.
my $eng_actor = "Mr. Bean";
my $or = "a|b";
my $home = "/home/behemoth";

say "$eng_actor is an English actor" if ($eng_actor =~ m/Mr\./);    #true
say "$eng_actor is funny :)" if ($eng_actor =~ m/M\./);             #false
say "special characters" if ($or=~ m/\|/);                          #true
say "regex" if ($or=~ m/a\|/);                                      #true
say "works?" if ($or=~ m/b\|/);                                     #false
print "My home dir is: " if ($home =~ m/\//);                       #true
print "$home 1\n" if ($home =~ m/\/home/);                          #true
print "$home 2\n" if ($home =~ m/\/[a-z]/);                         #true
print "$home 3\n" if ($home =~ m/\/[a-z]\/[a-z]/);                  #false
print "$home 4\n" if ($home =~ m/\/[a-z]...\/[a-z]/);               #true
