#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Getopt::Long;

my $usage = "Usage: $0 [options] <arguments...>

Options:
--version
--help
--flag
--number <number>
--string <string>
";

my $flag;
my $number;
my $string;
