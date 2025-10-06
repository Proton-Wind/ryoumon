open(FHNDL,">./lrep_d22.dta");
require 'emath.pl';
for($x=0;$x<1;$x+=.05){printf FHNDL"(%f,%f)",0.1*sin(6.28319*($x))+.1,$x};$x=1;printf FHNDL"(%f,%f)",0.1*sin(6.28319*($x))+.1,$x;
close(FHNDL);
