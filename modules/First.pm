package First;

use warnings;
use strict;

# A function library (package or module) is a file of functions that can be
# shared among programs.
#
# Perl module are saved with .pm suffix.
#
# The first line of a moldule use 'package' <name> statement

sub reverse_string {
    my $text = $_[0];
    $text = reverse shift;

    return $text;
}

# because a library must return true
1;
