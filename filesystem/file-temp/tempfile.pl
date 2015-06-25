#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use File::Temp 'tempfile';
use File::Spec;

# my $tmpdir = File::Spec->tmpdir();

# tempfile() make a temporary files, and save it into /tmp.
my $filename;
die "I Cannot make filehandle: $!" unless( my $fh = tempfile() );
die "I Cannot open $filename" unless ( ($fh, $filename) = tempfile() );

say $filename;
