#!/Usrb/bin/env perl
use warnings;
use strict;
use Data::Dumper;

# Open /etc/passwd file, split each row, save passwd data into %unix_user hash,
# than Dumper results.

my %unix_user;

my $passwd_file = '/etc/passwd';

open(PASSWD, '<', $passwd_file) or die "Unable to open $passwd_file: $!\n";

while (<PASSWD>) {
  my ($login, $pass, $ID_user, $ID_group, $username, $dir, $shell) = split ':';
  $unix_user{$login} = [$login, $pass, $ID_user, $ID_group, 
                        $username, $dir, $shell];
}

close(PASSWD);

print Dumper \%unix_user;
