#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use constant YEAR   => 2015;
use constant EMAIL => 'behemoth@autistici.org';
use constant NAMES => qw(francesca claudia ilaria ludovica);
use constant CLUBS => { TO => 'Juventus' };

# It declares the named symbol to be an immutable constant with the given
# scalar or list value.

say 'We are at '.YEAR.' my e-mail is: '.EMAIL;
say 'All these women are beautiful: '.join ', ',NAMES;
say 'My favorite club is: '.CLUBS->{'TO'}.' Football Club 1897';
