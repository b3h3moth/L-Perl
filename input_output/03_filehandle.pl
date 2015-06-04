#!/usr/bin/env perl
use warnings;
use strict;

# Filehandle is the name for an Input/Output connection between perl process
# and the outside world. Larry Wall (Perl's creator) recomends to use all
# uppercase letters in the name of filehandle. 
# Note that there are six special filehandle names in Perl, they are:
# STDIN, STDOUT, STDERR, DATA, ARGV, ARGVOUT.

# STDIN, STOUT, STDERR are automatically opened.

# To open a new filehanlde we can use open().
# open a filehandle called INPUT to a file called 'file':
# open(INPUT,  'file');
# 
# open a filename called 'file' as input to a filehandle called CONFIG:
# open(CONFIG, '<file');
#
# open a filehandle called 'MAIL' for output to the new file called 'file':
# open(MAIL,   '>file);
#
# open a filehandle called 'LOG' for appending to the file called 'file':
# open(LOG,    '>>file);

die "Usage: $0 <filename>\n" if (@ARGV != 1);

#get file from command line
my ($filename) = @ARGV;

#open the file for reading.
#INPUT is the name of filehandle
#< is the mode, in this case reading from the file
#$filename is the filename.
open(INPUT, "< $filename");

#read the file from filehandle and store in $line
while (my $line = <INPUT>) {
    #ucfirst() function convert each first character of line in upper-case
    $line = ucfirst($line);
    print "$line";
}

#filehandle is closed
close(INPUT);

#If I have a file called 'pass.txt' and his name is stored in a $filename
#variable, then all of the following do the same thing:
