#!/usr/bin/perl
use strict;
use warnings;
use List::MoreUtils qw/ uniq /;

my $fname = 'G:\\RanCommTool\\CIQ\\consolidated-XLSX.csv';

my ($Cascade_Id) = @ARGV;
my (@eNodeID);
open (my $FH, '<', $fname) or die "Could not open $fname: $!";
while (<$FH>) {
	next if $. == 1;
	chomp;
	my @row = split(',');
	if ($row[1] eq $Cascade_Id) {
		push(@eNodeID,$row[21]);
	}
}

my @unique= uniq(@eNodeID);
foreach my $CId (@unique) {
		if (scalar(@unique) == 1) {
		 print $CId;
		} else {
		print $CId."\n";
	}
}
close $FH;
