#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# Quantifiers are greedy by default and match the longest leftmost.

# Maximal Minimal Possessive Allowed range
# ------- ------- ---------- -------------
# {n,m}   {n,m}?  {n,m}+     Must occur at least n times but no more than m times
# {n,}    {n,}?   {n,}+      Must occur at least n times
# {n}     {n}?    {n}+       Must occur exactly n times
# *       *?      *+         0 or more times (same as {0,})
# +       +?      ++         1 or more times (same as {1,})
# ?       ??      ?+         0 or 1 time (same as {0,1})

# Quantifiers metacharacters are useful to reproduce parts of a regex that we
# want to repeat.

# {n} match exactly n times
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

#{min,}         match at least 'min' times
#{min, max}     match at least 'min' times but no more than 'max' times
say "M: $str 5+" if ($str =~ m/[a-z]{5,}/);   #true, match 5 or more letters
say "N: $str 3,6" if ($str =~ m/[a-z]{3,6}/); #true, match betweeen 3 and 6
say "O: $year" if ($year =~ m/[0-9]{2,4}/);   #true

# '?' match 1 or 0 times
# '*' match 0 or more time
# '+' match 1 or more time
my @strings = qw(a aa ab abc abba abbba abbi aia abbia ebbro vino casa house
abbigliamento amore love abbagliato abbbbbo babbo);

foreach my $str1 (@strings) {
    say "m\/ab\?\/ matches $str1" if ($str1 =~ m/ab?/);
}

foreach my $str2 (@strings) {
    say "m\/ab\+\/ matches $str2" if ($str2 =~ m/ab+/);
}

foreach my $str3 (@strings) {
    say "m\/ab\*\/ matches $str3" if ($str3 =~ m/ab*/);
}
