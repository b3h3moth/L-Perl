#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

#quantifiers metacharacters are useful to reproduce parts of a regex that we
#want to repeat.

#{n} occur exactly n times
my $lang = "I looooove Perl";
my $ok = "Ok!!!";
my $string = "characters";
my $sport = "football";
my $str = "abcdef";
my $size = "xxxl";
my $phone_num = "0874121619";
my $year = 1973;
my $bestos = "unix";

say "A: $lang" if ($lang =~ m/o{5}/);     #true
say "B:" if ($lang =~ m/o{6}/);           #false,
say "C: I'm $ok" if ($ok =~ m/Ok!{3}/);   #true, matches Ok!!!
say "D:" if ($ok =~ m/Ok{3}/);            #false, matches Okkk
say "E: 10" if ($string =~ m/.{10}/);     #true, matches 10 letters
say "F: I love $sport" if ($sport =~ m/o{2}|j{2}/); #true, matches oo or jj
say "G: alphab.str" if ($str =~ m/[a-z]{6}/); #true, matches 6 letters
say "H:" if ($str =~ m/[a-z]{7}/);            #false
say "I: $size" if ($size =~ m/(s|m|l|x){3}/); #true, matches sss mmm lll xxx
say "J:" if ($size =~ m/(s|m|l|y){2}/);       #false
say "K: $phone_num" if ($phone_num =~ m/[0-9]{10}/); #true, matches 10 digits
say "L: $phone_num" if ($phone_num =~ m/[0-9]{11}/); #false

#{min, max} con be used to specify a minimum and maximum value
#{min,}     con be used to specify a minimum value only
say "M: $str 5+" if ($str =~ m/[a-z]{5,}/);   #true, match 5 or more letters
say "N: $str 3,6" if ($str =~ m/[a-z]{3,6}/); #true, match betweeen 3 and 6
say "O: $year" if ($year =~ m/[0-9]{2,4}/);   #true

#there are three more quantifiers:
# '?' match 0 or 1 time
# '*' match 0 or more time
# '+' match 1 or more time
say "P: best OS $bestos" if ($bestos =~ m/^[0-9]*/); #true
say "Q: $bestos" if ($bestos =~ m/^d*/); #false
