#!/usr/bin/perl
use warnings;
# Global Array Declaration for IP Address. This will hold the table data for RTRV-IP-ADDR Command
    #my @rtrv_ip_addr = ();
	#my %HashCsv;
	
	###########Sub Routine Parses the table structured log file into Array @rtrv_ip_addr ###################
	sub parse_ip_addrn_get {
    
		my $fname= $_[0];
		my @ipsrec=();
	    my $string="";
		my $i=0;
		my $j=0;
		
		open (my $FH,'<', $fname) or die "Could not open the file";

		while (my $row=<$FH>) {

		##########Needed for Table Type Output Format
		if ($row =~ /\s\s\s\d\d?\s*\S+.*/ig){
			$string = $string.$row."\n";
			}
		}
		close $FH;


		my (@split_each_line_ip,$split_each_line_ip);
		@split_each_line_ip = split (/\n/,$string);
		
		foreach $split_each_line_ip (@split_each_line_ip){
			if ($split_each_line_ip =~ m/^\s+/) {
				   
                #Split by "spaces"
			    @ipsrec = split (/\s+/,$split_each_line_ip);
               
			    for ($j=0; $j<scalar(@ipsrec);$j++) {
					  #$row[$i][$j] = $keys;
					  $rtrv_ip_addr[$i][$j] = $ipsrec[$j];
					#  print "i=$i, j=$j"." ". $rtrv_ip_addr[$i] [$j]."\t";
				  }
				  #print "\n";
				$i=$i+1;  
			  
			}
		}	
	}		
###########Sub Routine Prints Array at position $row_index, $col_index###################
	sub print_ip_addrn_pos {
	
		my ($row_index, $col_index) = @_;
		return $rtrv_ip_addr[$row_index][$col_index];
	}		
	
	###########Sub Routine Call###################
    #parse_ip_addrn_get ($IPLog_Fname);
	#my $ret_val=print_ip_addrn_pos(2,3);
    #print $ret_val;
	
	sub get_size_ip_addr_arr {
		return scalar(@rtrv_ip_addr)
	}
	
	
###########Populate the Hash Map##########################################################

sub read_vendor_ciq_info {	
	
	my $fname = 'C:\\Users\\Arvind\\Desktop\\Ashur\\consolidated-XLSX.csv';
	open (my $FH,'<', $fname) or die "Could not open the file";


	my @rows;
	my $record;
	
	my @field;
	my $item;
	my $field_cnt;

	#Declare the hashmaps
	#my %HashCsv;
	my $record_cnt =0;
	
	while (my $line=<$FH>) {
			 #chomp $line;
			 next if $. == 1;
			 push @rows, $line;
	}
	#close the CSV file
	close $fname;


	foreach $record(@rows) {
	#populate the data structure now
	#$HashCsv{$record}
	#print $record;

	# split the record based on the "," separator
		@field = split(',',$record);

	#loop through each of the fields in the record
		foreach $item (@field) {

		#print $item." "; # print all the items
        
		#populate the hashmap based on cascade and target enodeid. Assuming currently having 58 columns
			for ($field_cnt=0; $field_cnt<MAXCOL; $field_cnt=$field_cnt+1) {
				if ($field[$field_cnt] eq "") {
					$field[$field_cnt]="Empty";
				}
				$HashCsv{$field[1]}{$field[19]}[$record_cnt][$field_cnt] = $field[$field_cnt];
				
				#print $HashCsv{$field[1]}{$field[19]}[$record_cnt][$field_cnt]." ";
			}
		}
	#Increment for the next row
	$record_cnt=$record_cnt+1;
	}
#print $record_cnt;
}

###########Retrieve data from Hash Map at position specified by records and keys ########
sub get_hashmap_value_bykey {

	my ($Cascade_Id, $Target_eNB_ID, $records, $key) = @_;
    return $HashCsv{$Cascade_Id}{$Target_eNB_ID}[$records][$key] ;
}	
###########Populate the Hash Map##########################################################


sub ret_vendor_ciq_info2 {	

my ($Cascade_Id, $Target_eNB_ID, $row,$col) = @_;

my $fname = 'consolidated-XLSX.csv';
my @result=();
my @split=();
my $j=0;
my $i=0;
my $count=0;

open (my $FH, '<', $fname) or die "Could not open $fname: $!";

while (<$FH>) {
	next if $. == 1;
	chomp;
	my @row = split(',');
	#print join(" ", map { $_ eq '' ? 'Empty' : $_ } @row), "\n" if $row[1] eq $Cascade_Id && $row[19] eq $Target_eNB_ID
	#@result[$count]=join(" ", map { $_ eq '' ? 'Empty' : $_ } @row), "\n" if $row[1] eq $Cascade_Id && $row[19] eq $Target_eNB_ID;
	@split=map { $_ eq '' ? 'Empty' : $_ } @row, "\n" if $row[1] eq $Cascade_Id && $row[19] eq $Target_eNB_ID;
    
	if (scalar(@split)>0 && $row[1] eq $Cascade_Id && $row[19] eq $Target_eNB_ID) {
		
		for ($i=0; $i<scalar(@split); $i=$i+1) {
			$result[$count][$i] = $split[$i];
			print $result[$count][$i]." ";
		}
#	print "\n";
	$count=$count+1;
	}
}  
close $FH;
#print Dumper@result;
return $result[$row][$col];
}


