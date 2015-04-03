#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# A line-oriented form of quoting is based on the Unix shell's here-document
# syntax. It's line-oriented in the sense that the delimiters are lines rather
# than characters.
#
# The starting delimiter is the current line, and the terminating delimiter is
# a line consisting of the string you specify. Following a <<, you specify the
# string to terminate the quoted material, and all lines following the current
# line down to but not including the terminating line are part of the string.
#
# The terminating string may be either an identifier (a word) or some quoted
# text. If quoted, the type of quote determines the treatment of the text, just
# as it does in regular quoting. An unquoted identifier works as though it were
# in double quotes.
#
# A backslashed identifier works as though it were in single quotes.
#
# There must be no space between the << and an unquoted identifier, although
# whitespace is permitted if you specify a quoted string instead of the bare
# identifier.
#
# The terminating string must appear by itself, unquoted and with no extra
# whitespace on either side, on the terminating line.


here document
   So called because of a similar construct in
   shells that pretends that the lines following
   the command are a separate file to be fed to
   the command, up to some terminating
   string. In Perl, however, it's just a fancy form
   of quoting.


     print <<EOF;     # same as earlier example
     The price is $Price.
     EOF
     print <<"EOF"; # same as above, with explicit quotes
     The price is $Price.
     EOF
     print <<'EOF';     # single­quoted quote
     All things (e.g. a camel's journey through
     A needle's eye) are possible, it's true.
     But picture how the camel feels, squeezed out
     In one long bloody thread, from tail to snout.
                                      ­­ C.S. Lewis
     EOF
     print <<\EOF;      # another single­quoted quote
     I could really use $100 about now.
     EOF
     print << x 10;     # print next line 10 times
     The camels are coming! Hurrah! Hurrah!
     print <<"" x 10; # the preferred way to write that
     The camels are coming! Hurrah! Hurrah!
     print <<`EOC`;     # execute commands
     echo hi there
     echo lo there
     EOC
     print <<"dromedary", <<"camelid";     # you can stack them
     I said bactrian.

my $date = localtime();
my $kernel = qx(uname -v);
chomp($kernel);

#double quotes
say <<"SYS"
Today is:
$date

I'm running on:
$kernel
bye
SYS
