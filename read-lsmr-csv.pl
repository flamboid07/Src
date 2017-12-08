#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

my $fname = 'G:\RanCommTool\CIQ\sprint-LSMR-GPTemplate.csv';
my @result=();
my @split=();
my $j=0;
my $i=0;
my ($Site, $Site_type) = @ARGV;
my $count=0;

open (my $FH, '<', $fname) or die "Could not open $fname: $!";
while (<$FH>) {
	next if $. == 1;
	chomp;
	my @row = split(',');
	#print $row[0];
	@split=map { $_ eq '' ? 'Empty' : $_ } @row, "\n" if $row[0] eq $Site && $row[3] eq $Site_type;
	#print "count=".scalar(@split);
	if (scalar(@split)>0 && $row[0] eq $Site && $row[3] eq $Site_type) {
	print $split[1];
		for ($i=0; $i<scalar(@split); $i=$i+1) {
			$result[$count][$i] = ($split[$i]);
			
			#print $result[$count][$i]." ";
		
		}
	#print "\n";
	$count=$count+1;
  } #else {
     
	 #print "Nothing to display in CSV";
  #}
  	
}  
#print $result[0][10];
#print Dumper\@split;
close $FH;
