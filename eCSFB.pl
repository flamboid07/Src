#!/usr/bin/perl
use POSIX;
use Net::SSH2;
use Control::CLI;

#################Connect to 3G to get the paramters for the command#################

                   
#my $cascasde_id= $ARGV[0];
#my $pkg_no = $ARGV[1];

my $Ret_Ecsfb_LogFile='G:\\RanCommTool\\eCFSB\\3G\\CMD-LOG\\';

#################Retrieve 3G BSM/BTS Info from National RF DB using Cascade ID######





#################Retrieve the 3G BSM/BTS Information from National RF Database######


my $bsm_ip_address="105.66.51.86";
#my $bsm_ip_address="105.66.51.114";

my $bsm_user="cdmaone";
#my $bsm_user="root";

my $bsm_pass="cdm\@0ne";
#my $bsm_pass="root123";

my $ssh_3G = new Control::CLI(Use => 'SSH',
                        Prompt => ']',
			Errmode=> 'return',
                        Timeout=> '180');
	
my $connect_3G = $ssh_3G->connect(Host => $bsm_ip_address,
          Username => $bsm_user,
          Password => $bsm_pass,
        PrivateKey => '.ssh/id_dsa');

if ($connect_3G) {		#start if connected

print "connected";
#exit;

$ssh_3G->waitfor("]");

###############RETRIEVE and STORE output of SUBSYSTEM Command###############
my $rtrv_bts_subsys_lname = 'G:\\RanCommTool\\eCFSB\\3G\\CMD-LOG\\RTRV-BTS_SUBSYSTEM.txt';
open (FILE_3G_BSM_SUBSYS_CONF, ">$rtrv_bts_subsys_lname");
$ssh_3G->print("cmdx 1 RTRV-BTS_SUBSYSTEM-CONF:BTS=11~11,EXPORT_CSV=NO;");
$ssh_3G->waitfor('SUBSYSTEM CONFIGURATION');
my $bsm_subsys_conf = $ssh_3G->waitfor('COMPLETED');
print ("$bsm_subsys_conf\n\n");
print (FILE_3G_BSM_SUBSYS_CONF "$bsm_subsys_conf\n");
close(FILE_3G_BSM_SUBSYS_CONF);

###############RETRIEVE and STORE output of BSC SID-NID Command###############
my $rtrv_bsc_sidnid_lname = 'G:\\RanCommTool\\eCFSB\\3G\\CMD-LOG\\RTRV-BSC_SID_NID.txt';
open (FILE_3G_BSC_SIDNID, ">$rtrv_bsc_sidnid_lname");
$ssh_3G->print("cmdx 1 RTRV-BSC_SID_NID_MAP_INDEX-DATA:NETWORK_INDEX=0~0;");
$ssh_3G->waitfor(']');
my $bsm_sidnid = $ssh_3G->waitfor('COMPLETED');
print ("$bsm_sidnid\n\n");
print (FILE_3G_BSC_SIDNID "$bsm_sidnid\n");
close(FILE_3G_BSC_SIDNID);

###############RETRIEVE and STORE output of BTS PARA Command###############
my $rtrv_bts_para_lname = 'G:\\RanCommTool\\eCFSB\\3G\\CMD-LOG\\RTRV-BTS-PARA.txt';
open (FILE_3G_BTS_PARA, ">$rtrv_bts_para_lname");
$ssh_3G->print("cmdx 1 RTRV-BTS_PARA:BTS=11~11;");
$ssh_3G->waitfor(']');
my $bts_para = $ssh_3G->waitfor('COMPLETED');
print ("$bts_para\n\n");
print (FILE_3G_BTS_PARA "$bts_para\n");
close (FILE_3G_BSM_PARA);

} else {
	print "not connected";
}
$ssh_3G->disconnect;

######################Process parameters from 3G##########################################################################
#####################Retrieve parameters from c1xrtt_ecsfb################################################################
#$cascasde_id, $eNodeID from params, $cell_num from the comparison with CIQ, $carrier_index = 2 for 900, else 0. $num_pn=2
 
