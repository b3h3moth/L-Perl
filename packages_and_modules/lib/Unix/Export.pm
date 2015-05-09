package Unix::Utilities;

# Would be annoying typing every time fully qualified function, so you can
# export those functions calling code's namespace. The module for doing this is
# Exporter.

use warnings;
use strict;
use Sys::Hostname;

our $VERSION = 1.0;


sub max_user {
    10000;
}

sub get_hostname {
    my $host = hostname();
    return $host;
}

sub get_id {
    my $id = getlogin || getpwuid($<) || 'other';
    return $id;
}

1;
