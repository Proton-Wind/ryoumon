open(FHNDL,">./emathPtest.d1");
require 'emath.pl';
for($x=3.14;$x<20*3.14;$x+=.05){printf FHNDL"(%f,%f)",-0.5*sin(($x))+10.2,-0.2*(cos(($x))+($x)/3)+10;};$x=20*3.14;printf FHNDL"(%f,%f)",-0.5*sin(($x))+10.2,-0.2*(cos(($x))+($x)/3)+10;
close(FHNDL);
