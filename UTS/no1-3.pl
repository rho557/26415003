#!/usr/bin/perl
my $filename = "bestbooks2.txt";
open(my $fh, '<:encoding(UTF-8)', $filename)
  or die "Could not open file '$filename' $!";

my $filewrite="bestbooks3.txt";
open(my $fw, '>>', $filewrite ) or die "Could not open file '$filename' $!";

while (my $row = <$fh>) {
	chomp ($row);  
      	$row=~ s/^\"//;
	$row=~ s/(.)\"/$1/g;
	say $fw $row;
}

