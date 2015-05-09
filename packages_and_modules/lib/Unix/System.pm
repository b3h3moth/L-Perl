package Unix::System;

use strict;
use warnings;

our $VERSION = '0.001';
$VERSION = eval $VERSION;

sub get_osname() {
    my $os = qx/uname -o/ // 'OpenBSD';
    chomp($os);
    return $os;
}

# It's the same file, but different package
package Unix::System::Path;

sub get_sed_path() {
    my $sed = qx/which sed/ // '/bin/sed';
    chomp($sed);
    return $sed;
}

1;
