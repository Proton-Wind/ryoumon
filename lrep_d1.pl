open(FHNDL,">./lrep_d1.dta");
require 'emath.pl';
for($x=$pi;$x<34*$pi;$x+=.05){printf FHNDL"(%f,%f)",0.2*(cos(($x))+($x)/3.5)+7.2,-0.3*sin(($x))+2.2;};$x=34*$pi;printf FHNDL"(%f,%f)",0.2*(cos(($x))+($x)/3.5)+7.2,-0.3*sin(($x))+2.2;
close(FHNDL);
