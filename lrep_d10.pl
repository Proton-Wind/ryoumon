open(FHNDL,">./lrep_d10.dta");
require 'emath.pl';
$oldx=$x=4;$oldy=48/($x);$orgdx=$dx=.05;printf FHNDL"(%f,%f)",$x,$oldy;
for($x=4;$x<12;$x+=.05){printf FHNDL"(%f,%f)",$x,48/($x)};$x=12;printf FHNDL"(%f,%f)",$x,48/($x);
close(FHNDL);
