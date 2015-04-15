#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# To match a literal instance of a metacharacter, escape it with a backslash \

# Escape sequences:
# \a       Alarm (beep)
# \e       Escape
# \f       Formfeed
# \n       Newline
# \r       Carriage return
# \t       Tab
# \037     Char whose ordinal is the 3 octal digits, max \777
# \o{2307} Char whose ordinal is the octal number, unrestricted
# \x7f     Char whose ordinal is the 2 hex digits, max \xFF
# \x{263a} Char whose ordinal is the hex number, unrestricted
# \cx      Control-x
# \N{name} A named Unicode character or character sequence
# \N{U+263D} A Unicode character by hex ordinal

# \l  Lowercase next character
# \u  Titlecase next character
# \L  Lowercase until \E
# \U  Uppercase until \E
# \F  Foldcase until \E
# \Q  Disable pattern metacharacters until \E
# \E  End modification


my $eng_actor = "Mr. Bean";
my $or = "a|b";
my $home = "/home/behemoth";
my $windir = "\\home\\docs";

say "$eng_actor is an English actor" if ($eng_actor =~ m/Mr\./);    #true
say "$eng_actor is funny :)" if ($eng_actor =~ m/M\./);             #false
say "special characters" if ($or=~ m/\|/);                          #true
say "regex" if ($or=~ m/a\|/);                                      #true
say "works?" if ($or=~ m/b\|/);                                     #false
print "My home dir is: " if ($home =~ m/\//);                       #true
print "$home 1\n" if ($home =~ m/\/home/);                          #true
say "$home 2" if ($home =~ m/\/[a-z]/);                             #true
say "$home 3" if ($home =~ m/\/[a-z]\/[a-z]/);                      #false
say "$home 4" if ($home =~ m/\/[a-z]...\/[a-z]/);                   #true
say "I prefer Unix system:" if ($windir =~ m/\\/);                  #true
say "I can't see $windir, please!" if ($windir =~ m/\\home\\/);     #true
