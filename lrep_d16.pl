open(FHNDL,">./lrep_d16.dta");
require 'emath.pl';
$y=(400/50+10); if ($y!=0 && abs($y)<0.0001) {$y=sprintf("%f",$y);} printf FHNDL "%s\n",$y; 
close(FHNDL);