################################################################################################
       ###########Sub Routine Parses the table structured log file into Array @rtrv_ip_route ###################
               sub parse_ip_routen_get {
   
                              my $fname= 'RTRV-IP-ROUTE.txt';;
                              my @ipsrec=();
                              my $string="";
                              my $i=0;
                              my $j=0;
                             
                              open (my $FH,'<', $fname) or die "Could not open the file";
 
                              while (my $row=<$FH>) {
 
                              ##########Needed for Table Type Output Format
                              if ($row =~ /\s\s\s\d\d?\s*\S+.*/ig){
                                             $string = $string.$row."\n";
                                             }
                              }
                              close $FH;
 
 
                              my (@split_each_line_ip,$split_each_line_ip);
                              @split_each_line_ip = split (/\n/,$string);
                             
                              foreach $split_each_line_ip (@split_each_line_ip){
                                             if ($split_each_line_ip =~ m/^\s+/) {
                                                              
                                                #Split by "spaces"
                                                 @ipsrec = split (/\s+/,$split_each_line_ip);
              
                                                 for ($j=0; $j<scalar(@ipsrec);$j++) {
                                                                             #$row[$i][$j] = $keys;
                                                                             $rtrv_ip_route[$i][$j] = $ipsrec[$j];
                                                                           #  print "i=$i, j=$j"." ". $rtrv_ip_route[$i] [$j]."\t";
                                                              }
                                                              #print "\n";
                                                            $i=$i+1; 
                                               
                                             }
                              }             
               }                            
               ###########Sub Routine Prints Array at position $row_index, $col_index###################
               sub print_ip_routen_pos {
              
                              my ($row_index, $col_index) = @_;
                              return $rtrv_ip_route[$row_index][$col_index];
               } 

               ####Sub routine to get the size of the Array
                sub get_size_ip_route_arr {
                              return scalar(@rtrv_ip_route)
                }                        
              
