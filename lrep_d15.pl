open(FHNDL,">./lrep_d15.dta");
require 'emath.pl';
$y=(400); if ($y!=0 && abs($y)<0.0001) {$y=sprintf("%f",$y);} printf FHNDL "%s\n",$y; 
close(FHNDL);
