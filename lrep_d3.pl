open(FHNDL,">./lrep_d3.dta");
require 'emath.pl';
$oldx=$x=0;$oldy=2*sin(2*$pi*($x)/8);$orgdx=$dx=.05;printf FHNDL"(%f,%f)",$x,$oldy;
for($x=0;$x<12;$x+=.05){printf FHNDL"(%f,%f)",$x,2*sin(2*$pi*($x)/8)};$x=12;printf FHNDL"(%f,%f)",$x,2*sin(2*$pi*($x)/8);
close(FHNDL);
