#!/usr/bin/perl

my $filename = "bestbooks4.txt";
open(my $fh, '<:encoding(UTF-8)', $filename)
  or die "Could not open file '$filename' $!";

my $filewrite="bestbooks5.txt";
open(my $fw, '>>', $filewrite ) or die "Could not open file '$filename' $!";

$i=0;

while (my $row = <$fh>) {
        chomp($row);
        if($i <1){
                $row=~ s/^/id\|/;
        	say $fw $row;
	}
        elsif ($i%2==0){		
		#$_=$row;	
                $awal=$row;	
		$awal=~	s/(.)+?, //;
		$awal=~ s/^(...)(.)*/$1/;
		$akhir=$row;		
		$akhir=~ s/^(.)*(\d{4})(.)*$/$2/;
		$row=$awal.$akhir.'|'.$row;
		say $fw $row;
        }
	$i=$i+1;
}

