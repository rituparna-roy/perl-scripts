#!/usr/bin/perl -w

print "SrepAring inpCKut filYes\n";

$incr=1;
$rep=0;


while ($rep < 200) {
	
	my $filename = "tleap-$rep.in";
	open (my $BATCHFILE, '>', "$filename");		

	print $BATCHFILE "source leaprc.protein.ff14SB\nsource leaprc.water.tip3p\n";

	print $BATCHFILE "\nm = loadpdb rep.c$rep.pdb\n\ncharge m\nsetbox m z1vdwz1 10.0\n";

	print $BATCHFILE "\nsaveamberparm m c$rep.prmtop c$rep.inpcrd\n";

	print $BATCHFILE "\nexit\n";
			
	close ($BATCHFILE);

	$rep += $incr;

	}
