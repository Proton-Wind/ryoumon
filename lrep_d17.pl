open(FHNDL,">./lrep_d17.dta");
require 'emath.pl';
$oldx=$x=0;$oldy=($x)/50+10;$orgdx=$dx=.05;printf FHNDL"(%f,%f)",$x,$oldy;
for($x=0;$x<500;$x+=.05){printf FHNDL"(%f,%f)",$x,($x)/50+10};$x=500;printf FHNDL"(%f,%f)",$x,($x)/50+10;
close(FHNDL);