############################################Sub Routine Call##########################################################################

    ###########Sub Routine Parses the table structured log file into Array @rtrv_mme_conf###################
               sub parse_mmen_conf_get {
   
                              my $fname= 'RTRV-MME-CONF.txt';
                              my @ipsrec=();
                              my $string="";
                              my $i=0;
                              my $j=0;
                             
                              open (my $FH,'<', $fname) or die "Could not open the file";
 
                              while (my $row=<$FH>) {
 
                              ##########Needed for Table Type Output Format
                              if ($row =~ /\s\s\s\d\d?\s*\S+.*/ig){
                                             $string = $string.$row."\n";
                                             }
                              }
                              close $FH;
 
 
                              my (@split_each_line_ip,$split_each_line_ip);
                              @split_each_line_ip = split (/\n/,$string);
                             
                              foreach $split_each_line_ip (@split_each_line_ip){
                                             if ($split_each_line_ip =~ m/^\s+/) {
                                                              
                                                #Split by "spaces"
                                                 @ipsrec = split (/\s+/,$split_each_line_ip);
              
                                                 for ($j=0; $j<scalar(@ipsrec);$j++) {
                                                                             #$row[$i][$j] = $keys;
                                                                             $rtrv_mme_conf[$i][$j] = $ipsrec[$j];
                                                                           #  print "i=$i, j=$j"." ". $rtrv_mme_conf[$i] [$j]."\t";
                                                              }
                                                              #print "\n";
                                                            $i=$i+1; 
                                               
                                             }
                              }             
               }                            
               ###########Sub Routine Prints Array at position $row_index, $col_index###################
               sub print_mmen_conf_pos {
              
                              my ($row_index, $col_index) = @_;
                              return $rtrv_mme_conf[$row_index][$col_index];
               } 

               ####Sub routine to get the size of the Array
                sub get_size_mme_conf_arr {
                              return scalar(@rtrv_mme_conf)
                }                             
              
               ###########Sub Routine Call###################        


              
               ###########Sub Routine Parses the table structured log file into Array @rtrv_ntp_conf###################
               sub parse_ntp_conf_get {
   
                              my $fname= 'RTRV-NTP-CONF.txt';
                              my @ipsrec=();
                              my $string="";
                              my $i=0;
                              my $j=0;
                             
                              open (my $FH,'<', $fname) or die "Could not open the file";
 
                              while (my $row=<$FH>) {
 
                              ##########Needed for Table Type Output Format
                              if ($row =~ /\s\s\s\d\d?\s*\S+.*/ig){
                                             $string = $string.$row."\n";
                                             }
                              }
                              close $FH;
 
 
                              my (@split_each_line_ip,$split_each_line_ip);
                              @split_each_line_ip = split (/\n/,$string);
                             
                              foreach $split_each_line_ip (@split_each_line_ip){
                                             if ($split_each_line_ip =~ m/^\s+/) {
                                                              
                                                #Split by "spaces"
                                                 @ipsrec = split (/\s+/,$split_each_line_ip);
              
                                                 for ($j=0; $j<scalar(@ipsrec);$j++) {
                                                                             #$row[$i][$j] = $keys;
                                                                             $rtrv_ntp_conf[$i][$j] = $ipsrec[$j];
                                                                           #  print "i=$i, j=$j"." ". $rtrv_ntp_conf[$i] [$j]."\t";
                                                              }
                                                              #print "\n";
                                                            $i=$i+1; 
                                               
                                             }
                              }             
               }                            
               ###########Sub Routine Prints Array at position $row_index, $col_index###################
               sub print_ntp_conf_pos {
              
                              my ($row_index, $col_index) = @_;
                              return $rtrv_ntp_conf[$row_index][$col_index];
               }                            
               ####Sub routine to get the size of the Array
                sub get_size_ntp_conf_arr {
                              return scalar(@rtrv_ntp_conf)
                }                        
              
               ###########Sub Routine Call###################



   
              
              
               ###########Sub Routine Parses the table structured log file into Array @rtrv_prach_conf ###################
               sub parse_prach_confn_get {
   
                              my $fname= 'RTRV-PRACH-CONF.txt';
                              my @ipsrec=();
                              my $string="";
                              my $i=0;
                              my $j=0;
                             
                              open (my $FH,'<', $fname) or die "Could not open the file";
 
                              while (my $row=<$FH>) {
 
                              ##########Needed for Table Type Output Format
                              if ($row =~ /\s\s\s\d\d?\s*\S+.*/ig){
                                             $string = $string.$row."\n";
                                             }
                              }
                              close $FH;
 
 
                              my (@split_each_line_ip,$split_each_line_ip);
                              @split_each_line_ip = split (/\n/,$string);
                             
                              foreach $split_each_line_ip (@split_each_line_ip){
                                             if ($split_each_line_ip =~ m/^\s+/) {
                                                              
                                                #Split by "spaces"
                                                 @ipsrec = split (/\s+/,$split_each_line_ip);
              
                                                 for ($j=0; $j<scalar(@ipsrec);$j++) {
                                                                             #$row[$i][$j] = $keys;
                                                                             $rtrv_prach_conf[$i][$j] = $ipsrec[$j];
                                                                           #  print "i=$i, j=$j"." ". $rtrv_prach_conf[$i] [$j]."\t";
                                                              }
                                                              #print "\n";
                                                            $i=$i+1; 
                                               
                                             }
                              }             
               }                            
               ###########Sub Routine Prints Array at position $row_index, $col_index###################
               sub print_prach_confn_pos {
              
                              my ($row_index, $col_index) = @_;
                              return $rtrv_prach_conf[$row_index][$col_index];
               }    

               ####Sub routine to get the size of the Array
                sub get_size_prach_conf_arr {
                              return scalar(@rtrv_prach_conf)
                }                        
                                      
              
               ###########Sub Routine Call###################
               ###########Sub Routine Parses the table structured log file into Array @rtrv_cell_acs ###################
               sub parse_cell_acsn_get {
   
                              my $fname= 'RTRV-CELL-ACS.txt';
                              my @ipsrec=();
                              my $string="";
                              my $i=0;
                              my $j=0;
                             
                              open (my $FH,'<', $fname) or die "Could not open the file";
 
                              while (my $row=<$FH>) {
 
                              ##########Needed for Table Type Output Format
                              if ($row =~ /\s\s\s\d\d?\s*\S+.*/ig){
                                             $string = $string.$row."\n";
                                             }
                              }
                              close $FH;
 
 
                              my (@split_each_line_ip,$split_each_line_ip);
                              @split_each_line_ip = split (/\n/,$string);
                             
                              foreach $split_each_line_ip (@split_each_line_ip){
                                             if ($split_each_line_ip =~ m/^\s+/) {
                                                              
                                                #Split by "spaces"
                                                 @ipsrec = split (/\s+/,$split_each_line_ip);
              
                                                 for ($j=0; $j<scalar(@ipsrec);$j++) {
                                                                             #$row[$i][$j] = $keys;
                                                                             $rtrv_cell_acs[$i][$j] = $ipsrec[$j];
                                                                           #  print "i=$i, j=$j"." ". $rtrv_cell_acs[$i] [$j]."\t";
                                                              }
                                                              #print "\n";
                                                            $i=$i+1; 
                                               
                                             }
                              }             
               }                            
               ###########Sub Routine Prints Array at position $row_index, $col_index###################
               sub print_cell_acsn_pos {
              
                              my ($row_index, $col_index) = @_;
                              return $rtrv_cell_acs[$row_index][$col_index];
               }   

               ####Sub routine to get the size of the Array
                sub get_size_cell_acs_arr {
                              return scalar(@rtrv_cell_acs)
                }                                         
              
               ###########Sub Routine Call###################


   
              
              
               ###########Sub Routine Parses the table structured log file into Array @rtrv_cell_idle###################
               sub parse_cell_idlen_get {
   
                              my $fname='RTRV-CELL-IDLE.txt';
                              my @ipsrec=();
                              my $string="";
                              my $i=0;
                              my $j=0;
                             
                              open (my $FH,'<', $fname) or die "Could not open the file";
 
                              while (my $row=<$FH>) {
 
                              ##########Needed for Table Type Output Format
                              if ($row =~ /\s\s\s\d\d?\s*\S+.*/ig){
                                             $string = $string.$row."\n";
                                             }
                              }
                              close $FH;
 
 
                              my (@split_each_line_ip,$split_each_line_ip);
                              @split_each_line_ip = split (/\n/,$string);
                             
                              foreach $split_each_line_ip (@split_each_line_ip){
                                             if ($split_each_line_ip =~ m/^\s+/) {
                                                              
                                                #Split by "spaces"
                                                 @ipsrec = split (/\s+/,$split_each_line_ip);
              
                                                 for ($j=0; $j<scalar(@ipsrec);$j++) {
                                                                             #$row[$i][$j] = $keys;
                                                                             $rtrv_cell_idle[$i][$j] = $ipsrec[$j];
                                                                           #  print "i=$i, j=$j"." ". $rtrv_cell_idle[$i] [$j]."\t";
                                                              }
                                                              #print "\n";
                                                            $i=$i+1; 
                                               
                                             }
                              }             
               }                            
               ###########Sub Routine Prints Array at position $row_index, $col_index###################
               sub print_cell_idlen_pos {
              
                              my ($row_index, $col_index) = @_;
                              return $rtrv_cell_idle[$row_index][$col_index];
               }    
               ####Sub routine to get the size of the Array
                sub get_size_cell_idle_arr {
                              return scalar(@rtrv_cell_idle)
                }                          
              
               ###########Sub Routine Call###################
