#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

my $fname = 'consolidated-XLSX.csv';
my @result=();
my @split=();
my $j=0;
my $i=0;
my ($Cascade_Id, $Target_eNB_ID) = @ARGV;
my $count=0;

open (my $FH, '<', $fname) or die "Could not open $fname: $!";
while (<$FH>) {
	next if $. == 1;
	chomp;
	my @row = split(',');
	#print join(" ", map { $_ eq '' ? 'Empty' : $_ } @row), "\n" if $row[1] eq $Cascade_Id && $row[19] eq $Target_eNB_ID
	#@result[$count]=join(" ", map { $_ eq '' ? 'Empty' : $_ } @row), "\n" if $row[1] eq $Cascade_Id && $row[19] eq $Target_eNB_ID;
	@split=map { $_ eq '' ? 'Empty' : $_ } @row, "\n" if $row[1] eq $Cascade_Id && $row[19] eq $Target_eNB_ID;
	print "count=".scalar(@split);
	if (scalar(@split)>0 && $row[1] eq $Cascade_Id && $row[19] eq $Target_eNB_ID) {
		for ($i=0; $i<scalar(@split); $i=$i+1) {
			$result[$count][$i] = $split[$i];
#			print $result[$count][$i]." ";
		}
	print "\n";
	$count=$count+1;
  }
}  
print $result[0][10];
close $FH;


#print Dumper@result;