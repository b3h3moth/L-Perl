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

my $name = "behemoth";

print <<EOF;
EOF

# same as above, double-quoted quote
print <<"EOF";
My name is $name.

EOF

# single­quoted quote
print <<'EOF';
All things (e.g. a camel's journey through
 A needle's eye) are possible, it's true.
  But picture how the camel feels, squeezed out
   In one long bloody thread, from tail to snout.
                                                ­­ C.S. Lewis

EOF

# single­quoted quote
print <<\EOF;
Are you really $name?

EOF

# print next line 10 times (deprecated)
print << x 5;
deprecated

# the preferred way to write that
print <<"" x 5;
I love Perl!

# execute commands
print <<`EOC`;
echo aloha
date

EOC

my $date = localtime();
my $kernel = qx(uname -v);
chomp($kernel);

my $sys = <<"EOF";
Today is: $date
I'm running on: $kernel
bye

EOF

say "$sys";