;
   
              
               ###########Sub Routine Parses the table structured log file into Array @rtrv_cell_info ###################
               sub parse_cell_infon_get {
   
                              my $fname= 'RTRV-CELL-INFO.txt';
                              my @ipsrec=();
                              my $string="";
                              my $i=0;
                              my $j=0;
                             
                              open (my $FH,'<', $fname) or die "Could not open the file";
 
                              while (my $row=<$FH>) {
 
                              ##########Needed for Table Type Output Format
                              if ($row =~ /\s\s\s\d\d?\s*\S+.*/ig){
                                             $string = $string.$row."\n";
                                             }
                              }
                              close $FH;
 
 
                              my (@split_each_line_ip,$split_each_line_ip);
                              @split_each_line_ip = split (/\n/,$string);
                             
                              foreach $split_each_line_ip (@split_each_line_ip){
                                             if ($split_each_line_ip =~ m/^\s+/) {
                                                              
                                                #Split by "spaces"
                                                 @ipsrec = split (/\s+/,$split_each_line_ip);
              
                                                 for ($j=0; $j<scalar(@ipsrec);$j++) {
                                                                             #$row[$i][$j] = $keys;
                                                                             $rtrv_cell_info[$i][$j] = $ipsrec[$j];
                                                                           #  print "i=$i, j=$j"." ". $rtrv_cell_info[$i] [$j]."\t";
                                                              }
                                                              #print "\n";
                                                            $i=$i+1; 
                                               
                                             }
                              }             
               }                            
               ###########Sub Routine Prints Array at position $row_index, $col_index###################
               sub print_cell_infon_pos {
              
                              my ($row_index, $col_index) = @_;
                              return $rtrv_cell_info[$row_index][$col_index];
               }     
               ####Sub routine to get the size of the Array
                sub get_size_cell_info_arr {
                              return scalar(@rtrv_cell_info)
                }                         
              
               ###########Sub Routine Call###################

   
              
               
              
               ###########Sub Routine Parses the table structured log file into Array @rtrv_cellplmn_info ###################
               sub parse_cellplmn_info_get {
   
                              my $fname= 'RTRV-CELLPLMN-INFO.txt';
                              my @ipsrec=();
                              my $string="";
                              my $i=0;
                              my $j=0;
                             
                              open (my $FH,'<', $fname) or die "Could not open the file";
 
                              while (my $row=<$FH>) {
 
                              ##########Needed for Table Type Output Format
                              if ($row =~ /\s\s\s\d\d?\s*\S+.*/ig){
                                             $string = $string.$row."\n";
                                             }
                              }
                              close $FH;
 
 
                              my (@split_each_line_ip,$split_each_line_ip);
                              @split_each_line_ip = split (/\n/,$string);
                             
                              foreach $split_each_line_ip (@split_each_line_ip){
                                             if ($split_each_line_ip =~ m/^\s+/) {
                                                              
                                                #Split by "spaces"
                                                 @ipsrec = split (/\s+/,$split_each_line_ip);
              
                                                 for ($j=0; $j<scalar(@ipsrec);$j++) {
                                                                             #$row[$i][$j] = $keys;
                                                                             $rtrv_cellplmn_info[$i][$j] = $ipsrec[$j];
                                                                           #  print "i=$i, j=$j"." ". $rtrv_cellplmn_info[$i] [$j]."\t";
                                                              }
                                                              #print "\n";
                                                            $i=$i+1; 
                                               
                                             }
                              }             
               }                            
               ###########Sub Routine Prints Array at position $row_index, $col_index###################
               sub print_cellplmn_info_pos {
              
                              my ($row_index, $col_index) = @_;
                              return $rtrv_cellplmn_info[$row_index][$col_index];
               }                            
              
                ####Sub routine to get the size of the Array
                sub get_size_cellplmn_info_arr {
                              return scalar(@rtrv_cellplmn_info)
                }                
              
               ###########Sub Routine Call###################


              
               ###########Sub Routine Parses the table structured log file into Array @rtrv_ip_addr ###################
               sub parse_enbplmn_info_get {
   
                              my $fname= 'RTRV-ENBPLMN-INFO.txt';
                              my @ipsrec=();
                              my $string="";
                              my $i=0;
                              my $j=0;
                             
                              open (my $FH,'<', $fname) or die "Could not open the file";
 
                              while (my $row=<$FH>) {
 
                              ##########Needed for Table Type Output Format
                              if ($row =~ /\s\s\s\d\d?\s*\S+.*/ig){
                                             $string = $string.$row."\n";
                                             }
                              }
                              close $FH;
 
 
                              my (@split_each_line_ip,$split_each_line_ip);
                              @split_each_line_ip = split (/\n/,$string);
                             
                              foreach $split_each_line_ip (@split_each_line_ip){
                                             if ($split_each_line_ip =~ m/^\s+/) {
                                                              
                                                #Split by "spaces"
                                                 @ipsrec = split (/\s+/,$split_each_line_ip);
              
                                                 for ($j=0; $j<scalar(@ipsrec);$j++) {
                                                                             #$row[$i][$j] = $keys;
                                                                             $rtrv_enbplmn_info[$i][$j] = $ipsrec[$j];
                                                                           #  print "i=$i, j=$j"." ". $rtrv_ip_addr[$i] [$j]."\t";
                                                              }
                                                              #print "\n";
                                                            $i=$i+1; 
                                               
                                             }
                              }             
               }                            
               ###########Sub Routine Prints Array at position $row_index, $col_index###################
               sub print_enbplmn_info {
              
                              my ($row_index, $col_index) = @_;
                              return $rtrv_enbplmn_info[$row_index][$col_index];
               }                            
             ####Sub routine to get the size of the Array
                sub get_size_enbplmn_info_arr {
                              return scalar(@rtrv_enbplmn_info)
                }                      
              
               ###########Sub Routine Call###################	

              
               ###########Sub Routine Parses the table structured log file into Array @rtrv_alm_list###################
               sub parse_alm_list_get {
   
                              #my $fname= $_[0];
							  my $fname='RTRV-ALM-LIST.txt';
                              my @ipsrec=();
                              my $string="";
                              my $i=0;
                              my $j=0;
                             
                              open (my $FH,'<', $fname) or die "Could not open the file";
 
                              while (my $row=<$FH>) {
 
                              ##########Needed for Table Type Output Format
                              if ($row =~ /\s\s\s\d\d?\s*\S+.*/ig){
                                             $string = $string.$row."\n";
                                             }
                              }
                              close $FH;
 
 
                              my (@split_each_line_ip,$split_each_line_ip);
                              @split_each_line_ip = split (/\n/,$string);
                             
                              foreach $split_each_line_ip (@split_each_line_ip){
                                             if ($split_each_line_ip =~ m/^\s+/) {
                                                              
                                                #Split by "spaces"
                                                 @ipsrec = split (/\s+/,$split_each_line_ip);
              
                                                 for ($j=0; $j<scalar(@ipsrec);$j++) {
                                                                             #$row[$i][$j] = $keys;
                                                                             $rtrv_alm_list[$i][$j] = $ipsrec[$j];
                                                                           #  print "i=$i, j=$j"." ". $rtrv_alm_list[$i] [$j]."\t";
                                                              }
                                                              #print "\n";
                                                            $i=$i+1; 
                                               
                                             }
                              }             
               }                            
               ###########Sub Routine Prints Array at position $row_index, $col_index###################
               sub print_alm_list_pos {
              
                              my ($row_index, $col_index) = @_;
                              return $rtrv_alm_list[$row_index][$col_index];
               }    
               ####Sub routine to get the size of the Array
                sub get_size_alm_list_arr {
                              return scalar(@rtrv_alm_list)
                }                          
              
               ###########Sub Routine Call###################

