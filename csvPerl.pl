#!/usr/bin/perl
use POSIX;
use strict;
#use warnings;
use Data::Dumper;

#my $fname = $ARGV[1];
#my ($Market_Name,$Cascade,$FDD_TDD,$Sector_ID,$Source_eNB_Name,$Source_eNB_ID,$Source_LSM,$Source_Cell_ID,$Source_eNB_OAM_VLAN,$Source_eNB_OAM_VLAN_Prefix_30,$Source_OAM_GW_IP,$Source_eNB_OAM_IP,$Source_eNB_SNB_VLAN,$Source_eNB_SNB_VLAN_Prefix_30,$Source_SNB_GW_IP,$Source_eNB_SNB_IP,$Source_BH_Port,$Source_Cabinet_Type,$Target_eNB_Name,$Target_eNB_ID,$Target_LSM,$Target_Cell_ID,$Target_eNB_OAM_VLAN,$Target_eNB_OAM_VLAN_prefix_30,$Target_OAM_GW_IP,$Target_eNB_OAM_IP,$Target_eNB_SNB_VLAN,$Target_eNB_SNB_VLAN_Prefix_30,$Target_SNB_GW_IP,$Target_eNB_SNB_IP,$Target_BH_Port,$Target_Cabinet_Type,$TAC_Hex,$PCI,$RACH,$Band,$DL_CenterFreq_MHz,,$UL_Center_Freq_MHz,$Bandwidth_MHz,$EARFCN_DL,$EARFCN_UL,$Start_EARFCN1,$Start_EARFCN2,$MME_IP,$Tx_Diversity,$Rx_Diveristy,$Tx_Path_Assignment,$Attenuation_Path,$RS_Boost,$EAIU_Type,$EAIU_SN,$Expansion_Cabinet,$RRH_Type,$RRH_subtype,$No_of_ALD,$Electrical_Tilt,$Samsung_Output_Power_watt,$Center_Line_Ft);

#Declare constants


my $fname = 'consolidated-XLSX.csv';
open (my $FH,'<', $fname) or die "Could not open the file";

my @rows;
my $record;
#my $header=<$FH>;  #attempt to remove the header
my %hash;
my @field;
my $item;
my $field_cnt;

#Declare the hashmaps
my %HashCsv;
my $record_cnt =0;
my $i;
my $j;
my $line;

while ($line=<$FH>) {
	    # chomp;
		 next if $. == 1;
         push @rows, $line;
}

foreach $record(@rows) {
#populate the data structure now
#$HashCsv{$record}
#print $record;

# split the record based on the "," separator
	@field = split(',',$record);

#loop through each of the fields in the record
	foreach $item (@field) {

	#print $item." "; # print all the items

	#populate the hashmap based on cascade and target enodeid. Assuming currently having 54 columns
		for ($field_cnt=0; $field_cnt<58; $field_cnt=$field_cnt+1) {
		$HashCsv{$field[1]}{$field[19]}[$record_cnt][$field_cnt] = $field[$field_cnt];
		#	print $HashCsv{$field[0]}{$field[18]}[$record_cnt][$field_cnt]." ";
		}
	}
#Increment for the next row
$record_cnt=$record_cnt+1;
}

# prints the cascade id
#print $field[0]."\n";

my $rowsinxcel = $record_cnt;
#print "no of rows=".$rowsinxcel;

display_csv_file();
#disprec_cascade_cdu30 ("LA04UB140","614401");

sub display_csv_file {
	#Traverse the data structure for the CSV file
	foreach my $outerkey (keys %HashCsv) {
	print "outerkey=".$outerkey."\n";
  
		foreach my $innerkey (keys %{$HashCsv{$outerkey}}) {  
			print "innerkey=".$innerkey."\n";
			# my @outer_array = @{$HashCsv{$outerkey}{$innerkey}};
			##foreach my $array_item (@{$HashCsv{$outerkey}{$innerkey}[0]}) {
		
			for (my $i=0; $i<$rowsinxcel;$i=$i+1) {
				for (my $j=0; $j<58;$j=$j+1) {
					print $HashCsv{$outerkey}{$innerkey}[$i][$j]." ";
				}
			}
		}
	}
}

sub disprec_cascade_cdu30 {

#my $cascade_id = "LA04UB140";
#my $cdu30_id = "614401";
	my ($cascade_id, $cdu30_id) = @_;

	for (my $i=0; $i<$rowsinxcel;$i=$i+1) {

			for (my $j=0; $j<58;$j=$j+1) {
					print $HashCsv{$cascade_id}{$cdu30_id}[$i][$j]." ";
			}
		print "\n";
	}
	
}
#close the CSV file
close $fname;
#print Dumper%HashCsv