#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# File test operator's list:
# -r File or directory is readable by this (effective) user or group;
# -w File or directory is writable by this (effective) user or group;
# -x File or directory is executable by this (effective) user or group;
# -o File or directory is owned by this (effective) user;
# -R File or directory is readable by this real user or group;
# -W File or directory is writable by this real user or group;
# -X File or directory is executable by this real user or group;
# -O File or directory is owned by this real user;
# -e File or directory name exists;
# -z File exists and has zero size (always false for directories);
# -s File or directory exists and has nonzero size (in bytes);
# -f Entry is a plain file;
# -d Entry is a directory;
# -l Entry is a symbolic link;
# -S Entry is a socket;
# -p Entry is a named pipe (fifo);
# -b Entry is a block-special file;
# -c Entry is a character-special file;
# -u File or directory is setuid;
# -g File or directory is setgid;
# -k File or directory has the sticky bit set;
# -t The filehandle is a TTY;
# -T File looks like a 'text' file;
# -B File looks like a 'binary' file;
# -M Modification age (measured in days);
# -A Access age (measured in days);
# -C Inode-modification age (measured in days).

my $filename = '/home/behemoth/.profile';

print "$filename:\n";
print "- exists.\n" if -e $filename;
print "- is a plain file.\n" if -f $filename;
print "- is readable\n", if -r $filename;
print "- is writable\n", if -r $filename;