# SET TO LOCATION OF LOG FILE TO PARSE
#my $RTRV_SUBSYSTEM_CMD_LOG = "templog.txt";
#my $path = "C:\\users\\Arvind\\Desktop\\Delivery\\solution\\";

############################################################################
# VARIABLES DEFINITION
############################################################################
#
# $string
# $result
# $ipdata
#
# TWO DIMENTIONAL ARRAYS
# ROW INDEX 0 = HEADERS
# @bcp_data;
# @cep_data;
# @rrh_data;
# @fa_data;
# @sector_data;
# @subnet_data;
#
############################################################################

my $string = "";
my $result = "";
my $ipdata = "";
my @bcp_data;
my @cep_data;
my @rrh_data;
my @fa_data;
my @sector_data;
my @subnet_data;
my @temp_array;

#########Populate the data for the RTRV-BTS_SUBSYSTEM COMMAND###############
parse_rtrv_bts_subsystem();
#########Populate the data for the RTRV-BTS_SUBSYSTEM COMMAND###############

#########Populate the data for the RTRV-BTS_SUBSYSTEM COMMAND###############


############################################################################
#####################Connect to 4G to Activate eNodeB with 3G parameters				
############################################################################

my $Lsmr_IP=$ARGV[2];
my $Cdu_IP=$ARGV[3];
my $eNodeID=$ARGV[4];
my $eNodeName=$ARGV[5];
my $eNodeFmt = "\[ $eNodeName \]:";

#print "eNodeID=".$eNodeID;

my $searchString = "$eNodeID ";

my $user="root";
my $pass="root123";

unless (-d $RetLogFile) {
	`mkdir $RetLogFile`;
}

my @mme_conf, @sys_conf, @vlan_conf, @ip_addr, @ip_route, @ntp_conf, @cell_idle, @prach_conf, @cell_info, @cell_acs, @enbplmn_info, @cellplmn_info, @gps_invt, @gps_sts, @rrh_invt, @eaiu_invt, @eaiu_sts, @s1_sts, @x2_sts, @bf_sts, @bf_conf, @pos_conf, @cell_sts, @rrh_conf, @rrh_conf0, @ret_inf, @alm_list, @alm_log, @punctmode_idle, @nbr_eutran, @c1xrtt_preg, @c1xrtt_mobil, @sonfn_cell, @cell_cac, @ca_coloc, @cacell_info, @casched_inf, @caband_info, @ald_invt0, @ald_invt4, @ald_invt8, @cell_uecnt;

my $ssh_lsm = new Control::CLI(Use => 'SSH',
                        Prompt => ']',
			Errmode=> 'return',
                        Timeout=> '240',
						Dump_log => "ts.dump.log");

my $Lsmr_Connect = $ssh_lsm->connect(Host => $Lsmr_IP,
          Username => $user,
          Password => $pass,
        PrivateKey => '.ssh/id_dsa');

