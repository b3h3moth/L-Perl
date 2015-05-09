#!/usr/bin/env perl
use warnings;
use strict;
use diagnostics;
use v5.14;

use lib 'lib';
use Unix::System;

my $my_os = Unix::System::get_osname();

my $my_sed_pathname = Unix::System::Path::get_sed_path();
say 'My Unix OS is: '.$my_os.', sed path is: '.$my_sed_pathname;
