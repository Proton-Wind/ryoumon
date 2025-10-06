open(FHNDL,">./lrep_d14.dta");
require 'emath.pl';
$y=(300/50+10); if ($y!=0 && abs($y)<0.0001) {$y=sprintf("%f",$y);} printf FHNDL "%s\n",$y; 
close(FHNDL);
