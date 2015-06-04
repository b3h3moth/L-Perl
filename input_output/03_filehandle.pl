#!/usr/bin/env perl
use warnings;
use strict;

# Filehandle is the name for an Input/Output connection between perl process
# and the outside world. Larry Wall (Perl's creator) recomends to use all
# uppercase letters in the name of filehandle.
#
# Note that there are six special filehandle names in Perl, they are:
# STDIN, STDOUT, STDERR, DATA, ARGV, ARGVOUT.
# 
# STDIN, STOUT, STDERR are automatically opened.
# 
# To open a new filehanlde we can use open().
# open a filehandle called INPUT to a file called 'file':
#   open(INPUT,  'file');
# open a filename called 'file' as input to a filehandle called CONFIG:
#   open(CONFIG, '<file');
# open a filehandle called 'MAIL' for output to the new file called 'file':
#   open(MAIL,   '>file);
# open a filehandle called 'LOG' for appending to the file called 'file':
#   open(LOG,    '>>file);
#
# From Perl v5.6 we can use three arguments:
# open(CONFIG, '<',  'file');
# open(MAIL,   '>',  'file');
# open(LOG,    '>>', 'file');
# 
# You can specify an encoding:
#   open(CONFIG, '<:encoding(UTF-8)',  'file');
#   open(MAIL,   '>:encoding(ASCII)',  'file');
#   open(LOG,    '>>:encoding(iso-8859-1), 'file');
# or just:
#   open(CONFIG, '<:utf-8',  'file');

die "Usage: $0 <filename>\n" if (@ARGV != 1);

# Get file from command line
my ($filename) = @ARGV;

open(INPUT, '<', "$filename");

# Read the file from filehandle and store into $line
while (my $line = <INPUT>) {
    # ucfirst() function converts each first character of line in upper-case
    $line = ucfirst($line);
    print "$line";
}

# Filehandle is closed
close(INPUT);

# Get a list of all of encodings:
# perl -MEncode -le "print for Encode->encodings(':all')"