if ($Lsmr_Connect) {		#start if connected

$ssh_lsm->waitfor("]");
$ssh_lsm->print("cd .ssh/");
$ssh_lsm->waitfor("]");
$ssh_lsm->print("rm -f known_hosts");
$ssh_lsm->waitfor("]");
$ssh_lsm->print("cd ..");

######################################3

$ssh_lsm->print("source /home/lsm/.profile");
$ssh_lsm->waitfor(']');
print ("Connected to LSMR\n");

sleep 1;

$ssh_lsm->print("INFO.sh;");
$ssh_lsm->waitfor(';');
my $info = $ssh_lsm->waitfor(']');
$info =~ s/\[.*//g;
print ("$info\n");

############LSMR TEST##########################
#$ssh_lsm->print("cmd eNB66 RTRV-ALM-LIST;");
#$ssh_lsm->waitfor(";");
#my $Log = $ssh_lsm->waitfor(';');
#print $Log;

#my $fname = $RetLogFile.'RTRV-ALM-LIST-LSMR.txt';
#   create_log_file($fname, $Log);
#exit;

###############################################

#my $CDUIP="172.33.24.56";
#my $CDUIP="66.1.1.2";
my $CDUuser="lteuser";
my $CDUpass="samsunglte";

#print "CDUIP=".$Cdu_IP;
print ("\n\n Connecting to DU \n\n");
					     
#$ssh_lsm->cmd("ssh lteuser\@$CDUIP");
#$ssh_lsm->cmd("cmd_sys eNB_66 RTRV-ALM-LIST");
$ssh_lsm->print("ssh lteuser\@$Cdu_IP");

sleep 3;


$ssh_lsm->print('yes');
sleep 3;


my $Log = $ssh_lsm->waitfor('password:');
print "$Log\n";

$ssh_lsm->print("samsunglte");


$Log_wait=$ssh_lsm->waitfor('\$');
print "$Log_wait\n";

###########################################
#Parse above output to establish the connection
############################################
if ($ssh_lsm) {
print ("Connected to DU\n");
} else {
print ("Not Connected to DU\n");
}

###############################################
# Login as Super User
##############################################
$ssh_lsm->print("su -");
#sleep 1;

$ssh_lsm->waitfor('Password:');
$ssh_lsm->print("S\@msung1te");


#$Log_wait_SU=$ssh_lsm->waitfor('\~');
print "$Log_wait_SU\n";

$Log_wait_SU="testing";

print  ("logged in as super user\n");

###############################################
# Get into the CLI Mode
##############################################

#$ssh_lsm->print("cd /pkg/6.0.0/ENB/r-01/bin");
$ssh_lsm->print("cd /pkg/$pkg_no/ENB/r-01/bin");

$ssh_lsm->print("cli.opw");
$ssh_lsm->waitfor('USERNAME :'); 
$ssh_lsm->print("ROOT");

$ssh_lsm->waitfor('PASSWORD :');  
$ssh_lsm->print("ROOT");
#print  ("logged in as ROOT\n");

#open (FILE_4G_ECFSB_OP, ">$fname1"); #Opne the file handle for the consolidated output file



#close (FILE_4G_ECFSB_OP); #Close the file handle for the consolidated output file
#print_ecfsb_html("eNB66","66");

}
else
{ 
print ("Not Connected"); 
}

####################################################################################################################################################################

sub parse_rtrv_bts_subsystem {

		# script vars
		my $ipdata_found = 0;
		my $counter = 0;

		#[BCP DATA]
		my $bcp_data_found = 0;
		my $bcp_counter = 0;
			
		#[CEP DATA]	
		my $cep_data_found = 0;
		my $cep_counter = 0;
			
		#[RRH DATA]	
		my $rrh_data_found = 0;
		my $rrh_counter = 0;
			
		#[FA DATA]	
		my $fa_data_found = 0;
		my $fa_counter = 0;
		
		#[SECTOR DATA]
		my $sector_data_found = 0;
		my $sector_counter = 0;
		
		#[SUBNET_DATA]
		my $subnet_data_found = 0;
		my $subnet_counter = 0;
		

		# open log and read data
		open(FILE, "<", $rtrv_bts_subsys_lname);
		my @file_data = <FILE>;
		close(FILE);

		# read each line until EOF
		foreach my $line (@file_data){

			# BCP
			if($bcp_data_found == 1 && $line !~ m/^\s+$/ && $line !~ m/RESULT =/){
				@bcp_data = CreateArray($line, \@bcp_data, $bcp_counter);
				$bcp_counter++;
				print "\n Inside BCP \n";
			} else {
				$bcp_data_found = 0;
			}	
			
			# CEP
			if($cep_data_found == 1 && $line !~ m/^\s+$/ && $line !~ m/RESULT =/){
				@cep_data = CreateArray($line, \@cep_data, $cep_counter);
				$cep_counter++;
				print "\n Inside CEP \n";
			} else {
				$cep_data_found = 0;
			}
			
			# RRH
			if($rrh_data_found == 1 && $line !~ m/^\s+$/ && $line !~ m/RESULT =/){
				@rrh_data = CreateArray($line, \@rrh_data, $rrh_counter);
				$rrh_counter++;
				print "\n Inside RRH \n";
			} else {
				$rrh_data_found = 0;
			}
			
			# FA
			if($fa_data_found == 1 && $line !~ m/^\s+$/ && $line !~ m/RESULT =/){
				@fa_data = CreateArray($line, \@fa_data, $fa_counter);
				$fa_counter++;
				print "\n Inside FA \n";
			} else {
				$fa_data_found = 0;
			}
			
			# SECTOR
			if($sector_data_found == 1 && $line !~ m/^\s+$/ && $line !~ m/RESULT =/){
				@sector_data = CreateArray($line, \@sector_data, $sector_counter);
				$sector_counter++;
				print "\n Inside SECTOR \n";
			} else {
				$sector_data_found = 0;
			}

			# subnet
			if($subnet_data_found == 1 && $line !~ m/^\s+$/ && $line !~ m/RESULT =/){
				@subnet_data = CreateArray($line, \@subnet_data, $subnet_counter);
				$subnet_counter++;
				print "\n Inside subnet \n";
			} else {
				$subnet_data_found = 0;
			}
			
			#################

			if($line =~ m/: (.*)$/){
				$string .= $1.",";
				
			} elsif($line =~ m/\[OPQ IP DATA\]/){
				$ipdata_found = 1;
				
			} elsif($line =~ m/(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})$/ && $ipdata_found == 1){
				$ipdata = $1;
				$ipdata_found = 0;
			
			} elsif($line =~ m/\[BCP DATA\]/){
				$bcp_data_found = 1;
				
			} elsif($line =~ m/\[CEP DATA\]/){
				$cep_data_found = 1;
			
			} elsif($line =~ m/\[RRH DATA\]/){
				$rrh_data_found = 1;
				
			} elsif($line =~ m/\[FA DATA\]/){
				$fa_data_found = 1;
				
			} elsif($line =~ m/\[SECTOR DATA\]/){
				$sector_data_found = 1;
				
			} elsif($line =~ m/\[SUBNET DATA\]/){
				$subnet_data_found = 1;
				
			} elsif($line =~ m/RESULT = (.*)$/){
				$result = $1;
		}
	}
	$string =~ s/,$//;
}
###############################################################################################################################################################

