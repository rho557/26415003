#!/usr/bin/perl

@array;
$count =0;

sub hello {
	print "Hello $name !";
		if($count == 0){
			print "You are the first !";
		}
		else{
			chomp (@array );
			print"I've seen @array";
		}
	$count = $count + 1;
}

while (<>){
	$name = <stdin>;
        chomp($name );
	&hello;
	push(@array,$name );
}
