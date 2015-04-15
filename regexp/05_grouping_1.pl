#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my $sport = "football";
my $name = "behemoth";
my $osname = "OpenBSD";

#use parentheses for grouping metacharacters
say "I like $sport" if ($sport =~ m/(foot|basket|roller|speed)ball/);
say "My name is $name" if ($name =~ m/be(he|h3|re|ge)mo(a|h|y|o|t|z|)h/);

#nested
say "$osname rulez" if ($osname =~ m/(o|O)pen(b|B)(s|S|(|d|D))/);
