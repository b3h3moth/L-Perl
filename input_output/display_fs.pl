#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my $varpath='/home/behemoth/';

# get output of df -k
open(MY_DF, " df -k |") or die "$0: couldn't get df: $!";

while(<MY_DF>)
{
    chomp;
    if (/^\/dev/) {
        say $_;
    }
}

close(MY_DF);

__END__
    # /dev/
    if(/^\/dev\//) {
        my @myrec = split(" ", $_);
        my $free = int($myrec[3]/1024);
        
        #print "$myrec[5]: $myrec[4] $free MB free\n";
        my $fsname = $myrec[5];
        $fsname =~ s/\//_/g;
        
        my $logname = "df_".$fsname.".log";
        open(MY_LOG, ">>$varpath/$logname") 
            or die "$0: problem opening file: $!";
        
        print MY_LOG "$free\n";

        close(MY_LOG);
    }
}

close(MY_DF);
