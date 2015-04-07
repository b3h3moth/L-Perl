opendir (my $dh, $directory)
  or die "Cannot open `$directory' for reading: $!";
# get all entries not starting with a dot
my @entries = grep { !/^\./ } readdir($dh);
closedir $dh
  or die "Cannot close `$directory': $!";

