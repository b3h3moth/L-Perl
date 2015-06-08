#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use File::HomeDir;

# Display filesystem used space

my $path = File::HomeDir->my_home();
my $logname = 'df.log';

# get output from 'df -k |':
open(DF, " df -k |") or die "$0: Couldn't get 'df output': $!";

while(<DF>) {
    chomp;
    
    # find '/dev':
    if (/^\/dev/) {
        my @record = split(" ", $_);
        # convert every data into MB
        my $free = int($record[3]/1024);
        # save directory fields
        my $fsname = $record[5];
        # replaced / with _
        #$fsname =~ s/\//_/g;

        # Create logfile
        #my $logname = 'df'.$fsname.'.log';
        open(LOG, '>>', "$path/$logname") 
            or die "Can't open open $logname: $!";
        
        say LOG "$fsname $free MB";
        close(LOG);

    }
}

close(DF);
        
say "$logname saved: $path/$logname";