sub parse_bsc_sid_nid {
	
	open (FHNDL_SIDNID, "<",$rtrv_bsc_sidnid_lname);
	my @filearray = <FHNDL_SIDNID>;
	my $bsc_sid_nid_str;
	close (FHNDL_SIDNID);
	
	foreach my $line (@filearray) {
	
		if ( $line =~ m/USED_FLAG/) {
			#print "line=$line";
				if($line =~ m/(\s*\w+\s+):(\s\w+\s*)(\s*\w+\s+):(\s\w+\s*)(\s*\w+\s+):(\s\w+\s*)/){
					
					my $used_flag = trim($2);;								
					my $sid = trim($4);
					my $nid = trim($6);
					$bsc_sid_nid_str=$used_flag.",".$sid.",".$nid;
				}
		
		}
	}
	return $bsc_sid_nid_str;
}

###############################################################################################################################################################

sub parse_bts_para {
	
	open (FHNDL_BTSPARA, "<",$rtrv_bts_para_lname);
	my @filearray = <FHNDL_BTSPARA>;
	close (FHNDL_BTSPARA);
	
	my $rtrv_bts_para_str;
	my $field1;
	my $field2;
	my $field3;

	
	foreach my $line (@filearray) {
	
		if ( ($line =~ m/PRAT/) || ($line =~ m/MAX_SLOT_CYCLE_INDEX/) || ($line =~ m/ENCRYPT_MODE/)) {
			#print "line=$line";
				if($line =~ m/(\s*\w+\s+):(\s\w+\s*)(\s*\w+\s+):(\s\w+\s*)(\s*\w+\s+):(\s\w+\s*)/){
					
					$field1 = trim($2);							
					$field2 = trim($4);
					$field3 = trim($6);
					
					if ( $rtrv_bts_para_str eq "") {
					
						$rtrv_bts_para_str=$field1.",".$field2.",".$field3;
					} else {
					    $rtrv_bts_para_str=$rtrv_bts_para_str.",".$field1.",".$field2.",".$field3;
					}
				}
			}
		}
	return $rtrv_bts_para_str;
}

