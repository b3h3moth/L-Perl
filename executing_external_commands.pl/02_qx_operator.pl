#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

#qx operator is an alrternative to backticks
my $kernel = qx/uname -a/;

#it allows any pair of delimeters:
#qx<cmd>
#qx(cmd)
#qx{cmd}
#qx/cmd/

say 'my kernel is: '.$kernel;
