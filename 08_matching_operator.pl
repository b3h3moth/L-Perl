#!/usr/bin/env perl
use warnings;
use strict;

my $sequence = "AACTAGCGGATTCCAGACCGT";

#binding operator =~
#matching operator m//
#m//, individua un pattern da cercare nella stringa
if ($sequence =~ m/GATTCCA/) {
    print "found\n";
} else {
    print ("non found\n");
}

#se le stringhe non corrispondono, si usa !~
if ($sequence !~ m/GATTCCA/) {
    die "sequence there isn't\n";
} else {
    print ("found\n");
}

# =~ m//    match
# =~ //     match
# !~ //     not match
# =~ s///   substitution
#       g = globally        s/T/U/g
#       i = ignore case     s/T/U/i
#                           s/T/U/gi
# =~ tr///  transileteration

$sequence =~ s/GATTCCA/_H_A_C_K_/;
print "$sequence\n";
$sequence =~ tr/A/O/;
print "$sequence\n";

my $text = "http://genomes2go.com";
print "$text\n";

#con l'escaping e' fattibile, tuttavia vi sono alternative migliori
$text =~ s/http:\/\///;
print "$text\n";
#le alternative sono:
#$text =~ s!http://!!;
#$text =~ s@http://@@;
#$text =~ s#http://##;

my $texturl = "http://www.perl.com";
$texturl =~ s!http://!!;
print "$texturl\n";