###############################################################################################################################################################
sub CreateArray {
	my ($l, $arr, $c) = @_;
	my @a = @{$arr};
	
	$l =~ s/^\s+//;
	$l =~ s/\s+$//;
	$l =~ s/\s+/;/g;
	
	@temp_array = split(";", $l);
	
	for(my $i = 0; $i < scalar(@temp_array); $i++){
		$a[$c][$i] = $temp_array[$i];
	}
	
	return @a;
}

###############################################################################################################################################################

sub chg_c1xrtt_ecsfb {

    my $num_pn = 2;
	my $carrier_index = 0;
	
	for ( my $i=0; $i<20; $i=$i+1) {
        for ( my $j=0; $j < 20; $j=$j+1) {
			if (ret_vendor_ciq_info2($cid, $enode_id, $j,21) == $i)		{
				#Connect to 4G, Cell site and run below command 
				print "cell id ${i} found at ${j} position in the CIQ";
				
				if (( $i == 0 ) || ($i==1) || ($i == 9) || ($i == 10) || ($i ==18) || ($i == 19) || ( $i==3 ) || ($i == 6) || ($i == 12) || ($i == 4) || ($i==7) || ($i == 13) || ($i == 5) || ($i == 8) || ($i == 14)) {
					$carrier_index=0;
				} else if (($i==2) || ($i==11) || ($i==20)) {
					$carrier_index=2;
				} else {
					print "carrier_index=??";
				}
				$ssh_lsm->print("CHG-C1XRTT-ECSFB:CELL_NUM=$i,CARRIER_INDEX=$carrier_index,NUM1_X_PN=$num_pn");
				
				$ssh_lsm->waitfor($searchString);
				my $fil = $ssh_lsm->waitfor(";");
				
				sleep 3;
   
				$fil="$enode_id $fil";
				print ("$enode_id $fil\n");
			} else {
				print "cell id ${i} not found in the CIQ";
			}
		}
	}
}
	
###############################################################################################################################################################
sub chg_c1xrtt_freq {
	
	my $arfcn = $_[0];
	my $band_class;
	
	for ( $i=0; $i<20; $i=$i+1) {

		for ( my $j=0; $j < 20; $j=$j+1) {
			if (ret_vendor_ciq_info2($cid, $enode_id, $j,21) == $i)		{
				#Connect to 4G, Cell site and run below command 
				print "cell id ${i} found at ${j} position in the CIQ";
				
				if (( $i == 0 ) || ($i==1) || ($i == 9) || ($i == 10) || ($i ==18) || ($i == 19) || ( $i==3 ) || ($i == 6) || ($i == 12) || ($i == 4) || ($i==7) || ($i == 13) || ($i == 5) || ($i == 8) || ($i == 14)) {
					$carrier_index=0;
					$band_class="bc1";
				} else if (($i==2) || ($i==11) || ($i==20)) {
					$carrier_index=2;
					$band_class="bc10";
				} else {
					print "carrier_index=??";
				}
				
				$ssh_lsm->print("CHG-C1XRTT-FREQ:CELL_NUM=$i,CARRIER_INDEX=$carrier_index,STATUS=EQUIP,BAND_CLASS=$band_class,ARFCN=$arfcn,PREFERENCE0=preferred_prefer;");
				
				##########Check this logic##################
				#ssh_lsm->waitfor(“ENTER LOGIN PASSWORD ->");
				ssh_lsm->waitfor("ENTER LOGIN PASSWORD");
				$ssh_lsm->print("ROOT");
				
				$ssh_lsm->waitfor($searchString);
				my $fil = $ssh_lsm->waitfor(";");
				
				sleep 3;
   
				$fil="$enode_id $fil";
				print ("$enode_id $fil\n");
			    } else {
				print "cell id ${i} not found in the CIQ";
			}
		}
	}
}

