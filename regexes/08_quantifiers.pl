#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

#quantifiers metacharacters are useful to reproduce parts of a regex that we
#want to repeat.

#{n} occur n times
my $lang = "I looooove Perl";
my $ok = "Ok!!!";
my $string = "characters";
my $sport = "football";
my $str = "abcdef";
my $size = "xxxl";
my $phone_num = "0874121619";

say "A: $lang" if ($lang =~ m/o{5}/);     # true, matches 'ooooo'
say "B:" if ($lang =~ m/o{6}/);           #false,
say "C: I'm $ok" if ($ok =~ m/Ok!{3}/);   # true, matches 'Ok!!!'
say "D:" if ($ok =~ m/Ok{3}/);            #false, matches 'Okkk'
say "E: 10" if ($string =~ m/.{10}/);     # true, matches 10 characters string
say "F: I love $sport" if ($sport =~ m/o{2}|j{2}/); #true, matches 'oo' or 'jj'
say "G: alphab.str" if ($str =~ m/[a-z]{6}/); #true, matches 6 alphab. letters
say "H:" if ($str =~ m/[a-z]{7}/);            #false, matches 5 alphab. letters
say "I: $size" if ($size =~ m/(s|m|l|x){3}/); #true, matches 3 x s|m|l|x
say "J:" if ($size =~ m/(s|m|l|y){2}/);       #false
say "K: $phone_num" if ($phone_num =~ m/[0-9]{10}/); #true, matches ten digits
say "L: $phone_num" if ($phone_num =~ m/[0-9]{11}/); #false
