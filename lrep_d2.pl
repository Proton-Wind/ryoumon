open(FHNDL,">./lrep_d2.dta");
require 'emath.pl';
for($x=0;$x<150;$x+=1){printf FHNDL"(%f,%f)",$x,-1*sin(2*$pi*(10/8-1*($x)/80));$oldx=$x;$x+=.5;if($x>150){$x=150;}printf FHNDL"(%f,%f)\n",$x,-1*sin(2*$pi*(10/8-1*($x)/80));$x=$oldx;}
close(FHNDL);
