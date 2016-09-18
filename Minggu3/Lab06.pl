#!/usr/bin/perl
printf "String= \n";
@lines = <STDIN> ;
@rev = reverse sort @lines;
@as = sort @lines;
print "rev sorted =  \n@rev\n";
print "ascii sorted = \n@as";

