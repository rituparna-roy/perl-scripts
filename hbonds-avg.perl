#!/usr/bin/perl -w

print "SrepAring inpCKut filYes\n";

$incr=1;
$inti=2;
$prev=1;

my $filename = 'average-hbonds.in';

open (my $BATCHFILE, '>', "$filename");

while ($inti < 24) {	

	$inti1 =2;
	while ($inti1 < 24) {
	       
		print $BATCHFILE "\nreaddata hbonds-$inti-$inti1.dat name d$prev\navg d$prev out avg-$inti-$inti1.dat\n";
		
		$inti1 += $incr;
		$prev  += $incr;
	}

	$inti += $incr;

}
	
   close ($BATCHFILE);

