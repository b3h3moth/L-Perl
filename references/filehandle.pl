#!/usr/bin/env perl
use warnings;
use strict;
use IO::File;

# How to write file with filehandle reference:
open my $output_fh, '>', 'data.txt';

my @date = (localtime)[3,4,5];
$date[1]++;
$date[2] += 1900;
my $full_date = join '/', @date;

$output_fh->say( $full_date );
