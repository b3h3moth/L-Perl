#!/usr/bin/env perl
use warnings;
use strict;
use IO::File;

#>  empty file
#>> append
open my $output_fh, '>', 'file_output.txt';
$output_fh->say('I\'m writing filehandle references on file');