###############################################################################################################################################################


sub chg_c1xrtt_mobil {

	my ($sid,$nid, $regzone) = @_;
	
	for ( $i=0; $i<20; $i=$i+1) {

		for ( my $j=0; $j < 20; $j=$j+1) {
			if (ret_vendor_ciq_info2($cid, $enode_id, $j,21) == $i)		{
				#Connect to 4G, Cell site and run below command 
				print "cell id ${i} found at ${j} position in the CIQ";
				
				$ssh_lsm->print("CHG-C1XRTT-MOBIL:CELL_NUM=$i,S_ID=$sid,N_ID=$nid,REG_ZONE=$regzone;");
				
				$ssh_lsm->waitfor("WILL YOU EXECUTE THIS COMMAND REALLY? (Y/N) :");
				$ssh_lsm->print("Y");
				
				$ssh_lsm->waitfor($searchString);
				my $fil = $ssh_lsm->waitfor(";");
				
				sleep 3;
   
				$fil="$enode_id $fil";
				print ("$enode_id $fil\n");
				
				my $fname = $Ret_Ecsfb_LogFile.'CHG-C1XRTT-FREQ.txt';
				create_log_file($fname, $fil);
   
   				#print (FILE_ECSFB_OP "$fil\n");
				
			} else {
				print "cell id ${i} not found in the CIQ";
			}
		} 
	}
}					

#########################################################################################################################################################################
sub chg_c1xrtt_pregsector {

	my ($market_id,$switch_num, $target_cell_id) = @_;
	my $sector_num;
	
	for ( my $i=0; $i<20; $i=$i+1) {

		for ( my $j=0; $j < 20; $j=$j+1) {
			if (ret_vendor_ciq_info2($cid, $enode_id, $j,21) == $i)		{
				#Connect to 4G, Cell site and run below command 
				print "cell id ${i} found at ${j} position in the CIQ";
				
				#0,1,2,3,6,12 - Alpha
				#9,10,11,4,7,13 - Beta
				#18,19,20,5,8,14 = Gamma
				
				if (( $i == 0 ) || ($i == 1) || ($i == 2) || ( $i == 3) || ($i == 6) || ($i == 12)) {
					$sector_num=0;
				} else if (( $i == 9 ) || ($i == 10) || ($i == 11) || ( $i == 4) || ($i == 7) || ($i == 13)) {
					$sector_num=1;
				} else if (( $i == 18 ) || ($i == 19) || ($i == 20) || ( $i == 5) || ($i == 8) || ($i == 14)) {
					$sector_num=2;
				} else {
					print "Unknown Sector";
				}
				
				$ssh_lsm->print("CHG-C1XRTT-PREGSECTOR:CELL_NUM=$i,MARKET_ID=$market_id,SWITCH_NUM=$switch_num,TARGET_CELL_ID=$target_cell_id,SECTOR_NUM=$sector_num;");
				
				$ssh_lsm->waitfor($searchString);
				my $fil = $ssh_lsm->waitfor(";");
				
				sleep 3;
   
				$fil="$enode_id $fil";
				print ("$enode_id $fil\n");
				} else {
				print "cell id ${i} not found in the CIQ";
			}
		} 
	}
}	
###############################################################################################################################################################