###########Sub Routine Parses the table structured log file into Array @rtrv_alm_log###################
               sub parse_alm_log_get {
   
                             # my $fname= $_[0];
							 my $fname = 'RTRV-ALM-LOG.txt';
                              my @ipsrec=();
                              my $string="";
                              my $i=0;
                              my $j=0;
                             
                              open (my $FH,'<', $fname) or die "Could not open the file";
 
                              while (my $row=<$FH>) {
 
                              ##########Needed for Table Type Output Format
                              if ($row =~ /\s\s\s\d\d?\s*\S+.*/ig){
                                             $string = $string.$row."\n";
                                             }
                              }
                              close $FH;
 
 
                              my (@split_each_line_ip,$split_each_line_ip);
                              @split_each_line_ip = split (/\n/,$string);
                             
                              foreach $split_each_line_ip (@split_each_line_ip){
                                             if ($split_each_line_ip =~ m/^\s+/) {
                                                              
                                                #Split by "spaces"
                                                 @ipsrec = split (/\s+/,$split_each_line_ip);
              
                                                 for ($j=0; $j<scalar(@ipsrec);$j++) {
                                                                             #$row[$i][$j] = $keys;
                                                                             $rtrv_alm_log[$i][$j] = $ipsrec[$j];
                                                                           #  print "i=$i, j=$j"." ". $rtrv_alm_log[$i] [$j]."\t";
                                                              }
                                                              #print "\n";
                                                            $i=$i+1; 
                                               
                                             }
                              }             
               }                            
               ###########Sub Routine Prints Array at position $row_index, $col_index###################
               sub print_alm_log_pos {
              
                              my ($row_index, $col_index) = @_;
                              return $rtrv_alm_log[$row_index][$col_index];
               }    
               ####Sub routine to get the size of the Array
                sub get_size_alm_log_arr {
                              return scalar(@rtrv_alm_log)
                }                          
              
               ###########Sub Routine Call###################

