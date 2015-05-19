#!/usr/bin/env perl
use warnings;
use strict;

use lib 'lib';
use Country;
our @ISA = qw(Country);

sub sound { "aioopop" }

Country::Italy->speak;

# Rules to know about OOP and Perl:
# A class is a package, so the simplest class is just a package;
# The extension of the class file is .pm;
# Usually the name of the package is the same as the name of file;
# Perl expects to see a true value '1' as the last thing in the package:
# A program can add 'use PackageName;' and start using the class;
# 
# And:
# - a class is a package;
# - an object is a reference that knows its class;
# - a method is a subroutine.
