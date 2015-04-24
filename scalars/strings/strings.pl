#!/usr/bin/env perl
#use Modern::Perl;
use warnings;
use strict;

my $str = "Doppio apice con qualche\ncarattere speciale\n";
my $str2= 'Apice singolo \n senza funzionalita\'';

print $str.$str2;

#qq doppia quotatura
#q singola quotatura
my $str3 = qq^\nProviamo con la doppia quotatura\n^;
print $str3;
my $str4 = q^\nProviamo con la singola quotatura\n^;
print $str4;

#heredoc (default doppia quotatura
my $estratto =<<ESTRATTO;

my str3 = qq^\nProviamo con la doppia quotatura\n^;
print str3;
my str4 = q^\nProviamo con la singola quotatura\n^;
print str4;
ESTRATTO

print $estratto;

#heredoc singola quotatura
my $estratto1 =<<'ESTRATTO1';

my str3 = qq^\nProviamo con la doppia quotatura\n^;
print str3;
my str4 = q^\nProviamo con la singola quotatura\n^;
print str4;
ESTRATTO1

print $estratto1;

my $lun = length($str);
print $lun; print "\n";

my $num = rand(); print $num;

#concatenazione
my $log = "tanto va la\n";
$log .= "gatta al lardo che\n";
$log .= "ci lascia la\n";
$log .= "zampogna\n";

print $log;

#comparazione stringhe
#eq = equals
#gt = greater then
#lt = less then
if ($str eq $str2) {
    print "sono uguali\n";
}
elsif ($str gt $str2) {
    print "$str maggiore di $str2\n";
}
elsif ($str lt $str2) {
    print "$str minore di $str2\n";
}

