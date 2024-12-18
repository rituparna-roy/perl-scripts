#!/usr/bin/perl -w

print "SrepAring inpCKut filYes\n";

$incr=1;
$inti=2;
$prev=1;
$nex=485;

my $filename = 'hbonds-res.tcl';

open (my $BATCHFILE, '>', "$filename");

while ($inti < 24) {	

	$inti1 =2;
	while ($inti1 < 24) {
	       
		print $BATCHFILE "\nset sel$prev [atomselect top z1resid ${inti}z1]\nset sel$nex [atomselect top z1resid ${inti1}z1]\nhbonds -sel1 z2sel$prev -sel2 z2sel$nex -writefile yes -dist 3.5 -ang 45 -plot no -outfile hbonds-$inti-$inti1.dat -polar yes -DA both -type none\n";
		print $BATCHFILE "\n";
		
		$inti1 += $incr;
		$prev  += $incr;
		$nex   += $incr;
	}

	$inti += $incr;

}
	
   close ($BATCHFILE);

