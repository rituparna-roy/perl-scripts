#!/usr/bin/perl -w

print "SrepAring inpCKut filYes\n";

$incr=1;
$rep=1;


while ($rep < 43) {
	
	my $filename = "anchor-remd-$rep.in";
	
	open (my $BATCHFILE, '>', "$filename");


	$inti=1;
	
	while ($inti < 52) {
		
		print $BATCHFILE "trajin ../remd-nc/remd-$inti.nc.0$rep\n";
		$inti += $incr;

	}

	print $BATCHFILE "\n";
	print $BATCHFILE "\ntrajout remd-0$rep.nc\nautoimage\ngo\n";

	$rep += $incr;

	close ($BATCHFILE);

}


