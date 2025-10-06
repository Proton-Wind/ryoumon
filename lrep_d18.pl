open(FHNDL,">./lrep_d18.dta");
require 'emath.pl';
$oldx=$x=0;$oldy=($x)/100+10;$orgdx=$dx=.05;printf FHNDL"(%f,%f)",$x,$oldy;
for($x=0;$x<500;$x+=.05){printf FHNDL"(%f,%f)",$x,($x)/100+10};$x=500;printf FHNDL"(%f,%f)",$x,($x)/100+10;
close(FHNDL);
