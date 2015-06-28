#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Crypt::GPG;

# Config informations
my $mail = 'behemoth@autistici.org';
my $secret_key_line = qx/gpg --list-key $mail | grep pub/;
my ($secret_key) = $secret_key_line =~ /.*\/(.*) /;
my $passphrase = '1gl3wxba9f5r';
my $input_file = 'clear_text.txt';
my $encrypted_file = "$input_file.gpg";
my $plaintext = 'Take a walk on the wild side (Lou Reed)';

open(my $CLEARTEXT, ">> $input_file") or die("Unable to write $input_file\n");
print $CLEARTEXT $plaintext;
close($CLEARTEXT);

# Get new gpg object
my $gpg = new Crypt::GPG;
# Path of gpg executable
$gpg->gpgbin('/usr/bin/gpg');
# Set ID of default secret key
$gpg->secretkey($secret_key);
# Set passphrase 
$gpg->passphrase($passphrase);
# Debug
$gpg->debug();

open(my $INPUT, "< $input_file") or die("Unable to open $input_file\n"); 
open(my $OUTPUT, "> $encrypted_file") or die("Unable to write $encrypted_file");

my @encrypted = $gpg->encrypt($INPUT, $mail);

foreach (@encrypted) {
    print $OUTPUT $_;
}

close($INPUT);
close($OUTPUT);
