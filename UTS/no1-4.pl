#!/usr/bin/perl

my $filename = "bestbooks3.txt";
open(my $fh, '<:encoding(UTF-8)', $filename)
  or die "Could not open file '$filename' $!";

my $filewrite="bestbooks4.txt";
open(my $fw, '>>', $filewrite ) or die "Could not open file '$filename' $!";

$i=0;

while (my $row = <$fh>) {
	chomp($row);
        if($i <1){
		$row=~ s/^(.)/\u$1/;
		$row=~ s/\|(.)/\|\u$1/gi;
	}
	else {
		$row=~ s/^(.)/\u$1/;
	}
	say $fw $row;
	$i=$i+1;
}