###########Sub Routine Parses the table structured log file into Array @rtrv_bf_sts###################
               sub parse_bf_sts_get {
   
                              #my $fname= $_[0];
							  my $fname= 'RTRV-BF-STS.txt';
                              my @ipsrec=();
                              my $string="";
                              my $i=0;
                              my $j=0;
                             
                              open (my $FH,'<', $fname) or die "Could not open the file";
 
                              while (my $row=<$FH>) {
 
                              ##########Needed for Table Type Output Format
                              if ($row =~ /\s\s\s\d\d?\s*\S+.*/ig){
                                             $string = $string.$row."\n";
                                             }
                              }
                              close $FH;
 
 
                              my (@split_each_line_ip,$split_each_line_ip);
                              @split_each_line_ip = split (/\n/,$string);
                             
                              foreach $split_each_line_ip (@split_each_line_ip){
                                             if ($split_each_line_ip =~ m/^\s+/) {
                                                              
                                                #Split by "spaces"
                                                 @ipsrec = split (/\s+/,$split_each_line_ip);
              
                                                 for ($j=0; $j<scalar(@ipsrec);$j++) {
                                                                             #$row[$i][$j] = $keys;
                                                                             $rtrv_bf_sts[$i][$j] = $ipsrec[$j];
                                                                           #  print "i=$i, j=$j"." ". $rtrv_bf_sts[$i] [$j]."\t";
                                                              }
                                                              #print "\n";
                                                            $i=$i+1; 
                                               
                                             }
                              }             
               }                            
               ###########Sub Routine Prints Array at position $row_index, $col_index###################
               sub print_bf_sts_pos {
              
                              my ($row_index, $col_index) = @_;
                              return $rtrv_bf_sts[$row_index][$col_index];
               }    
               ####Sub routine to get the size of the Array
                sub get_size_bf_sts_arr {
                              return scalar(@rtrv_bf_sts)
                }                          
              
               ###########Sub Routine Call###################
              
               ###########Sub Routine Parses the table structured log file into Array @rtrv_c1xrtt_mobil###################
               sub parse_c1xrtt_mobil_get {
   
                              #my $fname= $_[0];
							  my $fname='RTRV-C1XRTT-MOBIL.txt';
                              my @ipsrec=();
                              my $string="";
                              my $i=0;
                              my $j=0;
                             
                              open (my $FH,'<', $fname) or die "Could not open the file";
 
                              while (my $row=<$FH>) {
 
                              ##########Needed for Table Type Output Format
                              if ($row =~ /\s\s\s\d\d?\s*\S+.*/ig){
                                             $string = $string.$row."\n";
                                             }
                              }
                              close $FH;
 
 
                              my (@split_each_line_ip,$split_each_line_ip);
                              @split_each_line_ip = split (/\n/,$string);
                             
                              foreach $split_each_line_ip (@split_each_line_ip){
                                             if ($split_each_line_ip =~ m/^\s+/) {
                                                              
                                                #Split by "spaces"
                                                 @ipsrec = split (/\s+/,$split_each_line_ip);
              
                                                 for ($j=0; $j<scalar(@ipsrec);$j++) {
                                                                             #$row[$i][$j] = $keys;
                                                                             $rtrv_c1xrtt_mobil[$i][$j] = $ipsrec[$j];
                                                                           #  print "i=$i, j=$j"." ". $rtrv_c1xrtt_mobil[$i] [$j]."\t";
                                                              }
                                                              #print "\n";
                                                            $i=$i+1; 
                                               
                                             }
                              }             
               }                            
               ###########Sub Routine Prints Array at position $row_index, $col_index###################
               sub print_c1xrtt_mobil_pos {
              
                              my ($row_index, $col_index) = @_;
                              return $rtrv_c1xrtt_mobil[$row_index][$col_index];
               }    
               ####Sub routine to get the size of the Array
                sub get_size_c1xrtt_mobil_arr {
                              return scalar(@rtrv_c1xrtt_mobil)
                }                          
              
              
               ###########Sub Routine Parses the table structured log file into Array @rtrv_c1xrtt_preg###################
               sub parse_c1xrtt_preg_get {
   
                              #my $fname= $_[0];
							  my $fname='RTRV-C1XRTT-PREG.txt';
                              my @ipsrec=();
                              my $string="";
                              my $i=0;
                              my $j=0;
                             
                              open (my $FH,'<', $fname) or die "Could not open the file";
 
                              while (my $row=<$FH>) {
 
                              ##########Needed for Table Type Output Format
                              if ($row =~ /\s\s\s\d\d?\s*\S+.*/ig){
                                             $string = $string.$row."\n";
                                             }
                              }
                              close $FH;
 
 
                              my (@split_each_line_ip,$split_each_line_ip);
                              @split_each_line_ip = split (/\n/,$string);
                             
                              foreach $split_each_line_ip (@split_each_line_ip){
                                             if ($split_each_line_ip =~ m/^\s+/) {
                                                              
                                                #Split by "spaces"
                                                 @ipsrec = split (/\s+/,$split_each_line_ip);
              
                                                 for ($j=0; $j<scalar(@ipsrec);$j++) {
                                                                             #$row[$i][$j] = $keys;
                                                                             $rtrv_c1xrtt_preg[$i][$j] = $ipsrec[$j];
                                                                           #  print "i=$i, j=$j"." ". $rtrv_c1xrtt_preg[$i] [$j]."\t";
                                                              }
                                                              #print "\n";
                                                            $i=$i+1; 
                                               
                                             }
                              }             
               }                            
               ###########Sub Routine Prints Array at position $row_index, $col_index###################
               sub print_c1xrtt_preg_pos {
              
                              my ($row_index, $col_index) = @_;
                              return $rtrv_c1xrtt_preg[$row_index][$col_index];
               }    
               ####Sub routine to get the size of the Array
                sub get_size_uc1xrtt_preg_arr {
                              return scalar(@rtrv_c1xrtt_preg)
                }                          
              
               ###########Sub Routine Call###################
              
               ###########Sub Routine Parses the table structured log file into Array @rtrv_eutra_fa###################
               sub parse_eutra_fa_get {
   
                              my $fname='RTRV-EUTRA-FA.txt';
                              my @ipsrec=();
                              my $string="";
                              my $i=0;
                              my $j=0;
                             
                              open (my $FH,'<', $fname) or die "Could not open the file";
 
                              while (my $row=<$FH>) {
 
                              ##########Needed for Table Type Output Format
                              if ($row =~ /\s\s\s\d\d?\s*\S+.*/ig){
                                             $string = $string.$row."\n";
                                             }
                              }
                              close $FH;
 
 
                              my (@split_each_line_ip,$split_each_line_ip);
                              @split_each_line_ip = split (/\n/,$string);
                             
                              foreach $split_each_line_ip (@split_each_line_ip){
                                             if ($split_each_line_ip =~ m/^\s+/) {
                                                              
                                                #Split by "spaces"
                                                 @ipsrec = split (/\s+/,$split_each_line_ip);
              
                                                 for ($j=0; $j<scalar(@ipsrec);$j++) {
                                                                             #$row[$i][$j] = $keys;
                                                                             $rtrv_eutra_fa[$i][$j] = $ipsrec[$j];
                                                                           #  print "i=$i, j=$j"." ". $rtrv_eutra_fa[$i] [$j]."\t";
                                                              }
                                                              #print "\n";
                                                            $i=$i+1; 
                                               
                                             }
                              }             
               }                            
               ###########Sub Routine Prints Array at position $row_index, $col_index###################
               sub print_eutra_fa_pos {
              
                              my ($row_index, $col_index) = @_;
                              return $rtrv_eutra_fa[$row_index][$col_index];
               }    
               ####Sub routine to get the size of the Array
                sub get_size_eutra_fa_arr {
                              return scalar(@rtrv_eutra_fa)
                }                          
    

              
               ###########Sub Routine Parses the table structured log file into Array @rtrv_pos_conf###################
               sub parse_pos_conf_get {
   
                              #my $fname= $_[0];
							  my $fname='RTRV-POS-CONF.txt';
                              my @ipsrec=();
                              my $string="";
                              my $i=0;
                              my $j=0;
                             
                              open (my $FH,'<', $fname) or die "Could not open the file";
 
                              while (my $row=<$FH>) {
 
                              ##########Needed for Table Type Output Format
                              if ($row =~ /\s\s\s\d\d?\s*\S+.*/ig){
                                             $string = $string.$row."\n";
                                             }
                              }
                              close $FH;
 
 
                              my (@split_each_line_ip,$split_each_line_ip);
                              @split_each_line_ip = split (/\n/,$string);
                             
                              foreach $split_each_line_ip (@split_each_line_ip){
                                             if ($split_each_line_ip =~ m/^\s+/) {
                                                              
                                                #Split by "spaces"
                                                 @ipsrec = split (/\s+/,$split_each_line_ip);
              
                                                 for ($j=0; $j<scalar(@ipsrec);$j++) {
                                                                             #$row[$i][$j] = $keys;
                                                                             $rtrv_pos_conf[$i][$j] = $ipsrec[$j];
                                                                           #  print "i=$i, j=$j"." ". $rtrv_pos_conf[$i] [$j]."\t";
                                                              }
                                                              #print "\n";
                                                            $i=$i+1; 
                                               
                                             }
                              }             
               }                            
               ###########Sub Routine Prints Array at position $row_index, $col_index###################
               sub print_pos_conf_pos {
              
                              my ($row_index, $col_index) = @_;
                              return $rtrv_pos_conf[$row_index][$col_index];
               }    
               ####Sub routine to get the size of the Array
                sub get_size_pos_conf_arr {
                              return scalar(@rtrv_pos_conf)
                }                          
    
           # Global Array Declaration for IP Address. This will hold the table data for RTRV-RRH-STS Command
			my @rtrv_rrh_sts = ();
              
            ##########Sub Routine Parses the table structured log file into Array @rtrv_rrh_sts###################
               sub parse_rrh_sts_get {
   
                              #my $fname= $_[0];
							  my $fname='RTRV-RRH-STS.txt';
                              my @ipsrec=();
                              my $string="";
                              my $i=0;
                              my $j=0;
                             
                              open (my $FH,'<', $fname) or die "Could not open the file";
 
                              while (my $row=<$FH>) {
 
                              ##########Needed for Table Type Output Format
                              if ($row =~ /\s\s\s\d\d?\s*\S+.*/ig){
                                             $string = $string.$row."\n";
                                             }
                              }
                              close $FH;
 
 
                              my (@split_each_line_ip,$split_each_line_ip);
                              @split_each_line_ip = split (/\n/,$string);
                             
                              foreach $split_each_line_ip (@split_each_line_ip){
                                             if ($split_each_line_ip =~ m/^\s+/) {
                                                              
                                                #Split by "spaces"
                                                 @ipsrec = split (/\s+/,$split_each_line_ip);
              
                                                 for ($j=0; $j<scalar(@ipsrec);$j++) {
                                                                             #$row[$i][$j] = $keys;
                                                                             $rtrv_rrh_sts[$i][$j] = $ipsrec[$j];
                                                                           #  print "i=$i, j=$j"." ". $rtrv_rrh_sts[$i] [$j]."\t";
                                                              }
                                                              #print "\n";
                                                            $i=$i+1; 
                                               
                                             }
                              }             
               }                            
               ###########Sub Routine Prints Array at position $row_index, $col_index###################
               sub print_rrh_sts_pos {
              
                              my ($row_index, $col_index) = @_;
                              return $rtrv_rrh_sts[$row_index][$col_index];
               }    
               ####Sub routine to get the size of the Array
                sub get_size_rrh_sts_arr {
                              return scalar(@rtrv_rrh_sts)
                }                          
              
              
               ###########Sub Routine Parses the table structured log file into Array @rtrv_sonfn_cell###################
               sub parse_sonfn_cell_get {
   
    #                          my $fname= $_[0];
							  my $fname='RTRV-SONFN-CELL.txt';
                              my @ipsrec=();
                              my $string="";
                              my $i=0;
                              my $j=0;
                             
                              open (my $FH,'<', $fname) or die "Could not open the file";
 
                              while (my $row=<$FH>) {
 
                              ##########Needed for Table Type Output Format
                              if ($row =~ /\s\s\s\d\d?\s*\S+.*/ig){
                                             $string = $string.$row."\n";
                                             }
                              }
                              close $FH;
 
 
                              my (@split_each_line_ip,$split_each_line_ip);
                              @split_each_line_ip = split (/\n/,$string);
                             
                              foreach $split_each_line_ip (@split_each_line_ip){
                                             if ($split_each_line_ip =~ m/^\s+/) {
                                                              
                                                #Split by "spaces"
                                                 @ipsrec = split (/\s+/,$split_each_line_ip);
              
                                                 for ($j=0; $j<scalar(@ipsrec);$j++) {
                                                                             #$row[$i][$j] = $keys;
                                                                             $rtrv_sonfn_cell[$i][$j] = $ipsrec[$j];
                                                                           #  print "i=$i, j=$j"." ". $rtrv_sonfn_cell[$i] [$j]."\t";
                                                              }
                                                              #print "\n";
                                                            $i=$i+1; 
                                               
                                             }
                              }             
               }                            
               ###########Sub Routine Prints Array at position $row_index, $col_index###################
               sub print_sonfn_cell_pos {
              
                              my ($row_index, $col_index) = @_;
                              return $rtrv_sonfn_cell[$row_index][$col_index];
               }    
               ####Sub routine to get the size of the Array
                sub get_size_sonfn_cell_arr {
                              return scalar(@rtrv_sonfn_cell)
                }                          
    
              
               ###########Sub Routine Parses the table structured log file into Array @rtrv_ulresconf_idle###################
               sub parse_ulresconf_idle_get {
   
                              #my $fname= $_[0];
							  my $fname='RTRV-ULRESCONF-IDLE.txt';
                              my @ipsrec=();
                              my $string="";
                              my $i=0;
                              my $j=0;
                             
                              open (my $FH,'<', $fname) or die "Could not open the file";
 
                              while (my $row=<$FH>) {
 
                              ##########Needed for Table Type Output Format
                              if ($row =~ /\s\s\s\d\d?\s*\S+.*/ig){
                                             $string = $string.$row."\n";
                                             }
                              }
                              close $FH;
 
 
                              my (@split_each_line_ip,$split_each_line_ip);
                              @split_each_line_ip = split (/\n/,$string);
                             
                              foreach $split_each_line_ip (@split_each_line_ip){
                                             if ($split_each_line_ip =~ m/^\s+/) {
                                                              
                                                #Split by "spaces"
                                                 @ipsrec = split (/\s+/,$split_each_line_ip);
              
                                                 for ($j=0; $j<scalar(@ipsrec);$j++) {
                                                                             #$row[$i][$j] = $keys;
                                                                             $rtrv_ulresconf_idle[$i][$j] = $ipsrec[$j];
                                                                           #  print "i=$i, j=$j"." ". $rtrv_ulresconf_idle[$i] [$j]."\t";
                                                              }
                                                              #print "\n";
                                                            $i=$i+1; 
                                               
                                             }
                              }             
               }                            
               ###########Sub Routine Prints Array at position $row_index, $col_index###################
               sub print_ulresconf_idle_pos {
              
                              my ($row_index, $col_index) = @_;
                              return $rtrv_ulresconf_idle[$row_index][$col_index];
               }    
               ####Sub routine to get the size of the Array
                sub get_size_ulresconf_idle_arr {
                              return scalar(@rtrv_ulresconf_idle)
                }                          
              
    










			   
2;