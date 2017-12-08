#!/usr/bin/perl
use strict;
use warnings;

my $fname = 'G:\\RanCommTool\\CIQ\\consolidated-XLSX.csv';

my ($Cascade_ID, $Target_eNB_ID, $col) = @ARGV;

my @out;

open (my $FH, '<', $fname) or die "Could not open $fname: $!";
while (<$FH>) {
	next if $. == 1;
	s{[\r\n]*$}{};
	my @row = split(',');
	if ($row[1] eq $Cascade_ID && $row[19] eq $Target_eNB_ID) {
		@row = map { $_ eq '' ? 'Empty' : $_ } defined($col) ? splice(@row, $col - 1, 1) : @row;
		push(@out, join(' ', @row) . "\n");
	}
}
close $FH;

print scalar(@out), "\n", @out;
#print @out;