sub chg_c1xrtt_preg {

	my ($sid,$nid, $reg_zone) = @_;
		
	for ( my $i=0; $i<20; $i=$i+1) {

		for ( my $j=0; $j < 20; $j=$j+1) {
			if (ret_vendor_ciq_info2($cid, $enode_id, $j,21) == $i)		{
				#Connect to 4G, Cell site and run below command 
				print "cell id ${i} found at ${j} position in the CIQ";
				
				$ssh_lsm->print("CHG-C1XRTT-PREG:CELL_NUM=$i,CSFB_PRE_REG_USAGE=use,SID=$sid,NID=$nid,REGISTRATION_ZONE=$reg_zone;");
				
				$ssh_lsm->waitfor($searchString);
				my $fil = $ssh_lsm->waitfor(";");
				
				sleep 3;
   
				$fil="$enode_id $fil";
				print ("$enode_id $fil\n");
				} else {
				print "cell id ${i} not found in the CIQ";
			}
		} 
	}
}	

################################################################################################################################################################
#	CHG-LTIME-INF:DAYLIGHT_SAVE_TIME_INCLUDED=True,DAYLIGHT_SAVE_TIME=1,LTM_OFF_INCLUDED=True,LOCAL_TIME_OFF="-24";
#	Rennee Gonzalez to send the mapping.
################################################################################################################################################################

sub crte_nbr_c1xrtt {
	
	my ($market_id,$switch_num, $target_cell_id,  $arfcn, $pn_offset) = @_;
	
	my $relation_index;
	my $sector_num;
	my $band_class;
	
	for ( $i=0; $i<20; $i=$i+1) {

		for ( my $j=0; $j < 20; $j=$j+1) {
			if (ret_vendor_ciq_info2($cid, $enode_id, $j,21) == $i)		{
				#Connect to 4G, Cell site and run below command 
				print "cell id ${i} found at ${j} position in the CIQ";
			
				if (( $i == 0 ) || ($i==1) || ($i == 9) || ($i == 10) || ($i == 18) || ($i == 19) || ( $i==3 ) || ($i == 6) || ($i == 12) || ($i == 4) || ($i==7) || ($i == 13) || ($i == 5) || ($i == 8) || ($i == 14)) {
					$band_class="bc1";
				} else if (($i==2) || ($i==11) || ($i==20)) {
					$band_class="bc10";
				} else {
					print "Unknown Band Class=??";
				}
				#0,1,2,3,6,12 - Alpha
				#9,10,11,4,7,13 - Beta
				#18,19,20,5,8,14 = Gamma
				
				'if (( $i == 0 ) || ($i == 1) || ($i == 2) || ( $i == 3) || ($i == 6) || ($i == 12)) {
					$sector_num=0;
				} else if (( $i == 9 ) || ($i == 10) || ($i == 11) || ( $i == 4) || ($i == 7) || ($i == 13)) {
					$sector_num=1;
				} else if (( $i == 18 ) || ($i == 19) || ($i == 20) || ( $i == 5) || ($i == 8) || ($i == 14)) {
					$sector_num=2;
				} else {
					print "Unknown Sector";
				}'
			
			    for ($relation_index=0; $relation_index<3; $relation_index=$relation_index+1) {
					$sector_num=$relation_index+1;
					$ssh_lsm->print("CRTE-NBR-C1XRTT:CELL_NUM=$i,RELATION_IDX=$relation_index,STATUS=EQUIP,MARKET_ID=$market_id,SWITCH_NUM=$switch_num,TARGET_CELL_ID=$target_cell_id,SECTOR_NUM=$sector_num,BAND_CLASS=$band_class,ARFCN=$arfcn,PN_OFFSET=$pn_offset,IS_REMOVE_ALLOWED=True,IS_HOALLOWED=True;");
				}
				$ssh_lsm->waitfor($searchString);
				my $fil = $ssh_lsm->waitfor(";");
				
				sleep 3;
   
				$fil="$enode_id $fil";
				print ("$enode_id $fil\n");
				
			} else {
				print "cell id ${i} not found in the CIQ";
			}
		}
	}
}


sub ret_vendor_ciq_info2 {	

my ($Cascade_Id, $Target_eNB_ID, $row,$col) = @_;


my $fname = 'G:\\RanCommTool\\CIQ\\\\consolidated-XLSX.csv';
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