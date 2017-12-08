#!/usr/bin/perl
use POSIX;
use Data::Dumper;
require "./subroutines.pl";  

#Declare Any constants
use constant MAXCOL => 58;

# Global Array Declaration for IP Address. This will hold the table data for RTRV-MME-CONF Command
my @rtrv_mme_conf = ();
# Global Array Declaration for IP Address. This will hold the table data for RTRV-IP-ROUTE Command
my @rtrv_ip_route = ();
# Global Array Declaration for IP Address. This will hold the table data for RTRV-IP-ADDR Command
my @rtrv_ip_addr = ();
# Global Array Declaration for IP Address. This will hold the table data for RTRV-NTP-CONF Command
my @rtrv_ntp_conf = ();
# Global Array Declaration for IP Address. This will hold the table data for RTRV-PRACH-CONF Command
my @rtrv_prach_conf = ();
# Global Array Declaration for IP Address. This will hold the table data for RTRV-CELL-ACS Command
my @rtrv_cell_acs = ();
# Global Array Declaration for IP Address. This will hold the table data for RTRV-CELL-IDLE Command
my @rtrv_cell_idle = ();
# Global Array Declaration for IP Address. This will hold the table data for RTRV-CELL-INFO Command
my @rtrv_cell_info = ();
# Global Array Declaration for IP Address. This will hold the table data for RTRV-CELLPLMN-INFO Command
my @rtrv_cellplmn_info = ();
# Global Array Declaration for IP Address. This will hold the table data for RTRV-IP-ADDR Command
my @rtrv_enbplmn_info = ();


# Global Array Declaration for IP Address. This will hold the table data for RTRV-CABAND-INFO Command
my @rtrv_caband_info = ();
#################################


   
# Global Array Declaration for IP Address. This will hold the table data for RTRV-ALM-LIST Command
my @rtrv_alm_list = ();
# Global Array Declaration for IP Address. This will hold the table data for RTRV-ALM-LOG Command
my @rtrv_alm_log = ();
# Global Array Declaration for IP Address. This will hold the table data for RTRV-BF-STS Command
my @rtrv_bf_sts = ();
# Global Array Declaration for IP Address. This will hold the table data for RTRV-C1XRTT-MOBIL Command
my @rtrv_c1xrtt_mobil = ();
# Global Array Declaration for IP Address. This will hold the table data for RTRV-C1XRTT-PREG Command
my @rtrv_c1xrtt_preg = ();
# Global Array Declaration for IP Address. This will hold the table data for RTRV-EUTRA-FA Command
my @rtrv_eutra_fa = ();
# Global Array Declaration for IP Address. This will hold the table data for RTRV-POS-CONF Command
my @rtrv_pos_conf = ();
# Global Array Declaration for IP Address. This will hold the table data for RTRV-RRH-STS Command
my @rtrv_rrh_sts = ();
#Global Array Declaration for IP Address. This will hold the table data for RTRV-SONFN-CELL Command
my @rtrv_sonfn_cell = ();
# Global Array Declaration for IP Address. This will hold the table data for RTRV-ULRESCONF-IDLE Command
my @rtrv_ulresconf_idle = ();
# Global Array Declaration for IP Address. This will hold the table data for RTRV-ULRESCONF-IDLE Command
my @rtrv_cell_cac = ();           

my %HashCsv;




my ($version_cq,$bucket,$LSMOAM,$LSM, $IP, $user, $pass, $eNBName,$cascade,$mmbsoamip,$mmbssbip,$alphapci,$betapci,$gammapci,$alpharsi,$betarsi,$gammarsi,$tac,$cabinet,$alphaid,$betaid,$gammaid,$alphatilt,$betatilt,$gammatilt,$earfcn,$startear,$enbid,$ltm,$zero_cq,$pkg);
my ($secondcar,$divciq,$convert_long,$convert_lat,$tddsecondcar,$tdd3rdcar,$thirdcar);
my($now);



# $cascade="LA04UB141";
# $eNBName="614402";


$now = strftime("%m%d%Y_%H_%M_%S", localtime);
# $path="C:\\Users\\Arvind\\Desktop\\GUI\\${cascade}\\${eNBName}";
# $fname="C:\\Users\\Arvind\\Desktop\\Delivery\\Version1\\RTRV-IP-ADDR.txt";

#$fname="G:\\RanCommTool\\AUDIT\\CMD-FILE-LOG\\CDU30\\RTRV-IP-ADDR.txt";

sub print_html{

my $cascade=$_[0];
my $eNBName=$_[1];

my $path="G:\\RanCommTool\\Audit\\Report\\${cascade}\\${eNBName}";
unless ( -d "$path") {

`mkdir $path`;		

print "$path";
#exit;
}

#open (HTMLFILE, ">C:\\3G_4G_TOOL_Scripts\\2.5\\Audit_2.5\\REPORT\\$cascade\\$eNBName\_AUDIT_$now\.html");
open  (HTMLFILE, ">${path}\\_AUDIT_$now\.html");
print (HTMLFILE "<table width=100% cellspacing=0 cellpadding=5 border=0>\n");
print (HTMLFILE "<tr><td align=center><font size=+3>$cascade $eNBName AUDIT REPORT $now </font></td></tr>\n");
print (HTMLFILE "</table>\n");

print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
# print (HTMLFILE "<tr><td colspan=11 bgcolor=#EEEEEE><b>$cascade</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>CASCADE ID</th><th align=center>eNB ID</th><th align=center>eNB NAME</th><th align=center>LSM</th><th align=center>SW</th><th align=center>BUCKET</th><th align=center>DIVERSITY</th><th align=center>ANTENNA</th><th align=center>ADID</th><th align=center>GP VER</th><th align=center>CIQ VER</th></tr>\n");





 print (HTMLFILE "</td>\n");
 print (HTMLFILE "</tr>\n");


 
 print (HTMLFILE "</table>\n");
##############RTRV-MME-CONF


#if ($mme_assignment eq "San_Jose_Tacoma"){
print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=5 align=center bgcolor=#EEEEEE><b>MME-INDEX</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>MME_INDEX</th><th align=center>STATUS</th><th align=center>ACTIVE-STATE</th><th align=center>MME_IPV4</th><th align=center>ADMINISTRATIVE_STATE</th></tr>\n");

parse_mmen_conf_get ();

for ($row=0; $row<get_size_mme_conf_arr();$row = $row + 1) {  
        #print_mmen_conf_pos
	if (print_mmen_conf_pos($row,1) == 0){
		if ((print_mmen_conf_pos($row,2) eq "EQUIP") && (print_mmen_conf_pos($row,3) eq "Active") && (print_mmen_conf_pos($row,5) eq "10.156.11.188") && (print_mmen_conf_pos($row,7) eq "unlocked")) {
    
			 print (HTMLFILE "<td align=center>".print_mmen_conf_pos(0,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_mmen_conf_pos(0,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_mmen_conf_pos(0,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_mmen_conf_pos(0,5)."</td>\n");     
			 print (HTMLFILE "<td align=center>".print_mmen_conf_pos(0,7)."</td>\n");
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_mmen_conf_pos(0,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_mmen_conf_pos(0,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_mmen_conf_pos(0,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_mmen_conf_pos(0,5)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_mmen_conf_pos(0,7)."</td>\n");     
		 
		 }
    }    
	
	if (print_mmen_conf_pos($row,1) == 1) {
	   if ((print_mmen_conf_pos($row,2) eq "EQUIP") && (print_mmen_conf_pos($row,3) eq "Active") && (print_mmen_conf_pos($row,5) eq "10.156.3.188") && (print_mmen_conf_pos($row,7) eq "unlocked")) {
		
		 print (HTMLFILE "<td align=center>".print_mmen_conf_pos(1,1)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_mmen_conf_pos(1,2)."</td>\n");  
		 print (HTMLFILE "<td align=center>".print_mmen_conf_pos(1,3)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_mmen_conf_pos(1,5)."</td>\n");     
		 print (HTMLFILE "<td align=center>".print_mmen_conf_pos(1,7)."</td>\n");
		 }
	 else {
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_mmen_conf_pos(1,1)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_mmen_conf_pos(1,2)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_mmen_conf_pos(1,3)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_mmen_conf_pos(1,5)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_mmen_conf_pos(1,7)."</td>\n");     
		  }    
	}

 print (HTMLFILE "</td>\n");
 print (HTMLFILE "</tr>\n");
}

 
 print (HTMLFILE "</table>\n");
# } 

# ##############RTRV-SON-ANR
# print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
# print (HTMLFILE "<tr><td colspan=14 bgcolor=#EEEEEE><b>SON-ANR</b></td></tr>\n");
# print (HTMLFILE "<tr><th align=center>MAX_NRTSIZE</th><th align=center>LSM_USAGE_FLAG</th><th align=center>RANK_PERIOD</th><th align=center>FILTERING_COEFF</th><th align=center>NR_DEL_FLAG</th><th align=center>TH_TIME_NR_DEL</th><th align=center>TH_NUM_MR_NR_DEL</th><th align=center>WRONG_NR_DEL_FLAG</th><th align=center>TH_HO_ATT_NR_DEL</th><th align=center>TH_HO_SUCC_NR_DEL</th><th align=center>IRAT_RANK_PERIOD</th><th align=center>IRAT_FILTERING_COEFF</th><th align=center>MAX_X2_NRTSIZE</th><th align=center>DEFAULT_VALUE_X2</th></tr>\n");			      

# parse_field_value();

# for ($row=0; $row<get_size_cell_idle_arr();$row = $row + 1) {  
        # #print_mmen_conf_pos
	# if (print_mmen_conf_pos($row,1) == 0){
		# if ((print_mmen_conf_pos($row,2) eq "EQUIP") && (print_mmen_conf_pos($row,3) eq "Active") && (print_mmen_conf_pos($row,5) eq "10.156.11.188") && (print_mmen_conf_pos($row,7) eq "unlocked")) {
    
			 # print (HTMLFILE "<td align=center>".print_mmen_conf_pos(0,1)."</td>\n");
			 # print (HTMLFILE "<td align=center>".print_mmen_conf_pos(0,2)."</td>\n");  
			 # print (HTMLFILE "<td align=center>".print_mmen_conf_pos(0,3)."</td>\n");
			 # print (HTMLFILE "<td align=center>".print_mmen_conf_pos(0,5)."</td>\n");     
			 # print (HTMLFILE "<td align=center>".print_mmen_conf_pos(0,7)."</td>\n");
		# }
		# else {
			 # print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_mmen_conf_pos(0,1)."</td>\n");    
			 # print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_mmen_conf_pos(0,2)."</td>\n");
			 # print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_mmen_conf_pos(0,3)."</td>\n");    
			 # print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_mmen_conf_pos(0,5)."</td>\n");    
			 # print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_mmen_conf_pos(0,7)."</td>\n");     
		 
		 # }
    # }    

	############################ALM-LIST
	##############################RTRV-ALM-List



	print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
	print (HTMLFILE "<tr><td colspan=11 align=center bgcolor=#EEEEEE><b>RTRV-ALM-LIST</b></td></tr>\n");
			      

	parse_alm_list_get ();
	parse_alm_list_field_value ();

		# my $row=0;
		# my $col=0;
			if (fetch_alm_list_value_by_pos(0) eq "NOK"){
			
			 # print (HTMLFILE "<td align=center>".fetch_alm_list_value_by_pos(0)."</td>\n");  
			 
			 print (HTMLFILE "<tr><th align=center>NO ALARMS</th></tr>\n");
			 print (HTMLFILE "</td>\n");
			 print (HTMLFILE "</tr>\n");

			}
			else{
			print (HTMLFILE "<tr><th align=center>UNIT_TYPE</th><th align=center>ALARM_TYPE </th><th align=center>LOCATION</th></tr>\n");	
			for ($row=0; $row < get_size_alm_list_arr(); $row = $row + 1) {  
				#print_cell_info_pos		
					for($col=1; $col <= 3; $col = $col + 1 ) {
					 print (HTMLFILE "<td align=center>".print_alm_list_pos($row,$col)."</td>\n");
				}  

		print (HTMLFILE "</td>\n");
		print (HTMLFILE "</tr>\n");					
		}
		
		
	
			
		}			  
		print (HTMLFILE "</table>\n"); 


####################################
	
	
	
	
	
	
	##############################################
	

##############RTRV-CELL-INFO	
print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=6 align=center bgcolor=#EEEEEE><b>CELL-INFO</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>CELL_NUM</th><th align=center>CELL_SIZE</th><th align=center>HNB_NAME</th><th align=center>ADD_SPECTRUM_EMISSION</th><th align=center>TRACKING_AREA_CODE</th><th align=center>IMS_EMERGENCY_SUPPORT</th></tr>\n");			      


parse_cell_infon_get ();

# my $row=0;
# my $col=0;

for ($row=0; $row<get_size_cell_info_arr(); $row = $row + 1) {  
        #print_cell_info_pos
	if (print_cell_infon_pos($row,1) == 0){
		if ((print_cell_infon_pos($row,2) eq "large") && (print_cell_infon_pos($row,3) eq "SAMSUNG_LTE") && (print_cell_infon_pos($row,4) eq "1") && (print_cell_infon_pos($row,5) eq ret_vendor_ciq_info2($cascade,$eNBName,0,32)) && (print_cell_infon_pos($row,6) eq "FALSE")) {
    
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(0,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(0,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(0,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(0,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(0,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(0,6)."</td>\n"); 
		
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(0,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(0,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(0,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(0,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(0,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(0,6)."</td>\n");  			 
		 
		 } 
    }  
	
	if (print_cell_infon_pos($row,1) == 1){
		if ((print_cell_infon_pos($row,2) eq "large") && (print_cell_infon_pos($row,3) eq "SAMSUNG_LTE") && (print_cell_infon_pos($row,4) eq "1") && (print_cell_infon_pos($row,5) eq ret_vendor_ciq_info2($cascade,$eNBName,0,32)) && (print_cell_infon_pos($row,6) eq "FALSE")) {
    
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(1,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(1,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(1,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(1,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(1,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(1,6)."</td>\n"); 
		
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(1,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(1,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(1,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(1,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(1,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(1,6)."</td>\n");  			 
		 
		 }
		 }
		 
		 if (print_cell_infon_pos($row,1) == 3){
		if ((print_cell_infon_pos($row,2) eq "large") && (print_cell_infon_pos($row,3) eq "SAMSUNG_LTE") && (print_cell_infon_pos($row,4) eq "1") && (print_cell_infon_pos($row,5) eq ret_vendor_ciq_info2($cascade,$eNBName,0,32)) && (print_cell_infon_pos($row,6) eq "FALSE")) {
    
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(2,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(2,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(2,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(2,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(2,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(2,6)."</td>\n"); 
		
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(2,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(2,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(2,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(2,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(2,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(2,6)."</td>\n");  			 
		 
		 }
		 }
		 
		if (print_cell_infon_pos($row,1) == 4){
		if ((print_cell_infon_pos($row,2) eq "large") && (print_cell_infon_pos($row,3) eq "SAMSUNG_LTE") && (print_cell_infon_pos($row,4) eq "1") && (print_cell_infon_pos($row,5) eq ret_vendor_ciq_info2($cascade,$eNBName,0,32)) && (print_cell_infon_pos($row,6) eq "FALSE")) {
    
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(3,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(3,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(3,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(3,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(3,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(3,6)."</td>\n"); 
		
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(3,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(3,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(3,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(3,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(3,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(3,6)."</td>\n");  			 
		 
		 }
		 }
		 
		if (print_cell_infon_pos($row,1) == 5){
		if ((print_cell_infon_pos($row,2) eq "large") && (print_cell_infon_pos($row,3) eq "SAMSUNG_LTE") && (print_cell_infon_pos($row,4) eq "1") && (print_cell_infon_pos($row,5) eq ret_vendor_ciq_info2($cascade,$eNBName,0,32)) && (print_cell_infon_pos($row,6) eq "FALSE")) {
    
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(4,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(4,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(4,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(4,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(4,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(4,6)."</td>\n"); 
		
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(4,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(4,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(4,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(4,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(4,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(4,6)."</td>\n");  			 
		 
		 }
		 }
		 
		if (print_cell_infon_pos($row,1) == 6){
		if ((print_cell_infon_pos($row,2) eq "large") && (print_cell_infon_pos($row,3) eq "SAMSUNG_LTE") && (print_cell_infon_pos($row,4) eq "1") && (print_cell_infon_pos($row,5) eq ret_vendor_ciq_info2($cascade,$eNBName,0,32)) && (print_cell_infon_pos($row,6) eq "FALSE")) {
    
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(5,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(5,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(5,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(6,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(6,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(6,6)."</td>\n"); 
		
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(5,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(5,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(5,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(5,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(5,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(5,6)."</td>\n");  			 
		 
		 }
		 }
		 
		if (print_cell_infon_pos($row,1) == 7){
		if ((print_cell_infon_pos($row,2) eq "large") && (print_cell_infon_pos($row,3) eq "SAMSUNG_LTE") && (print_cell_infon_pos($row,4) eq "1") && (print_cell_infon_pos($row,5) eq ret_vendor_ciq_info2($cascade,$eNBName,0,32)) && (print_cell_infon_pos($row,6) eq "FALSE")) {
    
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(6,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(6,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(6,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(6,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(6,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(6,6)."</td>\n"); 
		
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(6,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(6,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(6,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(6,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(6,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(6,6)."</td>\n");  			 
		 
		 }
		 }
		if (print_cell_infon_pos($row,1) == 8){
		if ((print_cell_infon_pos($row,2) eq "large") && (print_cell_infon_pos($row,3) eq "SAMSUNG_LTE") && (print_cell_infon_pos($row,4) eq "1") && (print_cell_infon_pos($row,5) eq ret_vendor_ciq_info2($cascade,$eNBName,0,32)) && (print_cell_infon_pos($row,6) eq "FALSE")) {
    
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(7,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(7,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(7,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(7,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(7,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(7,6)."</td>\n"); 
		
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(7,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(7,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(7,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(7,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(7,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(7,6)."</td>\n");  			 
		 
		 }
		 }
		if (print_cell_infon_pos($row,1) == 9){
		if ((print_cell_infon_pos($row,2) eq "large") && (print_cell_infon_pos($row,3) eq "SAMSUNG_LTE") && (print_cell_infon_pos($row,4) eq "1") && (print_cell_infon_pos($row,5) eq ret_vendor_ciq_info2($cascade,$eNBName,0,32)) && (print_cell_infon_pos($row,6) eq "FALSE")) {
    
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(8,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(8,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(8,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(8,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(8,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(8,6)."</td>\n"); 
		
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(8,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(8,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(8,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(8,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(8,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(8,6)."</td>\n");  			 
		 
		 }
		 }
		if (print_cell_infon_pos($row,1) == 10){
		if ((print_cell_infon_pos($row,2) eq "large") && (print_cell_infon_pos($row,3) eq "SAMSUNG_LTE") && (print_cell_infon_pos($row,4) eq "1") && (print_cell_infon_pos($row,5) eq ret_vendor_ciq_info2($cascade,$eNBName,0,32)) && (print_cell_infon_pos($row,6) eq "FALSE")) {
    
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(9,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(9,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(9,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(9,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(9,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(9,6)."</td>\n"); 
		
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(9,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(9,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(9,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(9,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(9,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(9,6)."</td>\n");  			 
		 
		 }
		 }
	    if (print_cell_infon_pos($row,1) == 12){
		if ((print_cell_infon_pos($row,2) eq "large") && (print_cell_infon_pos($row,3) eq "SAMSUNG_LTE") && (print_cell_infon_pos($row,4) eq "1") && (print_cell_infon_pos($row,5) eq ret_vendor_ciq_info2($cascade,$eNBName,0,32)) && (print_cell_infon_pos($row,6) eq "FALSE")) {
    
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(10,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(10,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(10,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(10,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(10,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(10,6)."</td>\n"); 
		
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(10,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(10,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(10,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(10,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(10,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(10,6)."</td>\n");  			 
		 
		 }
		 }
		 
		if (print_cell_infon_pos($row,1) == 13){
		if ((print_cell_infon_pos($row,2) eq "large") && (print_cell_infon_pos($row,3) eq "SAMSUNG_LTE") && (print_cell_infon_pos($row,4) eq "1") && (print_cell_infon_pos($row,5) eq ret_vendor_ciq_info2($cascade,$eNBName,0,32)) && (print_cell_infon_pos($row,6) eq "FALSE")) {
    
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(11,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(11,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(11,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(11,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(11,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(11,6)."</td>\n"); 
		
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(11,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(11,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(11,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(11,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(11,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(11,6)."</td>\n");  			 
		 
		 }
		 }
		 
	    if (print_cell_infon_pos($row,1) == 14){
		if ((print_cell_infon_pos($row,2) eq "large") && (print_cell_infon_pos($row,3) eq "SAMSUNG_LTE") && (print_cell_infon_pos($row,4) eq "1") && (print_cell_infon_pos($row,5) eq ret_vendor_ciq_info2($cascade,$eNBName,0,32)) && (print_cell_infon_pos($row,6) eq "FALSE")) {
    
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(12,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(12,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(12,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(12,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(12,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_infon_pos(12,6)."</td>\n"); 
		
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(12,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(12,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(12,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(12,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(12,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(12,6)."</td>\n");  			 
		 
		 }
		 }
		# if (print_cell_infon_pos($row,1) == 18){
		# if ((print_cell_infon_pos($row,2) eq "large") && (print_cell_infon_pos($row,3) eq "SAMSUNG_LTE") && (print_cell_infon_pos($row,4) eq "1") && (print_cell_infon_pos($row,5) eq "H'4B05") && (print_cell_infon_pos($row,6) eq "FALSE")) {
    
			 # print (HTMLFILE "<td align=center>".print_cell_infon_pos(16,1)."</td>\n");
			 # print (HTMLFILE "<td align=center>".print_cell_infon_pos(16,2)."</td>\n");  
			 # print (HTMLFILE "<td align=center>".print_cell_infon_pos(16,3)."</td>\n");
			 # print (HTMLFILE "<td align=center>".print_cell_infon_pos(16,4)."</td>\n"); 
			 # print (HTMLFILE "<td align=center>".print_cell_infon_pos(16,5)."</td>\n"); 
			 # print (HTMLFILE "<td align=center>".print_cell_infon_pos(16,6)."</td>\n"); 
		
		# }
		# else {
			 # print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(16,1)."</td>\n");    
			 # print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(16,2)."</td>\n");
			 # print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(16,3)."</td>\n");    
			 # print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(16,4)."</td>\n"); 
			 # print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(16,5)."</td>\n");  
             # print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(16,6)."</td>\n");  			 
		 
		 # }
		 # }
		# if (print_cell_infon_pos($row,1) == 19){
		# if ((print_cell_infon_pos($row,2) eq "large") && (print_cell_infon_pos($row,3) eq "SAMSUNG_LTE") && (print_cell_infon_pos($row,4) eq "1") && (print_cell_infon_pos($row,5) eq "H'4B05") && (print_cell_infon_pos($row,6) eq "FALSE")) {
    
			 # print (HTMLFILE "<td align=center>".print_cell_infon_pos(17,1)."</td>\n");
			 # print (HTMLFILE "<td align=center>".print_cell_infon_pos(17,2)."</td>\n");  
			 # print (HTMLFILE "<td align=center>".print_cell_infon_pos(17,3)."</td>\n");
			 # print (HTMLFILE "<td align=center>".print_cell_infon_pos(17,4)."</td>\n"); 
			 # print (HTMLFILE "<td align=center>".print_cell_infon_pos(17,5)."</td>\n"); 
			 # print (HTMLFILE "<td align=center>".print_cell_infon_pos(17,6)."</td>\n"); 
		
		# }
		# else {
			 # print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(17,1)."</td>\n");    
			 # print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(17,2)."</td>\n");
			 # print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(17,3)."</td>\n");    
			 # print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(17,4)."</td>\n"); 
			 # print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(17,5)."</td>\n");  
             # print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_infon_pos(17,6)."</td>\n");  			 
		 
		 # }
		 # }
		  		 

 print (HTMLFILE "</td>\n");
 print (HTMLFILE "</tr>\n");
}

 
 print (HTMLFILE "</table>\n");
 
 
 
 
 
 ##############RTRV-CELL-STS	
print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=6 align=center bgcolor=#EEEEEE><b>CELL-STS</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>CELL_NUM</th><th align=center>OPERATIONAL STATE</th><th align=center>USAGE_STAT</th><th align=center>TEST_FLAG</th></tr>\n");			      


parse_cell_sts_get ();

# my $row=0;
# my $col=0;

for ($row=0; $row < get_size_cell_sts_arr(); $row = $row + 1) {  
        #print_cell_info_pos
	if (print_cell_sts_pos($row,1) == 0){
		if ((print_cell_sts_pos($row,1)eq ret_vendor_ciq_info2($cascade,$eNBName,0,21))&&(print_cell_sts_pos($row,2) eq "enabled") && (print_cell_sts_pos($row,3) eq "active") && (print_cell_sts_pos($row,4) eq "Off")) {
    
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(0,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(0,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(0,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(0,4)."</td>\n");

		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(0,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(0,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(0,3)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(0,4)."</td>\n");		 
		 } 
    }  
	
	if (print_cell_sts_pos($row,1) == 1){
		if ((print_cell_sts_pos($row,1)eq ret_vendor_ciq_info2($cascade,$eNBName,0,21))&&(print_cell_sts_pos($row,2) eq "enabled") && (print_cell_sts_pos($row,3) eq "active") && (print_cell_sts_pos($row,4) eq "Off")) {
    
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(1,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(1,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(1,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(1,4)."</td>\n");

		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(1,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(1,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(1,3)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(1,4)."</td>\n");		 
		 } 
    }  
	
	if (print_cell_sts_pos($row,1) == 3){
		if ((print_cell_sts_pos($row,1)eq ret_vendor_ciq_info2($cascade,$eNBName,0,21))&&(print_cell_sts_pos($row,2) eq "enabled") && (print_cell_sts_pos($row,3) eq "active") && (print_cell_sts_pos($row,4) eq "Off")) {
    
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(2,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(2,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(2,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(2,4)."</td>\n");

		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(2,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(2,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(2,3)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(2,4)."</td>\n");		 
		 } 
    }  
	if (print_cell_sts_pos($row,1) == 4){
		if ((print_cell_sts_pos($row,1)eq ret_vendor_ciq_info2($cascade,$eNBName,0,21))&&(print_cell_sts_pos($row,2) eq "enabled") && (print_cell_sts_pos($row,3) eq "active") && (print_cell_sts_pos($row,4) eq "Off")) {
    
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(3,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(3,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(3,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(3,4)."</td>\n");

		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(3,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(3,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(3,3)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(3,4)."</td>\n");		 
		 } 
    }  
	
	if (print_cell_sts_pos($row,1) == 5){
		if ((print_cell_sts_pos($row,1)eq ret_vendor_ciq_info2($cascade,$eNBName,0,21))&&(print_cell_sts_pos($row,2) eq "enabled") && (print_cell_sts_pos($row,3) eq "active") && (print_cell_sts_pos($row,4) eq "Off")) {
    
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(4,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(4,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(4,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(4,4)."</td>\n");

		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(4,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(4,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(4,3)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(4,4)."</td>\n");		 
		 } 
    }  
	
	if (print_cell_sts_pos($row,1) == 6){
		if ((print_cell_sts_pos($row,1)eq ret_vendor_ciq_info2($cascade,$eNBName,0,21))&&(print_cell_sts_pos($row,2) eq "enabled") && (print_cell_sts_pos($row,3) eq "active") && (print_cell_sts_pos($row,4) eq "Off")) {
    
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(5,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(5,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(5,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(5,4)."</td>\n");

		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(5,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(5,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(5,3)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(5,4)."</td>\n");		 
		 } 
    }  
	
	if (print_cell_sts_pos($row,1) == 7){
		if ((print_cell_sts_pos($row,1)eq ret_vendor_ciq_info2($cascade,$eNBName,0,21))&&(print_cell_sts_pos($row,2) eq "enabled") && (print_cell_sts_pos($row,3) eq "active") && (print_cell_sts_pos($row,4) eq "Off")) {
    
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(6,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(6,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(6,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(6,4)."</td>\n");

		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(6,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(6,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(6,3)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(6,4)."</td>\n");		 
		 } 
    }  
	
	if (print_cell_sts_pos($row,1) == 8){
		if ((print_cell_sts_pos($row,1)eq ret_vendor_ciq_info2($cascade,$eNBName,0,21))&&(print_cell_sts_pos($row,2) eq "enabled") && (print_cell_sts_pos($row,3) eq "active") && (print_cell_sts_pos($row,4) eq "Off")) {
    
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(7,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(7,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(7,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(7,4)."</td>\n");

		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(7,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(7,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(7,3)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(7,4)."</td>\n");		 
		 } 
    }  
	
	if (print_cell_sts_pos($row,1) == 9){
		if ((print_cell_sts_pos($row,1)eq ret_vendor_ciq_info2($cascade,$eNBName,0,21))&&(print_cell_sts_pos($row,2) eq "enabled") && (print_cell_sts_pos($row,3) eq "active") && (print_cell_sts_pos($row,4) eq "Off")) {
    
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(8,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(8,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(8,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(8,4)."</td>\n");

		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(8,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(8,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(8,3)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(8,4)."</td>\n");		 
		 } 
    }  
	
	if (print_cell_sts_pos($row,1) == 10){
		if ((print_cell_sts_pos($row,1)eq ret_vendor_ciq_info2($cascade,$eNBName,0,21))&&(print_cell_sts_pos($row,2) eq "enabled") && (print_cell_sts_pos($row,3) eq "active") && (print_cell_sts_pos($row,4) eq "Off")) {
    
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(9,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(9,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(9,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(9,4)."</td>\n");

		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(9,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(9,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(9,3)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(9,4)."</td>\n");		 
		 } 
    }  
	
	if (print_cell_sts_pos($row,1) == 12){
		if ((print_cell_sts_pos($row,1)eq ret_vendor_ciq_info2($cascade,$eNBName,0,21))&&(print_cell_sts_pos($row,2) eq "enabled") && (print_cell_sts_pos($row,3) eq "active") && (print_cell_sts_pos($row,4) eq "Off")) {
    
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(10,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(10,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(10,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(10,4)."</td>\n");

		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(10,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(10,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(10,3)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(10,4)."</td>\n");		 
		 } 
    }  
	
	if (print_cell_sts_pos($row,1) == 13){
		if ((print_cell_sts_pos($row,1)eq ret_vendor_ciq_info2($cascade,$eNBName,0,21))&&(print_cell_sts_pos($row,2) eq "enabled") && (print_cell_sts_pos($row,3) eq "active") && (print_cell_sts_pos($row,4) eq "Off")) {
    
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(11,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(11,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(11,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(11,4)."</td>\n");

		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(11,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(11,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(11,3)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(11,4)."</td>\n");		 
		 } 
    }  
		if (print_cell_sts_pos($row,1) == 14){
		if ((print_cell_sts_pos($row,1)eq ret_vendor_ciq_info2($cascade,$eNBName,0,21))&&(print_cell_sts_pos($row,2) eq "enabled") && (print_cell_sts_pos($row,3) eq "active") && (print_cell_sts_pos($row,4) eq "Off")) {
    
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(12,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(12,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(12,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(12,4)."</td>\n");

		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(12,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(12,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(12,3)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(12,4)."</td>\n");		 
		 } 
    }  
	
	if (print_cell_sts_pos($row,1) == 18){
		if ((print_cell_sts_pos($row,1)eq ret_vendor_ciq_info2($cascade,$eNBName,0,21))&&(print_cell_sts_pos($row,2) eq "enabled") && (print_cell_sts_pos($row,3) eq "active") && (print_cell_sts_pos($row,4) eq "Off")) {
    
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(13,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(13,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(13,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(13,4)."</td>\n");

		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(13,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(13,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(13,3)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(13,4)."</td>\n");		 
		 } 
    }  
	
		if (print_cell_sts_pos($row,1) == 19){
		if ((print_cell_sts_pos($row,1)eq ret_vendor_ciq_info2($cascade,$eNBName,0,21))&&(print_cell_sts_pos($row,2) eq "enabled") && (print_cell_sts_pos($row,3) eq "active") && (print_cell_sts_pos($row,4) eq "Off")) {
    
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(14,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(14,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(14,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_sts_pos(14,4)."</td>\n");

		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(14,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(14,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(14,3)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_sts_pos(14,4)."</td>\n");		 
		 } 
    }  
	
 print (HTMLFILE "</td>\n");
 print (HTMLFILE "</tr>\n");
}

 
 print (HTMLFILE "</table>\n");
 
 
 
 ##############RTRV-POS-CONF	
print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=6 align=center bgcolor=#EEEEEE><b>POS-CONF</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>CELL_NUM</th><th align=center>AUTO_GPS_SET_FLAG STATE</th></tr>\n");			      


parse_pos_conf_get ();

# my $row=0;
# my $col=0;

for ($row=0; $row<get_size_pos_conf_arr(); $row = $row + 1) {  
        #print_cell_info_pos
		
	if ((print_pos_conf_pos($row,1) == 0)){
		if ((print_pos_conf_pos($row,1)eq ret_vendor_ciq_info2($cascade,$eNBName,0,21))&& (print_pos_conf_pos($row,2) eq "TRUE")) {
    
			 print (HTMLFILE "<td align=center>".print_pos_conf_pos(0,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_pos_conf_pos(0,2)."</td>\n");  

		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_pos_conf_pos(0,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_pos_conf_pos(0,2)."</td>\n");   
		 } 
    }  
	
	if (print_pos_conf_pos($row,1) == 1){
		if ((print_pos_conf_pos($row,1)eq ret_vendor_ciq_info2($cascade,$eNBName,0,21))&&(print_pos_conf_pos($row,2) eq "TRUE")) {
    
			 print (HTMLFILE "<td align=center>".print_pos_conf_pos(1,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_pos_conf_pos(1,2)."</td>\n");  

		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_pos_conf_pos(1,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_pos_conf_pos(1,2)."</td>\n");   
		 } 
    }  
	
	if (print_pos_conf_pos($row,1) == 3){
		if ((print_pos_conf_pos($row,1)eq ret_vendor_ciq_info2($cascade,$eNBName,0,21))&&(print_pos_conf_pos($row,2) eq "TRUE")) {
    
			 print (HTMLFILE "<td align=center>".print_pos_conf_pos(2,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_pos_conf_pos(2,2)."</td>\n");  

		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_pos_conf_pos(2,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_pos_conf_pos(2,2)."</td>\n");   
		 } 
    }  
	if (print_pos_conf_pos($row,1) == 4){
		if ((print_pos_conf_pos($row,1)eq ret_vendor_ciq_info2($cascade,$eNBName,0,21))&&(print_pos_conf_pos($row,2) eq "TRUE")) {
    
			 print (HTMLFILE "<td align=center>".print_pos_conf_pos(3,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_pos_conf_pos(3,2)."</td>\n");  

		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_pos_conf_pos(3,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_pos_conf_pos(3,2)."</td>\n");   
		 } 
    }  
	
		if (print_pos_conf_pos($row,1) == 5){
		if ((print_pos_conf_pos($row,1)eq ret_vendor_ciq_info2($cascade,$eNBName,0,21))&&(print_pos_conf_pos($row,2) eq "TRUE")) {
    
			 print (HTMLFILE "<td align=center>".print_pos_conf_pos(4,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_pos_conf_pos(4,2)."</td>\n");  

		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_pos_conf_pos(4,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_pos_conf_pos(4,2)."</td>\n");   
		 } 
    } 
	
		if (print_pos_conf_pos($row,1) == 6){
		if ((print_pos_conf_pos($row,1)eq ret_vendor_ciq_info2($cascade,$eNBName,0,21))&&(print_pos_conf_pos($row,2) eq "TRUE")) {
    
			 print (HTMLFILE "<td align=center>".print_pos_conf_pos(5,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_pos_conf_pos(5,2)."</td>\n");  

		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_pos_conf_pos(5,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_pos_conf_pos(5,2)."</td>\n");   
		 } 
    } 
	
		if (print_pos_conf_pos($row,1) == 7){
		if ((print_pos_conf_pos($row,1)eq ret_vendor_ciq_info2($cascade,$eNBName,0,21))&&(print_pos_conf_pos($row,2) eq "TRUE")) {
    
			 print (HTMLFILE "<td align=center>".print_pos_conf_pos(6,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_pos_conf_pos(6,2)."</td>\n");  

		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_pos_conf_pos(6,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_pos_conf_pos(6,2)."</td>\n");   
		 } 
    } 
	
		if (print_pos_conf_pos($row,1) == 8){
		if ((print_pos_conf_pos($row,1)eq ret_vendor_ciq_info2($cascade,$eNBName,0,21))&&(print_pos_conf_pos($row,2) eq "TRUE")) {
    
			 print (HTMLFILE "<td align=center>".print_pos_conf_pos(7,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_pos_conf_pos(7,2)."</td>\n");  

		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_pos_conf_pos(7,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_pos_conf_pos(7,2)."</td>\n");   
		 } 
    } 
	
		if (print_pos_conf_pos($row,1) == 9){
		if ((print_pos_conf_pos($row,1)eq ret_vendor_ciq_info2($cascade,$eNBName,0,21))&&(print_pos_conf_pos($row,2) eq "TRUE")) {
    
			 print (HTMLFILE "<td align=center>".print_pos_conf_pos(8,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_pos_conf_pos(8,2)."</td>\n");  

		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_pos_conf_pos(8,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_pos_conf_pos(8,2)."</td>\n");   
		 } 
    } 
	
	if (print_pos_conf_pos($row,1) == 10){
		if ((print_pos_conf_pos($row,1)eq ret_vendor_ciq_info2($cascade,$eNBName,0,21))&&(print_pos_conf_pos($row,2) eq "TRUE")) {
    
			 print (HTMLFILE "<td align=center>".print_pos_conf_pos(9,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_pos_conf_pos(9,2)."</td>\n");  

		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_pos_conf_pos(9,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_pos_conf_pos(9,2)."</td>\n");   
		 } 
    } 
	
	if (print_pos_conf_pos($row,1) == 12){
		if ((print_pos_conf_pos($row,1)eq ret_vendor_ciq_info2($cascade,$eNBName,0,21))&&(print_pos_conf_pos($row,2) eq "TRUE")) {
    
			 print (HTMLFILE "<td align=center>".print_pos_conf_pos(10,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_pos_conf_pos(10,2)."</td>\n");  

		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_pos_conf_pos(10,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_pos_conf_pos(10,2)."</td>\n");   
		 } 
    } 
	
	if (print_pos_conf_pos($row,1) == 13){
		if ((print_pos_conf_pos($row,1)eq ret_vendor_ciq_info2($cascade,$eNBName,0,21))&&(print_pos_conf_pos($row,2) eq "TRUE")) {
    
			 print (HTMLFILE "<td align=center>".print_pos_conf_pos(11,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_pos_conf_pos(11,2)."</td>\n");  

		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_pos_conf_pos(11,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_pos_conf_pos(11,2)."</td>\n");   
		 } 
    }
	
		
	if (print_pos_conf_pos($row,1) == 14){
		if ((print_pos_conf_pos($row,1)eq ret_vendor_ciq_info2($cascade,$eNBName,0,21))&&(print_pos_conf_pos($row,2) eq "TRUE")) {
    
			 print (HTMLFILE "<td align=center>".print_pos_conf_pos(12,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_pos_conf_pos(12,2)."</td>\n");  

		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_pos_conf_pos(12,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_pos_conf_pos(12,2)."</td>\n");   
		 } 
    }
	
		if (print_pos_conf_pos($row,1) == 18){
		if ((print_pos_conf_pos($row,1)eq ret_vendor_ciq_info2($cascade,$eNBName,0,21))&&(print_pos_conf_pos($row,2) eq "TRUE")) {
    
			 print (HTMLFILE "<td align=center>".print_pos_conf_pos(13,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_pos_conf_pos(13,2)."</td>\n");  

		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_pos_conf_pos(13,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_pos_conf_pos(13,2)."</td>\n");   
		 } 
    }
	
			if (print_pos_conf_pos($row,1) == 19){
		if ((print_pos_conf_pos($row,1)eq ret_vendor_ciq_info2($cascade,$eNBName,0,21))&&(print_pos_conf_pos($row,2) eq "TRUE")) {
    
			 print (HTMLFILE "<td align=center>".print_pos_conf_pos(14,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_pos_conf_pos(14,2)."</td>\n");  

		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_pos_conf_pos(14,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_pos_conf_pos(14,2)."</td>\n");   
		 } 
    }
	
 print (HTMLFILE "</td>\n");
 print (HTMLFILE "</tr>\n");
}

 
 print (HTMLFILE "</table>\n");
 




##################  RTRV-IP-ADDR             

###########Sub Routine Call###################
    my $IPLog_Fname='C:\\Users\\Bhargava\\Desktop\\Delivery\\Version1\\RTRV-IP-ADDR.txt';
    parse_ip_addrn_get ($IPLog_Fname);
	my $ret_val=print_ip_addrn_pos(0,5);
#    print $ret_val;


#print "pos=".print_ip_addrn_pos(0,5);
#print "size = ".get_size_ip_addr_arr();
#read_vendor_ciq_info();
#print print_ip_addrn_pos()[0][1];
#print_ip_addrn_pos(0,5);
#print "Hash at position 0,10=".ret_vendor_ciq_info2($cascade,$eNBName,1,25);
                   # print Dumper\%HashCsv;
#
#					exit 0;



print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=11 align=center bgcolor=#EEEEEE><b>RTRV-IP-ADDR</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>DB_INDEX</th><th align=center>IF_NAME</th><th align=center>IP_ADDR</th><th align=center>IP_PFX_LEN</th><th align=center>OAM</th><th align=center>LTE_SIGNAL_S1</th><th align=center>LTE_SIGNAL_X2</th><th align=center>LTE_BEARER_S1</th><th align=center>LTE_BEARER_X2</th></tr>\n");  

my $row=0;
my $col=0;


  for ($row=0; $row<get_size_ip_addr_arr();$row = $row + 1) {  
        
	if (print_ip_addrn_pos($row,1) == 0){
    
     print (HTMLFILE "<td align=center>".print_ip_addrn_pos(0,1)."</td>\n");
     print (HTMLFILE "<td align=center>".print_ip_addrn_pos(0,2)."</td>\n");  
     print (HTMLFILE "<td align=center>".print_ip_addrn_pos(0,3)."</td>\n");
     print (HTMLFILE "<td align=center>".print_ip_addrn_pos(0,4)."</td>\n");     
     #print (HTMLFILE "<td align=center>".print_ip_addrn_pos(0,5)."</td>\n");
     print (HTMLFILE "<td align=center>".print_ip_addrn_pos(0,6)."</td>\n");    
     print (HTMLFILE "<td align=center>".print_ip_addrn_pos(0,7)."</td>\n");
     print (HTMLFILE "<td align=center>".print_ip_addrn_pos(0,8)."</td>\n");     
     print (HTMLFILE "<td align=center>".print_ip_addrn_pos(0,9)."</td>\n");         
	 print (HTMLFILE "<td align=center>".print_ip_addrn_pos(0,10)."</td>\n");         
    }   
	
	if (print_ip_addrn_pos($row,1) == 1) {
	   if ((print_ip_addrn_pos(1,6) eq "True") && (print_ip_addrn_pos(1,7) eq "False") && (print_ip_addrn_pos(1,8) eq "False") && (print_ip_addrn_pos(1,9) eq "False") && (print_ip_addrn_pos(1,10) eq "False") && (print_ip_addrn_pos(1,3) eq ret_vendor_ciq_info2($cascade,$eNBName,1,25))){
		
		 print (HTMLFILE "<td align=center>".print_ip_addrn_pos(1,1)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_ip_addrn_pos(1,2)."</td>\n");  
		 print (HTMLFILE "<td align=center>".print_ip_addrn_pos(1,3)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_ip_addrn_pos(1,4)."</td>\n");     
		 #print (HTMLFILE "<td align=center>".print_ip_addrn_pos(1,5)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_ip_addrn_pos(1,6)."</td>\n");    
		 print (HTMLFILE "<td align=center>".print_ip_addrn_pos(1,7)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_ip_addrn_pos(1,8)."</td>\n");     
		 print (HTMLFILE "<td align=center>".print_ip_addrn_pos(1,9)."</td>\n");    
		 print (HTMLFILE "<td align=center>".print_ip_addrn_pos(1,10)."</td>\n");           		 
	  
		}
	 else {
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_ip_addrn_pos(1,1)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_ip_addrn_pos(1,2)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_ip_addrn_pos(1,3)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_ip_addrn_pos(1,4)."</td>\n");     
		 #print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_ip_addrn_pos(1,5)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_ip_addrn_pos(1,6)."</td>\n");     
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_ip_addrn_pos(1,7)."</td>\n");     
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_ip_addrn_pos(1,8)."</td>\n");     
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_ip_addrn_pos(1,9)."</td>\n");           
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_ip_addrn_pos(1,10)."</td>\n");           
		 }    
	} 
                              
 if (print_ip_addrn_pos($row,1) == 2){

	if ((print_ip_addrn_pos(2,6) eq "False") && (print_ip_addrn_pos(2,7) eq "True") && (print_ip_addrn_pos(2,8) eq "True") && (print_ip_addrn_pos(2,9) eq "True") && (print_ip_addrn_pos(2,10) eq "True") && (print_ip_addrn_pos(2,3) eq ret_vendor_ciq_info2($cascade,$eNBName,2,29))){
    
		 print (HTMLFILE "<td align=center>".print_ip_addrn_pos(2,1)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_ip_addrn_pos(2,2)."</td>\n");  
		 print (HTMLFILE "<td align=center>".print_ip_addrn_pos(2,3)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_ip_addrn_pos(2,4)."</td>\n");     
		# print (HTMLFILE "<td align=center>".print_ip_addrn_pos(2,5)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_ip_addrn_pos(2,6)."</td>\n");    
		 print (HTMLFILE "<td align=center>".print_ip_addrn_pos(2,7)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_ip_addrn_pos(2,8)."</td>\n");     
		 print (HTMLFILE "<td align=center>".print_ip_addrn_pos(2,9)."</td>\n");         
		 print (HTMLFILE "<td align=center>".print_ip_addrn_pos(2,10)."</td>\n");   
   }
 else {
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_ip_addrn_pos(2,1)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_ip_addrn_pos(2,2)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_ip_addrn_pos(2,3)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_ip_addrn_pos(2,4)."</td>\n");     
		 #print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_ip_addrn_pos(2,5)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_ip_addrn_pos(2,6)."</td>\n");     
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_ip_addrn_pos(2,7)."</td>\n");     
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_ip_addrn_pos(2,8)."</td>\n");     
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_ip_addrn_pos(2,9)."</td>\n");     
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_ip_addrn_pos(2,10)."</td>\n");           
		}    
	}                
	print (HTMLFILE "</td>\n");
	print (HTMLFILE "</tr>\n");
	} 
                       
print (HTMLFILE "</table>\n");   


#################################RTRV-IP-ROUTE
print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=11 align=center bgcolor=#EEEEEE><b>RTRV-IP-ROUTE</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>VR_ID</th><th align=center>DB_INDEX</th><th align=center>IP_PREFIX</th><th align=center>IP_PFX_LEN</th><th align=center>IP_GW</th><th align=center>DISTANCE</th></tr>\n");  

parse_ip_routen_get ();

my $row=0;
my $col=0;

  
for ($row=0; $row<get_size_ip_route_arr();$row = $row + 1) {  
        
	if (print_ip_routen_pos($row,2) == 0){
     if ((print_ip_routen_pos($row,1) == 0) && (print_ip_routen_pos($row,4) == 32) && (print_ip_routen_pos($row,5) eq ret_vendor_ciq_info2($cascade,$eNBName,0,24))) {
		 print (HTMLFILE "<td align=center>".print_ip_routen_pos(0,1)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_ip_routen_pos(0,2)."</td>\n");  
		 print (HTMLFILE "<td align=center>".print_ip_routen_pos(0,3)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_ip_routen_pos(0,4)."</td>\n");     
		 print (HTMLFILE "<td align=center>".print_ip_routen_pos(0,5)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_ip_routen_pos(0,6)."</td>\n");    
     } else {
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_ip_routen_pos(0,1)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_ip_routen_pos(0,2)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_ip_routen_pos(0,3)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_ip_routen_pos(0,4)."</td>\n");     
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_ip_routen_pos(0,5)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_ip_routen_pos(0,6)."</td>\n");     
	 }   
    }   
	
	if (print_ip_routen_pos($row,2) == 1) {
	   if ((print_ip_routen_pos($row,1) == 0) && (print_ip_routen_pos($row,3) eq "0.0.0.0") && (print_ip_routen_pos($row,5) eq ret_vendor_ciq_info2($cascade,$eNBName,0,24))){
		 print (HTMLFILE "<td align=center>".print_ip_routen_pos(1,1)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_ip_routen_pos(1,2)."</td>\n");  
		 print (HTMLFILE "<td align=center>".print_ip_routen_pos(1,3)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_ip_routen_pos(1,4)."</td>\n");     
		 print (HTMLFILE "<td align=center>".print_ip_routen_pos(1,5)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_ip_routen_pos(1,6)."</td>\n");    
		 
		}
	 else {
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_ip_routen_pos(1,1)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_ip_routen_pos(1,2)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_ip_routen_pos(1,3)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_ip_routen_pos(1,4)."</td>\n");     
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_ip_routen_pos(1,5)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_ip_routen_pos(1,6)."</td>\n");     
	 
		 }    
	} 
                              
 if (print_ip_routen_pos($row,2) == 2){

	if ((print_ip_routen_pos($row,1) == 0) && (print_ip_routen_pos($row,3) eq "0.0.0.0") && (print_ip_routen_pos($row,5) eq ret_vendor_ciq_info2($cascade,$eNBName,0,28))){
    
		 print (HTMLFILE "<td align=center>".print_ip_routen_pos(2,1)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_ip_routen_pos(2,2)."</td>\n");  
		 print (HTMLFILE "<td align=center>".print_ip_routen_pos(2,3)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_ip_routen_pos(2,4)."</td>\n");     
		 print (HTMLFILE "<td align=center>".print_ip_routen_pos(2,5)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_ip_routen_pos(2,6)."</td>\n");    
	}		
 else  {
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_ip_routen_pos(2,1)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_ip_routen_pos(2,2)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_ip_routen_pos(2,3)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_ip_routen_pos(2,4)."</td>\n");     
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_ip_routen_pos(2,5)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_ip_routen_pos(2,6)."</td>\n");     
		 
	   }
 
	}
 print (HTMLFILE "</td>\n");
 print (HTMLFILE "</tr>\n");
} 
                    
print (HTMLFILE "</table>\n"); 

##################################RTRV-NTP-CONF 
print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=11 align=center bgcolor=#EEEEEE><b>RTRV-NTP-CONF</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>SVR_TYPE</th><th align=center>NTP_IPV4</th></tr>\n");  
  
parse_ntp_conf_get ();

my $row=0;
my $col=0;

  
for ($row=0; $row<get_size_ntp_conf_arr();$row = $row + 1) {  
        #PRIMARY_NTP_SERVER	IPV4	112.255.255.252   ::
		#SECONDARY_NTP_SERVER	IPV4	112.255.255.253   ::

	if ($row == 0){
     if ((print_ntp_conf_pos($row,1) eq "PRIMARY_NTP_SERVER") && (print_ntp_conf_pos($row,2) eq "IPV4") && (print_ntp_conf_pos($row,3) eq "112.255.255.252   ::")) {
		 print (HTMLFILE "<td align=center>".print_ntp_conf_pos(0,1)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_ntp_conf_pos(0,2)."</td>\n");  
		 print (HTMLFILE "<td align=center>".print_ntp_conf_pos(0,3)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_ntp_conf_pos(0,4)."</td>\n");     
		 
     } else {
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_ntp_conf_pos(0,1)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_ntp_conf_pos(0,2)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_ntp_conf_pos(0,3)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_ntp_conf_pos(0,4)."</td>\n");     
		 
	 }   
    }   
	
	if ($row == 1) {
	   if ((print_ntp_conf_pos($row,1) eq "SECONDARY_NTP_SERVER") && (print_ntp_conf_pos($row,2) eq "IPV4") && (print_ntp_conf_pos($row,3) eq "112.255.255.253   ::")){
		
		 print (HTMLFILE "<td align=center>".print_ntp_conf_pos(1,1)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_ntp_conf_pos(1,2)."</td>\n");  
		 print (HTMLFILE "<td align=center>".print_ntp_conf_pos(1,3)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_ntp_conf_pos(1,4)."</td>\n");     
		}
	 else {
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_ntp_conf_pos(1,1)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_ntp_conf_pos(1,2)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_ntp_conf_pos(1,3)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_ntp_conf_pos(1,4)."</td>\n");     
		 }    
	} 
 print (HTMLFILE "</td>\n");
 print (HTMLFILE "</tr>\n");
} 
                    
print (HTMLFILE "</table>\n");      

####################################################      

###################RTRV-CELL-IDLE
print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=15 align=center bgcolor=#EEEEEE><b>CELL-IDLE</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>CELL_NUM</th><th align=center>PHY_CELL_ID</th><th align=center>DUPLEX_TYPE</th><th align=center>DL_ANT_COUNT</th><th align=center>UL_ANT_COUNT</th><th align=center>EARFCN_DL</th><th align=center>EARFCN_UL</th><th align = center>DL_BANDWIDTH</th><th align=center>UL_BANDWIDTH</th><th align=center>	FREQUENCY_BAND_INDICATOR</th><th align=center>	SUBFRAME_ASSIGNMENT</th><th align=center>SPECIAL_SUBFRAME_PATTERNS</th><th align=center>FORCED_MODE</th><th align=center>DL_CRS_PORT_COUNT</th><th align=center>PCI_ALLOC_STATUS </th></tr>\n");                  
					
parse_cell_idlen_get ();

for ($row=0; $row<get_size_cell_idle_arr();$row = $row + 1) {  
    print (HTMLFILE "<tr>\n");
	if ((print_cell_idlen_pos($row,1) == 0)) {
		if ((print_cell_idlen_pos(0,3) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21)) 
&& (print_cell_idlen_pos(0,5) eq ret_vendor_ciq_info2($cascade,$eNBName,0,33)) 
&& (print_cell_idlen_pos(0,7) eq ret_vendor_ciq_info2($cascade,$eNBName,0,3)) 
&& (print_cell_idlen_pos(0,8) eq ret_vendor_ciq_info2($cascade,$eNBName,0,36))
&& (print_cell_idlen_pos(0,9) eq ret_vendor_ciq_info2($cascade,$eNBName,0,37))
&& (print_cell_idlen_pos(0,10) eq ret_vendor_ciq_info2($cascade,$eNBName,0,39))
&& (print_cell_idlen_pos(0,11) eq ret_vendor_ciq_info2($cascade,$eNBName,0,40))
&& (print_cell_idlen_pos(0,12) eq ret_vendor_ciq_info2($cascade,$eNBName,1,25))
&& (print_cell_idlen_pos(0,13)  eq ret_vendor_ciq_info2($cascade,$eNBName,1,25))
&& (print_cell_idlen_pos(0,14) eq ret_vendor_ciq_info2($cascade,$eNBName,1,28))
&& (print_cell_idlen_pos(0,15) eq "subframeAssignment_2")
&& (print_cell_idlen_pos(0,16) eq "specialSubframePattern_7" )
&& (print_cell_idlen_pos(0,17) eq "FALSE")
&& (print_cell_idlen_pos(0,18) eq "Two")
&& (print_cell_idlen_pos(0,19) eq "realAlloc")) {
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(0,1)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(0,3)."</td>\n");
   	     print (HTMLFILE "<td align=center>".print_cell_idlen_pos(0,5)."</td>\n");  
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(0,7)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(0,8)."</td>\n");     
	     print (HTMLFILE "<td align=center>".print_cell_idlen_pos(0,9)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(0,10)."</td>\n");    
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(0,11)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(0,12)."</td>\n");     
		#print (HTMLFILE "<td align=center>".print_cell_idlen_pos(0,13)."</td>\n");    
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(0,14)."</td>\n");           		 
   		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(0,15)."</td>\n");           		 
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(0,16)."</td>\n");           		 
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(0,17)."</td>\n");           		 
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(0,18)."</td>\n");           		 
		 
} else {
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(0,1)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(0,3)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(0,5)."</td>\n");  
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(0,6)."</td>\n");  
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(0,7)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(0,8)."</td>\n");     
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(0,9)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(0,10)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(0,11)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(0,12)."</td>\n");     
    	#print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(0,13)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(0,14)."</td>\n");           		 
   		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(0,15)."</td>\n");           		 
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(0,16)."</td>\n");           		 
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(0,17)."</td>\n");           		 
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(0,18)."</td>\n");           		 
		 
	}
  }
if ((print_cell_idlen_pos($row,1) == 1)) {
if ((print_cell_idlen_pos(1,3) eq ret_vendor_ciq_info2($cascade,$eNBName,1,21))
&& (print_cell_idlen_pos(1,5) eq ret_vendor_ciq_info2($cascade,$eNBName,1,3)) 
&& (print_cell_idlen_pos(1,7) eq ret_vendor_ciq_info2($cascade,$eNBName,1,33)) 
&& (print_cell_idlen_pos(1,8) eq ret_vendor_ciq_info2($cascade,$eNBName,1,36))
&& (print_cell_idlen_pos(1,9) eq ret_vendor_ciq_info2($cascade,$eNBName,1,37))
&& (print_cell_idlen_pos(1,10) eq ret_vendor_ciq_info2($cascade,$eNBName,1,39))
&& (print_cell_idlen_pos(1,11) eq ret_vendor_ciq_info2($cascade,$eNBName,1,40))
&& (print_cell_idlen_pos(1,12) eq ret_vendor_ciq_info2($cascade,$eNBName,1,25))
&& (print_cell_idlen_pos(1,13) eq ret_vendor_ciq_info2($cascade,$eNBName,1,25))
&& (print_cell_idlen_pos(1,14) eq ret_vendor_ciq_info2($cascade,$eNBName,1,28))
&& (print_cell_idlen_pos(1,15) eq "subframeAssignment_2")
&& (print_cell_idlen_pos(1,16) eq "specialSubframePattern_7" )
&& (print_cell_idlen_pos(1,17) eq "FALSE")
&& (print_cell_idlen_pos(1,18) eq "Two")
&& (print_cell_idlen_pos(1,19) eq "realAlloc")) {
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(1,1)."</td>\n");
	 	 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(1,3)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(1,5)."</td>\n");  
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(1,6)."</td>\n");  
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(1,7)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(1,8)."</td>\n");     
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(1,9)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(1,10)."</td>\n");    
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(1,11)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(1,12)."</td>\n");     
		 #print (HTMLFILE "<td align=center>".print_cell_idlen_pos(1,13)."</td>\n");    
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(1,14)."</td>\n");           		 
   		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(1,15)."</td>\n");           		 
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(1,16)."</td>\n");           		 
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(1,17)."</td>\n");           		 
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(1,18)."</td>\n");           		 
		 #print (HTMLFILE "<td align=center>".print_cell_idlen_pos(1,19)."</td>\n");           		 
} else {
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(1,1)."</td>\n");
 		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(1,3)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(1,5)."</td>\n");  
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(1,6)."</td>\n");  
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(1,7)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(1,8)."</td>\n");     
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(1,9)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(1,10)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(1,11)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(1,12)."</td>\n");     
#		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(1,13)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(1,14)."</td>\n");           		 
   		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(1,15)."</td>\n");           		 
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(1,16)."</td>\n");           		 
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(1,17)."</td>\n");           		 
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(1,18)."</td>\n");           		 
		 #print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(1,19)."</td>\n");           		 

	}
}

if ((print_cell_idlen_pos($row,1) == 3)) {
 if ((print_cell_idlen_pos(2,3) eq ret_vendor_ciq_info2($cascade,$eNBName,2,21)) 
&& (print_cell_idlen_pos(2,5) eq ret_vendor_ciq_info2($cascade,$eNBName,2,3)) 
&& (print_cell_idlen_pos(2,7) eq ret_vendor_ciq_info2($cascade,$eNBName,2,33)) 
&& (print_cell_idlen_pos(2,8) eq ret_vendor_ciq_info2($cascade,$eNBName,2,36))
&& (print_cell_idlen_pos(2,9) eq ret_vendor_ciq_info2($cascade,$eNBName,2,37))
&& (print_cell_idlen_pos(2,10) eq ret_vendor_ciq_info2($cascade,$eNBName,2,39))
&& (print_cell_idlen_pos(2,11) eq ret_vendor_ciq_info2($cascade,$eNBName,2,40))
&& (print_cell_idlen_pos(2,12) eq ret_vendor_ciq_info2($cascade,$eNBName,2,25))
&& (print_cell_idlen_pos(2,13) eq ret_vendor_ciq_info2($cascade,$eNBName,2,25))
&& (print_cell_idlen_pos(2,14) eq ret_vendor_ciq_info2($cascade,$eNBName,2,28))
&& (print_cell_idlen_pos(2,15) eq "subframeAssignment_2")
&& (print_cell_idlen_pos(2,16) eq "specialSubframePattern_7" )
&& (print_cell_idlen_pos(2,17) eq "FALSE")
&& (print_cell_idlen_pos(2,18) eq "Two")
&& (print_cell_idlen_pos(2,19) eq "realAlloc")) {
	 	 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(2,1)."</td>\n");
	 	 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(2,3)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(2,5)."</td>\n");  
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(2,6)."</td>\n");  
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(2,7)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(2,8)."</td>\n");     
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(2,9)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(2,10)."</td>\n");    
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(2,11)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(2,12)."</td>\n");     
#		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(2,13)."</td>\n");    
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(2,14)."</td>\n");           		 
   		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(2,15)."</td>\n");           		 
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(2,16)."</td>\n");           		 
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(2,17)."</td>\n");           		 
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(2,18)."</td>\n");           		 
#		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(2,19)."</td>\n");           		 
} else {
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(2,1)."</td>\n");
	 	 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(2,3)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(2,5)."</td>\n");  
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(2,6)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(2,7)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(2,8)."</td>\n");     
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(2,9)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(2,10)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(2,11)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(2,12)."</td>\n");     
#		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(2,13)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(2,14)."</td>\n");           		 
   		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(2,15)."</td>\n");           		 
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(2,16)."</td>\n");           		 
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(2,17)."</td>\n");           		 
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(2,18)."</td>\n");           		 
#		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(2,19)."</td>\n");           		 
	}
}

if ((print_cell_idlen_pos($row,1) == 4)) {
 if ((print_cell_idlen_pos(3,3) eq ret_vendor_ciq_info2($cascade,$eNBName,3,21)) 
&& (print_cell_idlen_pos(3,5) eq ret_vendor_ciq_info2($cascade,$eNBName,3,3)) 
&& (print_cell_idlen_pos(3,7) eq ret_vendor_ciq_info2($cascade,$eNBName,3,33)) 
&& (print_cell_idlen_pos(3,8) eq ret_vendor_ciq_info2($cascade,$eNBName,3,36))
&& (print_cell_idlen_pos(3,9) eq ret_vendor_ciq_info2($cascade,$eNBName,3,37))
&& (print_cell_idlen_pos(3,10) eq ret_vendor_ciq_info2($cascade,$eNBName,3,39))
&& (print_cell_idlen_pos(3,11) eq ret_vendor_ciq_info2($cascade,$eNBName,3,40))
&& (print_cell_idlen_pos(3,12) eq ret_vendor_ciq_info2($cascade,$eNBName,3,25))
&& (print_cell_idlen_pos(3,13) eq ret_vendor_ciq_info2($cascade,$eNBName,3,25))
&& (print_cell_idlen_pos(3,14) eq ret_vendor_ciq_info2($cascade,$eNBName,3,28))
&& (print_cell_idlen_pos(3,15) eq "subframeAssignment_2")
&& (print_cell_idlen_pos(3,16) eq "specialSubframePattern_7" )
&& (print_cell_idlen_pos(3,17) eq "FALSE")
&& (print_cell_idlen_pos(3,18) eq "Two")
&& (print_cell_idlen_pos(3,19) eq "realAlloc")) {
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(3,1)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(3,3)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(3,5)."</td>\n");  
 		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(3,6)."</td>\n");  
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(3,7)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(3,8)."</td>\n");     
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(3,9)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(3,10)."</td>\n");    
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(3,11)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(3,12)."</td>\n");     
#		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(3,13)."</td>\n");    
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(3,14)."</td>\n");           		 
   		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(3,15)."</td>\n");           		 
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(3,16)."</td>\n");           		 
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(3,17)."</td>\n");           		 
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(3,18)."</td>\n");           		 
  
} else {
 		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(3,1)."</td>\n");
 		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(3,3)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(3,5)."</td>\n");  
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(3,6)."</td>\n");  
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(3,7)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(3,8)."</td>\n");     
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(3,9)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(3,10)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(3,11)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(3,12)."</td>\n");     
#		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(3,13)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(3,14)."</td>\n");           		 
   		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(3,15)."</td>\n");           		 
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(3,16)."</td>\n");           		 
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(3,17)."</td>\n");           		 
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(3,18)."</td>\n");           		 

	}
}

if ((print_cell_idlen_pos($row,1) == 5)) {
 if ((print_cell_idlen_pos(4,3) eq ret_vendor_ciq_info2($cascade,$eNBName,4,21)) 
&& (print_cell_idlen_pos(4,5) eq ret_vendor_ciq_info2($cascade,$eNBName,4,3)) 
&& (print_cell_idlen_pos(4,7) eq ret_vendor_ciq_info2($cascade,$eNBName,4,33)) 
&& (print_cell_idlen_pos(4,8) eq ret_vendor_ciq_info2($cascade,$eNBName,4,36))
&& (print_cell_idlen_pos(4,9) eq ret_vendor_ciq_info2($cascade,$eNBName,4,37))
&& (print_cell_idlen_pos(4,10) eq ret_vendor_ciq_info2($cascade,$eNBName,4,39))
&& (print_cell_idlen_pos(4,11) eq ret_vendor_ciq_info2($cascade,$eNBName,4,40))
&& (print_cell_idlen_pos(4,12) eq ret_vendor_ciq_info2($cascade,$eNBName,4,25))
&& (print_cell_idlen_pos(4,13) eq ret_vendor_ciq_info2($cascade,$eNBName,4,25))
&& (print_cell_idlen_pos(4,14) eq ret_vendor_ciq_info2($cascade,$eNBName,4,28))
&& (print_cell_idlen_pos(4,15) eq "subframeAssignment_2")
&& (print_cell_idlen_pos(4,16) eq "specialSubframePattern_7" )
&& (print_cell_idlen_pos(4,17) eq "FALSE")
&& (print_cell_idlen_pos(4,18) eq "Two")
&& (print_cell_idlen_pos(4,19) eq "realAlloc")) {
		print (HTMLFILE "<td  align=center>".print_cell_idlen_pos(4,1)."</td>\n");
		print (HTMLFILE "<td  align=center>".print_cell_idlen_pos(4,3)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(4,5)."</td>\n"); 
 		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(4,6)."</td>\n");   
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(4,7)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(4,8)."</td>\n");     
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(4,9)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(4,10)."</td>\n");    
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(4,11)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(4,12)."</td>\n");     
		 #print (HTMLFILE "<td align=center>".print_cell_idlen_pos(4,13)."</td>\n");    
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(4,14)."</td>\n");           		 
   		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(4,15)."</td>\n");           		 
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(4,16)."</td>\n");           		 
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(4,17)."</td>\n");           		 
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(4,18)."</td>\n");           		 
		 #print (HTMLFILE "<td align=center>".print_cell_idlen_pos(4,19)."</td>\n");           		 
} else {
		print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(4,1)."</td>\n");
 		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(4,3)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(4,5)."</td>\n");  
 		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(4,6)."</td>\n");  
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(4,7)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(4,8)."</td>\n");     
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(4,9)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(4,10)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(4,11)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(4,12)."</td>\n");     
#		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(4,13)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(4,14)."</td>\n");           		 
   		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(4,15)."</td>\n");           		 
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(4,16)."</td>\n");           		 
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(4,17)."</td>\n");           		 
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(4,18)."</td>\n");           		 
#		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(4,19)."</td>\n");        
   		 }
}

if ((print_cell_idlen_pos(5,1) == 6)) {
 if ((print_cell_idlen_pos(5,3) eq ret_vendor_ciq_info2($cascade,$eNBName,5,21)) 
&& (print_cell_idlen_pos(5,5) eq ret_vendor_ciq_info2($cascade,$eNBName,5,3)) 
&& (print_cell_idlen_pos(5,7) eq ret_vendor_ciq_info2($cascade,$eNBName,5,33)) 
&& (print_cell_idlen_pos(5,8) eq ret_vendor_ciq_info2($cascade,$eNBName,5,36))
&& (print_cell_idlen_pos(5,9) eq ret_vendor_ciq_info2($cascade,$eNBName,5,37))
&& (print_cell_idlen_pos(5,10) eq ret_vendor_ciq_info2($cascade,$eNBName,5,39))
&& (print_cell_idlen_pos(5,11) eq ret_vendor_ciq_info2($cascade,$eNBName,5,40))
&& (print_cell_idlen_pos(5,12) eq ret_vendor_ciq_info2($cascade,$eNBName,5,25))
&& (print_cell_idlen_pos(5,13) eq ret_vendor_ciq_info2($cascade,$eNBName,5,25))
&& (print_cell_idlen_pos(5,14) eq ret_vendor_ciq_info2($cascade,$eNBName,5,28))
&& (print_cell_idlen_pos(5,15) eq "subframeAssignment_2")
&& (print_cell_idlen_pos(5,16) eq "specialSubframePattern_7" )
&& (print_cell_idlen_pos(5,17) eq "FALSE")
&& (print_cell_idlen_pos(5,18) eq "Two")
&& (print_cell_idlen_pos(5,19) eq "realAlloc")) {
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(5,1)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(5,3)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(5,5)."</td>\n");  
 		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(5,6)."</td>\n");  
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(5,7)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(5,8)."</td>\n");     
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(5,9)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(5,10)."</td>\n");    
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(5,11)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(5,12)."</td>\n");     
		 #print (HTMLFILE "<td align=center>".print_cell_idlen_pos(5,13)."</td>\n");    
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(5,14)."</td>\n");           		 
   		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(5,15)."</td>\n");           		 
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(5,16)."</td>\n");           		 
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(5,17)."</td>\n");           		 
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(5,18)."</td>\n");           		 
		 #print (HTMLFILE "<td align=center>".print_cell_idlen_pos(5,19)."</td>\n");           		 
} else {
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(5,1)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(5,3)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(5,5)."</td>\n");  
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(5,6)."</td>\n");  
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(5,7)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(5,8)."</td>\n");     
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(5,9)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(5,10)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(5,11)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(5,12)."</td>\n");     
		 #print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(5,13)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(5,14)."</td>\n");           		 
   		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(5,15)."</td>\n");           		 
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(5,16)."</td>\n");           		 
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(5,17)."</td>\n");           		 
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(5,18)."</td>\n");           		 
		 #print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(5,19)."</td>\n");           		 
	}
}

if ((print_cell_idlen_pos($row,1) == 7)) {
 if ((print_cell_idlen_pos(6,3) eq ret_vendor_ciq_info2($cascade,$eNBName,6,21)) 
&& (print_cell_idlen_pos(6,5) eq ret_vendor_ciq_info2($cascade,$eNBName,6,3)) 
&& (print_cell_idlen_pos(6,7) eq ret_vendor_ciq_info2($cascade,$eNBName,6,33)) 
&& (print_cell_idlen_pos(6,8) eq ret_vendor_ciq_info2($cascade,$eNBName,6,36))
&& (print_cell_idlen_pos(6,9) eq ret_vendor_ciq_info2($cascade,$eNBName,6,37))
&& (print_cell_idlen_pos(6,10) eq ret_vendor_ciq_info2($cascade,$eNBName,6,39))
&& (print_cell_idlen_pos(6,11) eq ret_vendor_ciq_info2($cascade,$eNBName,6,40))
&& (print_cell_idlen_pos(6,12) eq ret_vendor_ciq_info2($cascade,$eNBName,6,25))
&& (print_cell_idlen_pos(6,13) eq ret_vendor_ciq_info2($cascade,$eNBName,6,25))
&& (print_cell_idlen_pos(6,14) eq ret_vendor_ciq_info2($cascade,$eNBName,6,28))
&& (print_cell_idlen_pos(6,15) eq "subframeAssignment_2")
&& (print_cell_idlen_pos(6,16) eq "specialSubframePattern_7" )
&& (print_cell_idlen_pos(6,17) eq "FALSE")
&& (print_cell_idlen_pos(6,18) eq "Two")
&& (print_cell_idlen_pos(6,19) eq "realAlloc")) {
 		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(6,1)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(6,3)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(6,5)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(6,6)."</td>\n");  
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(6,7)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(6,8)."</td>\n");     
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(6,9)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(6,10)."</td>\n");    
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(6,11)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(6,12)."</td>\n");     
		 #print (HTMLFILE "<td align=center>".print_cell_idlen_pos(6,13)."</td>\n");    
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(6,14)."</td>\n");           		 
   		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(6,15)."</td>\n");           		 
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(6,16)."</td>\n");           		 
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(6,17)."</td>\n");           		 
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(6,18)."</td>\n");           		 
#		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(6,19)."</td>\n");           		 

	} else {
		print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(6,1)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(6,3)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(6,5)."</td>\n");  
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(6,6)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(6,7)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(6,8)."</td>\n");     
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(6,9)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(6,10)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(6,11)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(6,12)."</td>\n");     
		 #print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(6,13)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(6,14)."</td>\n");           		 
   		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(6,15)."</td>\n");           		 
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(6,16)."</td>\n");           		 
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(6,17)."</td>\n");           		 
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(6,18)."</td>\n");           		 
		 #print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(6,19)."</td>\n");           		 

	}
}

if ((print_cell_idlen_pos($row,1) == 8)) {
 if ((print_cell_idlen_pos(7,3) eq ret_vendor_ciq_info2($cascade,$eNBName,7,21)) 
&& (print_cell_idlen_pos(7,5) eq ret_vendor_ciq_info2($cascade,$eNBName,7,3)) 
&& (print_cell_idlen_pos(7,7) eq ret_vendor_ciq_info2($cascade,$eNBName,7,33)) 
&& (print_cell_idlen_pos(7,8) eq ret_vendor_ciq_info2($cascade,$eNBName,7,36))
&& (print_cell_idlen_pos(7,9) eq ret_vendor_ciq_info2($cascade,$eNBName,7,37))
&& (print_cell_idlen_pos(7,10) eq ret_vendor_ciq_info2($cascade,$eNBName,7,39))
&& (print_cell_idlen_pos(7,11) eq ret_vendor_ciq_info2($cascade,$eNBName,7,40))
&& (print_cell_idlen_pos(7,12) eq ret_vendor_ciq_info2($cascade,$eNBName,7,25))
&& (print_cell_idlen_pos(7,13) eq ret_vendor_ciq_info2($cascade,$eNBName,7,25))
&& (print_cell_idlen_pos(7,14) eq ret_vendor_ciq_info2($cascade,$eNBName,7,28))
&& (print_cell_idlen_pos(7,15) eq "subframeAssignment_2")
&& (print_cell_idlen_pos(7,16) eq "specialSubframePattern_7" )
&& (print_cell_idlen_pos(7,17) eq "FALSE")
&& (print_cell_idlen_pos(7,18) eq "Two")
&& (print_cell_idlen_pos(7,19) eq "realAlloc")) {
 		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(7,1)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(7,3)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(7,5)."</td>\n");  
 		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(7,6)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(7,7)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(7,8)."</td>\n");     
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(7,9)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(7,10)."</td>\n");    
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(7,11)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(7,12)."</td>\n");     
		 #print (HTMLFILE "<td align=center>".print_cell_idlen_pos(7,13)."</td>\n");    
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(7,14)."</td>\n");           		 
   		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(7,15)."</td>\n");           		 
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(7,16)."</td>\n");           		 
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(7,17)."</td>\n");           		 
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(7,18)."</td>\n");           		 

} else {
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(7,1)."</td>\n");
 		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(7,3)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(7,5)."</td>\n");  
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(7,6)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(7,7)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(7,8)."</td>\n");     
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(7,9)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(7,10)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(7,11)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(7,12)."</td>\n");     
#		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(7,13)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(7,14)."</td>\n");           		 
   		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(7,15)."</td>\n");           		 
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(7,16)."</td>\n");           		 
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(7,17)."</td>\n");           		 
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(7,18)."</td>\n");           		 

	}
}

if ((print_cell_idlen_pos($row,1) == 9)) {
 if ((print_cell_idlen_pos(8,3) eq ret_vendor_ciq_info2($cascade,$eNBName,8,21)) 
&& (print_cell_idlen_pos(8,5) eq ret_vendor_ciq_info2($cascade,$eNBName,8,3)) 
&& (print_cell_idlen_pos(8,7) eq ret_vendor_ciq_info2($cascade,$eNBName,8,33)) 
&& (print_cell_idlen_pos(8,8) eq ret_vendor_ciq_info2($cascade,$eNBName,8,36))
&& (print_cell_idlen_pos(8,9) eq ret_vendor_ciq_info2($cascade,$eNBName,8,37))
&& (print_cell_idlen_pos(8,10) eq ret_vendor_ciq_info2($cascade,$eNBName,8,39))
&& (print_cell_idlen_pos(8,11) eq ret_vendor_ciq_info2($cascade,$eNBName,8,40))
&& (print_cell_idlen_pos(8,12) eq ret_vendor_ciq_info2($cascade,$eNBName,8,25))
&& (print_cell_idlen_pos(8,13) eq ret_vendor_ciq_info2($cascade,$eNBName,8,25))
&& (print_cell_idlen_pos(8,14) eq ret_vendor_ciq_info2($cascade,$eNBName,8,28))
&& (print_cell_idlen_pos(8,15) eq "subframeAssignment_2")
&& (print_cell_idlen_pos(8,16) eq "specialSubframePattern_7" )
&& (print_cell_idlen_pos(8,17) eq "FALSE")
&& (print_cell_idlen_pos(8,18) eq "Two")
&& (print_cell_idlen_pos(8,19) eq "realAlloc")) {
	 	 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(8,1)."</td>\n");	
 		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(8,3)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(8,5)."</td>\n");  
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(8,6)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(8,7)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(8,8)."</td>\n");     
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(8,9)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(8,10)."</td>\n");    
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(8,11)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(8,12)."</td>\n");     
#		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(8,13)."</td>\n");    
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(8,14)."</td>\n");           		 
   		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(8,15)."</td>\n");           		 
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(8,16)."</td>\n");           		 
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(8,17)."</td>\n");           		 
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(8,18)."</td>\n");           		 
#		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(8,19)."</td>\n");           		 

} else {
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(8,1)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(8,3)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(8,5)."</td>\n");  
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(8,6)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(8,7)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(8,8)."</td>\n");     
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(8,9)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(8,10)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(8,11)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000  align=center>".print_cell_idlen_pos(8,12)."</td>\n");     
#		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(8,13)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(8,14)."</td>\n");           		 
   		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(8,15)."</td>\n");           		 
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(8,16)."</td>\n");           		 
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(8,17)."</td>\n");           		 
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(8,18)."</td>\n");           		 
#		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(8,19)."</td>\n");           		 
	}
}

if ((print_cell_idlen_pos($row,1) == 10)) {
 if ((print_cell_idlen_pos(9,3) eq ret_vendor_ciq_info2($cascade,$eNBName,9,21)) 
&& (print_cell_idlen_pos(9,5) eq ret_vendor_ciq_info2($cascade,$eNBName,9,3)) 
&& (print_cell_idlen_pos(9,7) eq ret_vendor_ciq_info2($cascade,$eNBName,9,33)) 
&& (print_cell_idlen_pos(9,8) eq ret_vendor_ciq_info2($cascade,$eNBName,9,36))
&& (print_cell_idlen_pos(9,9) eq ret_vendor_ciq_info2($cascade,$eNBName,9,37))
&& (print_cell_idlen_pos(9,10) eq ret_vendor_ciq_info2($cascade,$eNBName,9,39))
&& (print_cell_idlen_pos(9,11) eq ret_vendor_ciq_info2($cascade,$eNBName,9,40))
&& (print_cell_idlen_pos(9,12) eq ret_vendor_ciq_info2($cascade,$eNBName,9,25))
&& (print_cell_idlen_pos(9,13) eq ret_vendor_ciq_info2($cascade,$eNBName,9,25))
&& (print_cell_idlen_pos(9,14) eq ret_vendor_ciq_info2($cascade,$eNBName,9,28))
&& (print_cell_idlen_pos(9,15) eq "subframeAssignment_2")
&& (print_cell_idlen_pos(9,16) eq "specialSubframePattern_7" )
&& (print_cell_idlen_pos(9,17) eq "FALSE")
&& (print_cell_idlen_pos(9,18) eq "Two")
&& (print_cell_idlen_pos(9,19) eq "realAlloc")) {
		print (HTMLFILE "<td align=center>".print_cell_idlen_pos(9,1)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(9,3)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(9,5)."</td>\n");  
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(9,6)."</td>\n");  
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(9,7)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(9,8)."</td>\n");     
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(9,9)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(9,10)."</td>\n");    
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(9,11)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(9,12)."</td>\n");     
		# print (HTMLFILE "<td align=center>".print_cell_idlen_pos(9,13)."</td>\n");    
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(9,14)."</td>\n");           		 
   		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(9,15)."</td>\n");           		 
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(9,16)."</td>\n");           		 
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(9,17)."</td>\n");           		 
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(9,18)."</td>\n");           		 

} else {
 		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(9,1)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(9,3)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(9,5)."</td>\n");  
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(9,6)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(9,7)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(9,8)."</td>\n");     
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(9,9)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(9,10)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(9,11)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(9,12)."</td>\n");     
		 #print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(9,13)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(9,14)."</td>\n");           		 
   		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(9,15)."</td>\n");           		 
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(9,16)."</td>\n");           		 
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(9,17)."</td>\n");           		 
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(9,18)."</td>\n");           		 
		 #print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(9,19)."</td>\n");           		 
	}
}

if ((print_cell_idlen_pos($row,1) == 12)) {
 if ((print_cell_idlen_pos(10,3) eq ret_vendor_ciq_info2($cascade,$eNBName,10,21)) 
&& (print_cell_idlen_pos(10,5) eq ret_vendor_ciq_info2($cascade,$eNBName,10,3)) 
&& (print_cell_idlen_pos(10,7) eq ret_vendor_ciq_info2($cascade,$eNBName,10,33)) 
&& (print_cell_idlen_pos(10,8) eq ret_vendor_ciq_info2($cascade,$eNBName,10,36))
&& (print_cell_idlen_pos(10,9) eq ret_vendor_ciq_info2($cascade,$eNBName,10,37))
&& (print_cell_idlen_pos(10,10) eq ret_vendor_ciq_info2($cascade,$eNBName,10,39))
&& (print_cell_idlen_pos(10,11) eq ret_vendor_ciq_info2($cascade,$eNBName,10,40))
&& (print_cell_idlen_pos(10,12) eq ret_vendor_ciq_info2($cascade,$eNBName,10,25))
&& (print_cell_idlen_pos(10,13) eq ret_vendor_ciq_info2($cascade,$eNBName,10,25))
&& (print_cell_idlen_pos(10,14) eq ret_vendor_ciq_info2($cascade,$eNBName,10,28))
&& (print_cell_idlen_pos(10,15) eq "subframeAssignment_2")
&& (print_cell_idlen_pos(10,16) eq "specialSubframePattern_7" )
&& (print_cell_idlen_pos(10,17) eq "FALSE")
&& (print_cell_idlen_pos(10,18) eq "Two")
&& (print_cell_idlen_pos(10,19) eq "realAlloc")) {
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(10,1)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(10,3)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(10,5)."</td>\n");  
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(10,6)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(10,7)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(10,8)."</td>\n");     
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(10,9)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(10,10)."</td>\n");    
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(10,11)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(10,12)."</td>\n");     
		 #print (HTMLFILE "<td align=center>".print_cell_idlen_pos(10,13)."</td>\n");    
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(10,14)."</td>\n");           		 
   		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(10,15)."</td>\n");           		 
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(10,16)."</td>\n");           		 
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(10,17)."</td>\n");           		 
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(10,18)."</td>\n");           		 
#		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(10,19)."</td>\n");           		 

} else {
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(10,1)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(10,3)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(10,5)."</td>\n");  
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(10,6)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(10,7)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(10,8)."</td>\n");     
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(10,9)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(10,10)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(10,11)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(10,12)."</td>\n");     
		 #print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(10,13)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(10,14)."</td>\n");           		 
   		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(10,15)."</td>\n");           		 
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(10,16)."</td>\n");           		 
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(10,17)."</td>\n");           		 
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(10,18)."</td>\n");           		 
		 #print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(10,19)."</td>\n");           		 
	}
}


if ((print_cell_idlen_pos($row,1) == 13)) {
 if ((print_cell_idlen_pos(11,3) eq ret_vendor_ciq_info2($cascade,$eNBName,11,21)) 
&& (print_cell_idlen_pos(11,5) eq ret_vendor_ciq_info2($cascade,$eNBName,11,3)) 
&& (print_cell_idlen_pos(11,7) eq ret_vendor_ciq_info2($cascade,$eNBName,11,33)) 
&& (print_cell_idlen_pos(11,8) eq ret_vendor_ciq_info2($cascade,$eNBName,11,36))
&& (print_cell_idlen_pos(11,9) eq ret_vendor_ciq_info2($cascade,$eNBName,11,37))
&& (print_cell_idlen_pos(11,10) eq ret_vendor_ciq_info2($cascade,$eNBName,11,39))
&& (print_cell_idlen_pos(11,11) eq ret_vendor_ciq_info2($cascade,$eNBName,11,40))
&& (print_cell_idlen_pos(11,12) eq ret_vendor_ciq_info2($cascade,$eNBName,11,25))
&& (print_cell_idlen_pos(11,13) eq ret_vendor_ciq_info2($cascade,$eNBName,11,25))
&& (print_cell_idlen_pos(11,14) eq ret_vendor_ciq_info2($cascade,$eNBName,11,28))
&& (print_cell_idlen_pos(11,15) eq "subframeAssignment_2")
&& (print_cell_idlen_pos(11,16) eq "specialSubframePattern_7" )
&& (print_cell_idlen_pos(11,17) eq "FALSE")
&& (print_cell_idlen_pos(11,18) eq "Two")
&& (print_cell_idlen_pos(11,19) eq "realAlloc")) {
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(11,1)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(11,3)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(11,5)."</td>\n");  
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(11,6)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(11,7)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(11,8)."</td>\n");     
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(11,9)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(11,10)."</td>\n");    
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(11,11)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(11,12)."</td>\n");     
		 #print (HTMLFILE "<td align=center>".print_cell_idlen_pos(11,13)."</td>\n");    
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(11,14)."</td>\n");           		 
   		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(11,15)."</td>\n");           		 
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(11,16)."</td>\n");           		 
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(11,17)."</td>\n");           		 
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(11,18)."</td>\n");           		 
		 #print (HTMLFILE "<td align=center>".print_cell_idlen_pos(11,19)."</td>\n");  	
} else {
		print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(11,1)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(11,3)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(11,5)."</td>\n");  
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(11,6)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(11,7)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(11,8)."</td>\n");     
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(11,9)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(11,10)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(11,11)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(11,12)."</td>\n");     
		 #print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(11,13)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(11,14)."</td>\n");           		 
   		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(11,15)."</td>\n");           		 
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(11,16)."</td>\n");           		 
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(11,17)."</td>\n");           		 
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(11,18)."</td>\n");           		 
		 #print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(11,19)."</td>\n");  		
	}
}

if ((print_cell_idlen_pos($row,1) == 14)) {
 if ((print_cell_idlen_pos(12,3) eq ret_vendor_ciq_info2($cascade,$eNBName,12,21)) 
&& (print_cell_idlen_pos(12,5) eq ret_vendor_ciq_info2($cascade,$eNBName,12,3)) 
&& (print_cell_idlen_pos(12,7) eq ret_vendor_ciq_info2($cascade,$eNBName,12,33)) 
&& (print_cell_idlen_pos(12,8) eq ret_vendor_ciq_info2($cascade,$eNBName,12,36))
&& (print_cell_idlen_pos(12,9) eq ret_vendor_ciq_info2($cascade,$eNBName,12,37))
&& (print_cell_idlen_pos(12,10) eq ret_vendor_ciq_info2($cascade,$eNBName,12,39))
&& (print_cell_idlen_pos(12,11) eq ret_vendor_ciq_info2($cascade,$eNBName,12,40))
&& (print_cell_idlen_pos(12,12) eq ret_vendor_ciq_info2($cascade,$eNBName,12,25))
&& (print_cell_idlen_pos(12,13) eq ret_vendor_ciq_info2($cascade,$eNBName,12,25))
&& (print_cell_idlen_pos(12,14) eq ret_vendor_ciq_info2($cascade,$eNBName,12,28))
&& (print_cell_idlen_pos(12,15) eq "subframeAssignment_2")
&& (print_cell_idlen_pos(12,16) eq "specialSubframePattern_7" )
&& (print_cell_idlen_pos(12,17) eq "FALSE")
&& (print_cell_idlen_pos(12,18) eq "Two")
&& (print_cell_idlen_pos(12,19) eq "realAlloc")) {
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(12,1)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(12,3)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(12,5)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(12,6)."</td>\n");  
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(12,7)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(12,8)."</td>\n");     
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(12,9)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(12,10)."</td>\n");    
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(12,11)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(12,12)."</td>\n");     
		 #print (HTMLFILE "<td align=center>".print_cell_idlen_pos(12,13)."</td>\n");    
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(12,14)."</td>\n");           		 
   		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(12,15)."</td>\n");           		 
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(12,16)."</td>\n");           		 
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(12,17)."</td>\n");           		 
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(12,18)."</td>\n");           		 
		 #print (HTMLFILE "<td align=center>".print_cell_idlen_pos(12,19)."</td>\n");  	
} else {
 		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(12,1)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(12,3)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(12,5)."</td>\n");  
 		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(12,6)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(12,7)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(12,8)."</td>\n");     
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(12,9)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(12,10)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(12,11)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(12,12)."</td>\n");     
		 #print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(12,13)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(12,14)."</td>\n");           		 
   		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(12,15)."</td>\n");           		 
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(12,16)."</td>\n");           		 
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(12,17)."</td>\n");           		 
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(12,18)."</td>\n");           		 
	}
}

if ((print_cell_idlen_pos($row,1) == 18)) {
 if ((print_cell_idlen_pos(13,3) eq ret_vendor_ciq_info2($cascade,$eNBName,13,21)) 
&& (print_cell_idlen_pos(13,5) eq ret_vendor_ciq_info2($cascade,$eNBName,13,3)) 
&& (print_cell_idlen_pos(13,7) eq ret_vendor_ciq_info2($cascade,$eNBName,13,33)) 
&& (print_cell_idlen_pos(13,8) eq ret_vendor_ciq_info2($cascade,$eNBName,13,36))
&& (print_cell_idlen_pos(13,9) eq ret_vendor_ciq_info2($cascade,$eNBName,13,37))
&& (print_cell_idlen_pos(13,10) eq ret_vendor_ciq_info2($cascade,$eNBName,13,39))
&& (print_cell_idlen_pos(13,11) eq ret_vendor_ciq_info2($cascade,$eNBName,13,40))
&& (print_cell_idlen_pos(13,12) eq ret_vendor_ciq_info2($cascade,$eNBName,13,25))
&& (print_cell_idlen_pos(13,13) eq ret_vendor_ciq_info2($cascade,$eNBName,13,25))
&& (print_cell_idlen_pos(13,14) eq ret_vendor_ciq_info2($cascade,$eNBName,13,28))
&& (print_cell_idlen_pos(13,15) eq "subframeAssignment_2")
&& (print_cell_idlen_pos(13,16) eq "specialSubframePattern_7" )
&& (print_cell_idlen_pos(13,17) eq "FALSE")
&& (print_cell_idlen_pos(13,18) eq "Two")
&& (print_cell_idlen_pos(13,19) eq "realAlloc")) {
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(13,1)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(13,3)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(13,5)."</td>\n");  
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(13,6)."</td>\n");  
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(13,7)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(13,8)."</td>\n");     
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(13,9)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(13,10)."</td>\n");    
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(13,11)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(13,12)."</td>\n");     
		 #print (HTMLFILE "<td align=center>".print_cell_idlen_pos(13,13)."</td>\n");    
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(13,14)."</td>\n");           		 
   		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(13,15)."</td>\n");           		 
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(13,16)."</td>\n");           		 
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(13,17)."</td>\n");           		 
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(13,18)."</td>\n");           		 
		 #print (HTMLFILE "<td align=center>".print_cell_idlen_pos(13,19)."</td>\n");  	
	
} else {
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(13,1)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(13,3)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(13,5)."</td>\n");  
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(13,6)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(13,7)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(13,8)."</td>\n");     
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(13,9)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(13,10)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(13,11)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(13,12)."</td>\n");     
		 #print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(13,13)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(13,14)."</td>\n");           		 
   		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(13,15)."</td>\n");           		 
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(13,16)."</td>\n");           		 
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(13,17)."</td>\n");           		 
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(13,18)."</td>\n");           		 
        }

}

if ((print_cell_idlen_pos($row,1) == 19)) {
 if ((print_cell_idlen_pos(14,3) eq ret_vendor_ciq_info2($cascade,$eNBName,14,21)) 
&& (print_cell_idlen_pos(14,5) eq ret_vendor_ciq_info2($cascade,$eNBName,14,3)) 
&& (print_cell_idlen_pos(14,7) eq ret_vendor_ciq_info2($cascade,$eNBName,14,33)) 
&& (print_cell_idlen_pos(14,8) eq ret_vendor_ciq_info2($cascade,$eNBName,14,36))
&& (print_cell_idlen_pos(14,9) eq ret_vendor_ciq_info2($cascade,$eNBName,14,37))
&& (print_cell_idlen_pos(14,10) eq ret_vendor_ciq_info2($cascade,$eNBName,14,39))
&& (print_cell_idlen_pos(14,11) eq ret_vendor_ciq_info2($cascade,$eNBName,14,40))
&& (print_cell_idlen_pos(14,12) eq ret_vendor_ciq_info2($cascade,$eNBName,14,25))
&& (print_cell_idlen_pos(14,13) eq ret_vendor_ciq_info2($cascade,$eNBName,14,25))
&& (print_cell_idlen_pos(14,14) eq ret_vendor_ciq_info2($cascade,$eNBName,14,28))
&& (print_cell_idlen_pos(14,15) eq "subframeAssignment_2")
&& (print_cell_idlen_pos(14,16) eq "specialSubframePattern_7" )
&& (print_cell_idlen_pos(14,17) eq "FALSE")
&& (print_cell_idlen_pos(14,18) eq "Two")
&& (print_cell_idlen_pos(14,19) eq "realAlloc")) {
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(14,1)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(14,3)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(14,5)."</td>\n");  
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(14,6)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(14,7)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(14,8)."</td>\n");     
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(14,9)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(14,10)."</td>\n");    
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(14,11)."</td>\n");
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(14,12)."</td>\n");     
		 #print (HTMLFILE "<td align=center>".print_cell_idlen_pos(14,13)."</td>\n");    
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(14,14)."</td>\n");           		 
   		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(14,15)."</td>\n");           		 
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(14,16)."</td>\n");           		 
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(14,17)."</td>\n");           		 
		 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(14,18)."</td>\n");           		 
		 #print (HTMLFILE "<td align=center>".print_cell_idlen_pos(14,19)."</td>\n");  	

} else {
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(14,1)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(14,3)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(14,5)."</td>\n");  
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(14,6)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(14,7)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(14,8)."</td>\n");     
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(14,9)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(14,10)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(14,11)."</td>\n");
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(14,12)."</td>\n");     
		 #print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(14,13)."</td>\n");    
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(14,14)."</td>\n");           		 
   		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(14,15)."</td>\n");           		 
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(14,16)."</td>\n");           		 
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(14,17)."</td>\n");           		 
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(14,18)."</td>\n");           		 
		 
	   }
    }
 #print (HTMLFILE "</td>\n");
 print (HTMLFILE "</tr>\n");
}

print (HTMLFILE "</table>\n");  
 ##################################################  

 
 ############################################
 
 
 ##############################RTRV-ALM-LOG



print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=13 align=center bgcolor=#EEEEEE><b>RTRV-ALM-LOG</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>LOG_NO</th><th align=center>UNIT_TYPE</th><th align=center>ALARM_TYPE</th><th align=center>LOCATION</th><th align=center>raised_date</th><th align=center>raised_time</th><th align=center>clear_date</th><th align=center>clear_time</th><th align=center>ALARM_GROUP</th><th align=center>PROBABLE_CAUSE</th><th align=center>SEVERITY</th><th align=center>ALARM_CODE</th><th align=center>INFO</th></tr>\n");       


parse_alm_log_get ();

# my $row=0;
# my $col=0;

for ($row=0; $row < get_size_alm_log_arr(); $row = $row + 1) {  
        #print_cell_info_pos		
			for($col=1; $col <= 13; $col = $col + 1 ) {
			 print (HTMLFILE "<td align=center>".print_alm_log_pos($row,$col)."</td>\n");
		}
	print (HTMLFILE "</td>\n");
	print (HTMLFILE "</tr>\n");   
}
				  
print (HTMLFILE "</table>\n"); 

####################################



######################## cell acs
print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=13 align=center bgcolor=#EEEEEE><b>RTRV-CELL-ACS</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>CELL_NUM</th><th align=center>CELL_BARRED</th><th align=center>INTRA_FREQ_CELL_RESELECT</th><th align=center>BARRING_CTR_USAGE</th><th align=center>HANDOVER_BARRING_STATUS</th><th align=center> CELL_RESERVED_OP_USE</th> <th align=center> EAB_CTR_USAGE</th> <th align=center> BARRING_PLMN_CTR_USAGE</th></tr>\n");  


parse_cell_acsn_get();


# my $row=0;
# my $col=0;

for ($row=0; $row < get_size_cell_acs_arr(); $row = $row + 1) {  
        #print_cell_acsn_pos
			if (print_cell_acsn_pos($row,1) == 0){
				if ((print_cell_acsn_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21))&&(print_cell_acsn_pos($row,2) eq "notBarred") && (print_cell_acsn_pos($row,3) eq "NotAllowed") && (print_cell_acsn_pos($row,4) eq "cpuStatusCtrl") && (print_cell_acsn_pos($row,5) eq "barringOff")&& (print_cell_acsn_pos($row,6) eq "notReserved,notReserved,notReserved,notReserved,notReserved,notReserved")&& (print_cell_acsn_pos($row,7) eq "eabAutoCtrl")&& (print_cell_acsn_pos($row,8) eq "barringOff")) {
			
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(0,1)."</td>\n");
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(0,2)."</td>\n");  
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(0,3)."</td>\n");
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(0,4)."</td>\n"); 
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(0,5)."</td>\n"); 
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(0,6)."</td>\n"); 
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(0,7)."</td>\n"); 
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(0,8)."</td>\n"); 
				
				}
				else {
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(0,1)."</td>\n");    
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(0,2)."</td>\n");
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(0,3)."</td>\n");    
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(0,4)."</td>\n"); 
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(0,5)."</td>\n"); 
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(0,6)."</td>\n");   			 
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(0,7)."</td>\n"); 
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(0,8)."</td>\n");   			 
				 
				 } 
			}  
			if (print_cell_acsn_pos($row,1) == 1){
				if ((print_cell_acsn_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21))&&(print_cell_acsn_pos($row,2) eq "notBarred") && (print_cell_acsn_pos($row,3) eq "NotAllowed") && (print_cell_acsn_pos($row,4) eq "cpuStatusCtrl") && (print_cell_acsn_pos($row,5) eq "barringOff")&& (print_cell_acsn_pos($row,6) eq "notReserved,notReserved,notReserved,notReserved,notReserved,notReserved")&& (print_cell_acsn_pos($row,7) eq "eabAutoCtrl")&& (print_cell_acsn_pos($row,7) eq "barringOff")) {
			
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(1,1)."</td>\n");
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(1,2)."</td>\n");  
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(1,3)."</td>\n");
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(1,4)."</td>\n"); 
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(1,5)."</td>\n"); 
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(1,6)."</td>\n"); 
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(1,7)."</td>\n");
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(1,8)."</td>\n");
				}
				else {
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(1,1)."</td>\n");    
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(1,2)."</td>\n");
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(1,3)."</td>\n");    
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(1,4)."</td>\n"); 
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(1,5)."</td>\n");   			 
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(1,6)."</td>\n");    
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(1,7)."</td>\n"); 
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(1,8)."</td>\n");
				 } 
			} 
			
			if (print_cell_acsn_pos($row,1) == 3){
				if ((print_cell_acsn_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21))&&(print_cell_acsn_pos($row,2) eq "notBarred") && (print_cell_acsn_pos($row,3) eq "NotAllowed") && (print_cell_acsn_pos($row,4) eq "cpuStatusCtrl") && (print_cell_acsn_pos($row,5) eq "barringOff")&& (print_cell_acsn_pos($row,6) eq "notReserved,notReserved,notReserved,notReserved,notReserved,notReserved")&& (print_cell_acsn_pos($row,7) eq "eabAutoCtrl")&& (print_cell_acsn_pos($row,7) eq "barringOff")) {
			
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(2,1)."</td>\n");
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(2,2)."</td>\n");  
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(2,3)."</td>\n");
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(2,4)."</td>\n"); 
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(2,5)."</td>\n"); 
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(2,6)."</td>\n");
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(2,7)."</td>\n"); 
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(2,8)."</td>\n"); 
				
				}
				else {
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(2,1)."</td>\n");    
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(2,2)."</td>\n");
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(2,3)."</td>\n");    
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(2,4)."</td>\n"); 
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(2,5)."</td>\n");   			 
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(2,6)."</td>\n");    
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(2,7)."</td>\n"); 
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(2,8)."</td>\n");
				 } 
			}  
			
			if (print_cell_acsn_pos($row,1) == 4){
				if ((print_cell_acsn_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21))&&(print_cell_acsn_pos($row,2) eq "notBarred") && (print_cell_acsn_pos($row,3) eq "NotAllowed") && (print_cell_acsn_pos($row,4) eq "cpuStatusCtrl") && (print_cell_acsn_pos($row,5) eq "barringOff")&& (print_cell_acsn_pos($row,6) eq "notReserved,notReserved,notReserved,notReserved,notReserved,notReserved")&& (print_cell_acsn_pos($row,7) eq "eabAutoCtrl")&& (print_cell_acsn_pos($row,7) eq "barringOff")) {
			
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(3,1)."</td>\n");
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(3,2)."</td>\n");  
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(3,3)."</td>\n");
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(3,4)."</td>\n"); 
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(3,5)."</td>\n"); 
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(3,6)."</td>\n");
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(3,7)."</td>\n"); 
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(3,8)."</td>\n"); 
				
				}
				else {
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(3,1)."</td>\n");    
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(3,2)."</td>\n");
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(3,3)."</td>\n");    
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(3,4)."</td>\n"); 
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(3,5)."</td>\n");   			 
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(3,6)."</td>\n");    
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(3,7)."</td>\n"); 
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(3,8)."</td>\n"); 
				 } 
			}  

			if (print_cell_acsn_pos($row,1) == 5){
				if ((print_cell_acsn_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21))&&(print_cell_acsn_pos($row,2) eq "notBarred") && (print_cell_acsn_pos($row,3) eq "NotAllowed") && (print_cell_acsn_pos($row,4) eq "cpuStatusCtrl") && (print_cell_acsn_pos($row,5) eq "barringOff")&& (print_cell_acsn_pos($row,6) eq "notReserved,notReserved,notReserved,notReserved,notReserved,notReserved")&& (print_cell_acsn_pos($row,7) eq "eabAutoCtrl")&& (print_cell_acsn_pos($row,7) eq "barringOff")) {
			
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(4,1)."</td>\n");
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(4,2)."</td>\n");  
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(4,3)."</td>\n");
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(4,4)."</td>\n"); 
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(4,5)."</td>\n"); 
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(4,6)."</td>\n");
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(4,7)."</td>\n"); 
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(4,8)."</td>\n");
				
				}
				else {
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(4,1)."</td>\n");    
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(4,2)."</td>\n");
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(4,3)."</td>\n");    
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(4,4)."</td>\n"); 
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(4,5)."</td>\n");   			 
				     print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(4,6)."</td>\n");    
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(4,7)."</td>\n"); 
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(4,8)."</td>\n");
				 } 
			}  
			if (print_cell_acsn_pos($row,1) == 6){
				if ((print_cell_acsn_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21))&&(print_cell_acsn_pos($row,2) eq "notBarred") && (print_cell_acsn_pos($row,3) eq "NotAllowed") && (print_cell_acsn_pos($row,4) eq "cpuStatusCtrl") && (print_cell_acsn_pos($row,5) eq "barringOff")&& (print_cell_acsn_pos($row,6) eq "notReserved,notReserved,notReserved,notReserved,notReserved,notReserved")&& (print_cell_acsn_pos($row,7) eq "eabAutoCtrl")&& (print_cell_acsn_pos($row,7) eq "barringOff")) {
			
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(5,1)."</td>\n");
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(5,2)."</td>\n");  
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(5,3)."</td>\n");
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(5,4)."</td>\n"); 
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(5,5)."</td>\n"); 
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(5,6)."</td>\n");
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(5,7)."</td>\n"); 
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(5,8)."</td>\n"); 
				
				}
				else {
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(5,1)."</td>\n");    
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(5,2)."</td>\n");
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(5,3)."</td>\n");    
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(5,4)."</td>\n"); 
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(5,5)."</td>\n");   			 
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(5,6)."</td>\n");    
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(5,7)."</td>\n"); 
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(5,8)."</td>\n"); 
				 } 
			}  
			
			if (print_cell_acsn_pos($row,1) == 7){
				if ((print_cell_acsn_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21))&&(print_cell_acsn_pos($row,2) eq "notBarred") && (print_cell_acsn_pos($row,3) eq "NotAllowed") && (print_cell_acsn_pos($row,4) eq "cpuStatusCtrl") && (print_cell_acsn_pos($row,5) eq "barringOff")&& (print_cell_acsn_pos($row,6) eq "notReserved,notReserved,notReserved,notReserved,notReserved,notReserved")&& (print_cell_acsn_pos($row,7) eq "eabAutoCtrl")&& (print_cell_acsn_pos($row,7) eq "barringOff")) {
			
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(6,1)."</td>\n");
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(6,2)."</td>\n");  
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(6,3)."</td>\n");
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(6,4)."</td>\n"); 
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(6,5)."</td>\n"); 
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(6,6)."</td>\n");
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(6,7)."</td>\n"); 
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(6,8)."</td>\n"); 
				
				}
				else {
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(6,1)."</td>\n");    
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(6,2)."</td>\n");
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(6,3)."</td>\n");    
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(6,4)."</td>\n"); 
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(6,5)."</td>\n");   			 
				     print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(6,3)."</td>\n");    
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(6,4)."</td>\n"); 
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(6,5)."</td>\n"); 
				 } 
			}  
			if (print_cell_acsn_pos($row,1) == 8){
				if ((print_cell_acsn_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21))&&(print_cell_acsn_pos($row,2) eq "notBarred") && (print_cell_acsn_pos($row,3) eq "NotAllowed") && (print_cell_acsn_pos($row,4) eq "cpuStatusCtrl") && (print_cell_acsn_pos($row,5) eq "barringOff")&& (print_cell_acsn_pos($row,6) eq "notReserved,notReserved,notReserved,notReserved,notReserved,notReserved")&& (print_cell_acsn_pos($row,7) eq "eabAutoCtrl")&& (print_cell_acsn_pos($row,7) eq "barringOff")) {
			
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(7,1)."</td>\n");
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(7,2)."</td>\n");  
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(7,3)."</td>\n");
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(7,4)."</td>\n"); 
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(7,5)."</td>\n"); 
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(7,6)."</td>\n");
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(7,7)."</td>\n"); 
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(7,8)."</td>\n");
				
				}
				else {
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(7,1)."</td>\n");    
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(7,2)."</td>\n");
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(7,3)."</td>\n");    
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(7,4)."</td>\n"); 
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(7,5)."</td>\n");   			 
				     print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(7,6)."</td>\n");    
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(7,7)."</td>\n"); 
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(7,8)."</td>\n");  
				 } 
			}  

			if (print_cell_acsn_pos($row,1) == 9){
				if ((print_cell_acsn_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21))&&(print_cell_acsn_pos($row,2) eq "notBarred") && (print_cell_acsn_pos($row,3) eq "NotAllowed") && (print_cell_acsn_pos($row,4) eq "cpuStatusCtrl") && (print_cell_acsn_pos($row,5) eq "barringOff")&& (print_cell_acsn_pos($row,6) eq "notReserved,notReserved,notReserved,notReserved,notReserved,notReserved")&& (print_cell_acsn_pos($row,7) eq "eabAutoCtrl")&& (print_cell_acsn_pos($row,7) eq "barringOff")) {
			
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(8,1)."</td>\n");
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(8,2)."</td>\n");  
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(8,3)."</td>\n");
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(8,4)."</td>\n"); 
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(8,5)."</td>\n"); 
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(8,6)."</td>\n");
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(8,7)."</td>\n"); 
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(8,8)."</td>\n");
				
				}
				else {
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(8,1)."</td>\n");    
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(8,2)."</td>\n");
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(8,3)."</td>\n");    
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(8,4)."</td>\n"); 
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(8,5)."</td>\n");   			 
				     print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(8,6)."</td>\n");    
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(8,7)."</td>\n"); 
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(8,8)."</td>\n");
				 } 
			}  
		if (print_cell_acsn_pos($row,1) == 10){
				if ((print_cell_acsn_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21))&&(print_cell_acsn_pos($row,2) eq "notBarred") && (print_cell_acsn_pos($row,3) eq "NotAllowed") && (print_cell_acsn_pos($row,4) eq "cpuStatusCtrl") && (print_cell_acsn_pos($row,5) eq "barringOff")&& (print_cell_acsn_pos($row,6) eq "notReserved,notReserved,notReserved,notReserved,notReserved,notReserved")&& (print_cell_acsn_pos($row,7) eq "eabAutoCtrl")&& (print_cell_acsn_pos($row,7) eq "barringOff")) {
			
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(9,1)."</td>\n");
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(9,2)."</td>\n");  
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(9,3)."</td>\n");
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(9,4)."</td>\n"); 
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(9,5)."</td>\n"); 
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(9,6)."</td>\n");
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(9,7)."</td>\n"); 
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(9,8)."</td>\n"); 
					
				
				}
				else {
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(9,1)."</td>\n");    
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(9,2)."</td>\n");
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(9,3)."</td>\n");    
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(9,4)."</td>\n"); 
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(9,5)."</td>\n");   			 
				     print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(9,6)."</td>\n");    
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(9,7)."</td>\n"); 
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(9,8)."</td>\n");
				 } 
			}  
		if (print_cell_acsn_pos($row,1) == 12){
				if ((print_cell_acsn_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21))&&(print_cell_acsn_pos($row,2) eq "notBarred") && (print_cell_acsn_pos($row,3) eq "NotAllowed") && (print_cell_acsn_pos($row,4) eq "cpuStatusCtrl") && (print_cell_acsn_pos($row,5) eq "barringOff")&& (print_cell_acsn_pos($row,6) eq "notReserved,notReserved,notReserved,notReserved,notReserved,notReserved")&& (print_cell_acsn_pos($row,7) eq "eabAutoCtrl")&& (print_cell_acsn_pos($row,7) eq "barringOff")) {
			
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(10,1)."</td>\n");
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(10,2)."</td>\n");  
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(10,3)."</td>\n");
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(10,4)."</td>\n"); 
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(10,5)."</td>\n"); 
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(10,6)."</td>\n");
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(10,7)."</td>\n"); 
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(10,8)."</td>\n");
				
				}
				else {
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(10,1)."</td>\n");    
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(10,2)."</td>\n");
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(10,3)."</td>\n");    
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(10,4)."</td>\n"); 
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(10,5)."</td>\n");   			 
				     print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(10,6)."</td>\n");    
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(10,7)."</td>\n"); 
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(10,8)."</td>\n"); 
				 } 
			}  

			if (print_cell_acsn_pos($row,1) == 13){
				if ((print_cell_acsn_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21))&&(print_cell_acsn_pos($row,2) eq "notBarred") && (print_cell_acsn_pos($row,3) eq "NotAllowed") && (print_cell_acsn_pos($row,4) eq "cpuStatusCtrl") && (print_cell_acsn_pos($row,5) eq "barringOff")&& (print_cell_acsn_pos($row,6) eq "notReserved,notReserved,notReserved,notReserved,notReserved,notReserved")&& (print_cell_acsn_pos($row,7) eq "eabAutoCtrl")&& (print_cell_acsn_pos($row,7) eq "barringOff")) {
			
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(11,1)."</td>\n");
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(11,2)."</td>\n");  
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(11,3)."</td>\n");
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(11,4)."</td>\n"); 
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(11,5)."</td>\n"); 
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(11,6)."</td>\n");
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(11,7)."</td>\n"); 
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(11,8)."</td>\n");
				
				}
				else {
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(11,1)."</td>\n");    
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(11,2)."</td>\n");
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(11,3)."</td>\n");    
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(11,4)."</td>\n"); 
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(11,5)."</td>\n");   			 
				     print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(11,6)."</td>\n");    
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(11,7)."</td>\n"); 
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(11,8)."</td>\n");
				 } 
			}  
			if (print_cell_acsn_pos($row,1) == 14){
				if ((print_cell_acsn_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21))&&(print_cell_acsn_pos($row,2) eq "notBarred") && (print_cell_acsn_pos($row,3) eq "NotAllowed") && (print_cell_acsn_pos($row,4) eq "cpuStatusCtrl") && (print_cell_acsn_pos($row,5) eq "barringOff")&& (print_cell_acsn_pos($row,6) eq "notReserved,notReserved,notReserved,notReserved,notReserved,notReserved")&& (print_cell_acsn_pos($row,7) eq "eabAutoCtrl")&& (print_cell_acsn_pos($row,7) eq "barringOff")) {
			
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(12,1)."</td>\n");
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(12,2)."</td>\n");  
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(12,3)."</td>\n");
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(12,4)."</td>\n"); 
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(12,5)."</td>\n"); 
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(12,6)."</td>\n");
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(12,7)."</td>\n"); 
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(12,8)."</td>\n");
				
				}
				else {
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(12,1)."</td>\n");    
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(12,2)."</td>\n");
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(12,3)."</td>\n");    
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(12,4)."</td>\n"); 
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(12,5)."</td>\n");   			 
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(12,6)."</td>\n");    
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(12,7)."</td>\n"); 
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(12,8)."</td>\n");
				 } 
			}  
			if (print_cell_acsn_pos($row,1) == 18){
				if ((print_cell_acsn_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21))&&(print_cell_acsn_pos($row,2) eq "notBarred") && (print_cell_acsn_pos($row,3) eq "NotAllowed") && (print_cell_acsn_pos($row,4) eq "cpuStatusCtrl") && (print_cell_acsn_pos($row,5) eq "barringOff")&& (print_cell_acsn_pos($row,6) eq "notReserved,notReserved,notReserved,notReserved,notReserved,notReserved")&& (print_cell_acsn_pos($row,7) eq "eabAutoCtrl")&& (print_cell_acsn_pos($row,7) eq "barringOff")) {
			
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(13,1)."</td>\n");
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(13,2)."</td>\n");  
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(13,3)."</td>\n");
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(13,4)."</td>\n"); 
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(13,5)."</td>\n"); 
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(13,6)."</td>\n");
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(13,7)."</td>\n"); 
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(13,8)."</td>\n");
				
				}
				else {
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(13,1)."</td>\n");    
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(13,2)."</td>\n");
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(13,3)."</td>\n");    
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(13,4)."</td>\n"); 
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(13,5)."</td>\n");   			 
				     print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(13,6)."</td>\n");    
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(13,7)."</td>\n"); 
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(13,8)."</td>\n");
				 } 
			}  
			if (print_cell_acsn_pos($row,1) == 19){
				if ((print_cell_acsn_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21))&&(print_cell_acsn_pos($row,2) eq "notBarred") && (print_cell_acsn_pos($row,3) eq "NotAllowed") && (print_cell_acsn_pos($row,4) eq "cpuStatusCtrl") && (print_cell_acsn_pos($row,5) eq "barringOff")&& (print_cell_acsn_pos($row,6) eq "notReserved,notReserved,notReserved,notReserved,notReserved,notReserved")&& (print_cell_acsn_pos($row,7) eq "eabAutoCtrl")&& (print_cell_acsn_pos($row,7) eq "barringOff")) {
			
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(14,1)."</td>\n");
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(14,2)."</td>\n");  
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(14,3)."</td>\n");
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(14,4)."</td>\n"); 
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(14,5)."</td>\n"); 
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(14,6)."</td>\n");
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(14,7)."</td>\n"); 
					 print (HTMLFILE "<td align=center>".print_cell_acsn_pos(14,8)."</td>\n"); 
				
				}
				else {
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(14,1)."</td>\n");    
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(14,2)."</td>\n");
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(14,3)."</td>\n");    
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(14,4)."</td>\n"); 
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(14,5)."</td>\n");   			 
				     print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(14,6)."</td>\n");    
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(14,7)."</td>\n"); 
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_acsn_pos(14,8)."</td>\n"); 
				 } 
			}  
			
		 print (HTMLFILE "</td>\n");
		 print (HTMLFILE "</tr>\n");
		 
		}

 
 print (HTMLFILE "</table>\n");
 
 
 ############################################


############################################CABAND-INFO


print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=11 align=center bgcolor=#EEEEEE><b>CABAND-INFO</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>BAND_COMBINATION_LIST_INDEX</th><th align=center>STATUS</th><th align=center>BAND0_USAGE</th><th align=center>BAND_INDICATOR0</th><th align=center>CA_BANDWIDTH_CLASS_DL0</th><th align=center>BAND1_USAGE</th><th align=center>BAND_INDICATOR1</th><th align=center>CA_BANDWIDTH_CLASS_DL1</th></tr>\n");  

parse_caband_info_get();


for ($row=0; $row < get_size_caband_info_arr(); $row = $row + 1) {  
        #print_cell_info_pos
	if (print_caband_info_pos($row,1) == 0){
		if ((print_caband_info_pos($row,2) eq "use") && (print_caband_info_pos($row,3) eq "no_use") && (print_caband_info_pos($row,4)== 41)&&(print_caband_info_pos($row,5) eq "BwClass_a")&&(print_caband_info_pos($row,6) eq "no_use") &&(print_caband_info_pos($row,7)== 5) &&(print_caband_info_pos($row,8) eq "BwClass_a")   )  {
    
			 print (HTMLFILE "<td align=center>".print_caband_info_pos(0,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_caband_info_pos(0,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_caband_info_pos(0,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_caband_info_pos(0,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_caband_info_pos(0,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_caband_info_pos(0,6)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_caband_info_pos(0,7)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_caband_info_pos(0,8)."</td>\n"); 
			 # print (HTMLFILE "<td align=center>".print_caband_info_pos(0,9)."</td>\n"); 
			 # print (HTMLFILE "<td align=center>".print_caband_info_pos(0,10)."</td>\n"); 
		
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_caband_info_pos(0,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_caband_info_pos(0,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_caband_info_pos(0,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_caband_info_pos(0,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_caband_info_pos(0,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_caband_info_pos(0,6)."</td>\n"); 
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_caband_info_pos(0,7)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_caband_info_pos(0,8)."</td>\n"); 
			 # print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_caband_info_pos(0,9)."</td>\n");  
           # print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_caband_info_pos(0,10)."</td>\n"); 			 
		 
		 } 
  }  

if (print_caband_info_pos($row,1) == 1){
		if ((print_caband_info_pos($row,2) eq "use") && (print_caband_info_pos($row,3) eq "no_use") && (print_caband_info_pos($row,4)== 41)&&(print_caband_info_pos($row,5) eq "BwClass_a")&&(print_caband_info_pos($row,6) eq "no_use") &&(print_caband_info_pos($row,7)== 5) &&(print_caband_info_pos($row,8) eq "BwClass_a")   )  {
    
			 print (HTMLFILE "<td align=center>".print_caband_info_pos(1,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_caband_info_pos(1,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_caband_info_pos(1,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_caband_info_pos(1,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_caband_info_pos(1,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_caband_info_pos(1,6)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_caband_info_pos(1,7)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_caband_info_pos(1,8)."</td>\n"); 
			 # print (HTMLFILE "<td align=center>".print_caband_info_pos(0,9)."</td>\n"); 
			 # print (HTMLFILE "<td align=center>".print_caband_info_pos(0,10)."</td>\n"); 
		
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_caband_info_pos(1,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_caband_info_pos(1,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_caband_info_pos(1,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_caband_info_pos(1,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_caband_info_pos(1,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_caband_info_pos(1,6)."</td>\n"); 
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_caband_info_pos(1,7)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_caband_info_pos(1,8)."</td>\n"); 
			 # print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_caband_info_pos(0,9)."</td>\n");  
    #          print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_caband_info_pos(0,10)."</td>\n"); 			 
		 
		 } 
    }  

if (print_caband_info_pos($row,1) == 2){
		if ((print_caband_info_pos($row,2) eq "use") && (print_caband_info_pos($row,3) eq "no_use") && (print_caband_info_pos($row,4)== 41)&&(print_caband_info_pos($row,5) eq "BwClass_a")&&(print_caband_info_pos($row,6) eq "no_use") &&(print_caband_info_pos($row,7)== 5) &&(print_caband_info_pos($row,8) eq "BwClass_a")   )  {
    
			 print (HTMLFILE "<td align=center>".print_caband_info_pos(2,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_caband_info_pos(2,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_caband_info_pos(2,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_caband_info_pos(2,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_caband_info_pos(2,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_caband_info_pos(2,6)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_caband_info_pos(2,7)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_caband_info_pos(2,8)."</td>\n"); 
			 # print (HTMLFILE "<td align=center>".print_caband_info_pos(0,9)."</td>\n"); 
			 # print (HTMLFILE "<td align=center>".print_caband_info_pos(0,10)."</td>\n"); 
		
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_caband_info_pos(2,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_caband_info_pos(2,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_caband_info_pos(2,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_caband_info_pos(2,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_caband_info_pos(2,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_caband_info_pos(2,6)."</td>\n"); 
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_caband_info_pos(2,7)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_caband_info_pos(2,8)."</td>\n"); 
			 # print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_caband_info_pos(0,9)."</td>\n");  
    #          print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_caband_info_pos(0,10)."</td>\n"); 			 
		 
		 } 
    }  

   print (HTMLFILE "</td>\n");
    print (HTMLFILE "</tr>\n");

                    
   }                 
                    
print (HTMLFILE "</table>\n"); 
 
############SONFN-CELL

print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td align=center colspan=17 bgcolor=#EEEEEE><b>RTRV-SONFN-CELL</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>CELL_NUM</th><th align=center>ANR_ENABLE</th><th align=center>INTER_RAT_ANR_ENABLE1_X_RTT</th><th align=center>INTER_RAT_ANR_ENABLE_HRPD</th><th align=center>ENERGY_SAVINGS_ENABLE</th><th align=center>MOBILITY_ROBUSTNESS_ENABLE</th><th align=center>RACH_OPT_ENABLE</th><th align=center>ANR_UE_SEARCH_RATE_TOTAL[%]</th><th align=center>ANR_UE_SEARCH_RATE_INTRA_FREQ[%]</th><th align=center>ANR_UE_SEARCH_RATE_INTER_FREQ[%]</th><th align=center>ANR_UE_SEARCH_RATE_C1_XRTT[%]</th><th align=center>ANR_UE_SEARCH_RATE_HRPD[%]</th><th align=center>ANR_MEAS_DURATION_INTER_FREQ[sec]</th><th align=center>ANR_MEAS_DURATION_C1_XRTT[sec]</th><th align=center>ANR_MEAS_DURATION_HRPD[sec]</th><th align=center>PCI_DRC_FLAG</th><th align=center>SON_PWR_CTRL_ENABLE</th><th align=center>ES_SCAILING_FACTOR_LB</th><th align=center>ES_SCALING_FACTOR_CAC</th><th align=center>RSI_CONFLICT_ENABLE</th><th align=center>SON_CCO_PWR_CTRL_ENABLE</th><th align=center>SON_COC_PWR_CTRL_ENABLE</th><th align=center>ES_CELL_ON_OFF_ENABLE</th><th align=center>BI_OPT_ENABLE</th></tr>\n");  
  parse_sonfn_cell_get ();
	# my $row=0;
	# my $col=0;

for ($row=0; $row < get_size_sonfn_cell_arr();$row = $row + 1) {  
        #print_sonfn_cell_pos
		if (print_sonfn_cell_pos($row,1)== 0){
		if (print_sonfn_cell_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21)){
    
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(0,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(0,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(0,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(0,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(0,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(0,6)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(0,7)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(0,8)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(0,9)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(0,10)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(0,11)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(0,12)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(0,13)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(0,14)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(0,15)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(0,16)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(0,17)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(0,18)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(0,19)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(0,20)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(0,21)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(0,22)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(0,23)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(0,24)."</td>\n"); 
			  
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(0,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(0,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(0,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(0,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(0,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(0,6)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(0,7)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(0,8)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(0,9)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(0,10)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(0,11)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(0,12)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(0,13)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(0,14)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(0,15)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(0,16)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(0,17)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(0,18)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(0,19)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(0,20)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(0,21)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(0,22)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(0,23)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(0,24)."</td>\n");

		 }  
	}
	
	if (print_sonfn_cell_pos($row,1)== 1){
		if (print_sonfn_cell_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21)){
    
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(1,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(1,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(1,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(1,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(1,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(1,6)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(1,7)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(1,8)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(1,9)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(1,10)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(1,11)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(1,12)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(1,13)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(1,14)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(1,15)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(1,16)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(1,17)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(1,18)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(1,19)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(1,20)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(1,21)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(1,22)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(1,23)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(1,24)."</td>\n"); 
			  
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(1,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(1,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(1,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(1,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(1,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(1,6)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(1,7)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(1,8)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(1,9)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(1,10)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(1,11)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(1,12)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(1,13)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(1,14)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(1,15)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(1,16)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(1,17)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(1,18)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(1,19)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(1,20)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(1,21)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(1,22)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(1,23)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(1,24)."</td>\n");

		 }  
	}
	
	if (print_sonfn_cell_pos($row,1)== 3){
		if (print_sonfn_cell_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21)){
    
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(2,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(2,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(2,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(2,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(2,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(2,6)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(2,7)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(2,8)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(2,9)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(2,10)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(2,11)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(2,12)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(2,13)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(2,14)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(2,15)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(2,16)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(2,17)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(2,18)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(2,19)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(2,20)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(2,21)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(2,22)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(2,23)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(2,24)."</td>\n"); 
			  
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(2,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(2,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(2,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(2,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(2,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(2,6)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(2,7)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(2,8)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(2,9)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(2,10)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(2,11)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(2,12)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(2,13)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(2,14)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(2,15)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(2,16)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(2,17)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(2,18)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(2,19)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(2,20)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(2,21)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(2,22)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(2,23)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(2,24)."</td>\n");

		 }  
	}
	
	if (print_sonfn_cell_pos($row,1)== 4){
		if (print_sonfn_cell_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21)){
    
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(3,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(3,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(3,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(3,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(3,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(3,6)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(3,7)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(3,8)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(3,9)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(3,10)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(3,11)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(3,12)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(3,13)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(3,14)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(3,15)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(3,16)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(3,17)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(3,18)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(3,19)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(3,20)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(3,21)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(3,22)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(3,23)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(3,24)."</td>\n"); 
			  
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(3,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(3,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(3,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(3,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(3,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(3,6)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(3,7)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(3,8)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(3,9)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(3,10)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(3,11)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(3,12)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(3,13)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(3,14)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(3,15)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(3,16)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(3,17)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(3,18)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(3,19)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(3,20)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(3,21)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(3,22)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(3,23)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(3,24)."</td>\n");

		 }  
	}

		if (print_sonfn_cell_pos($row,1)== 5){
		if (print_sonfn_cell_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21)){
    
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(4,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(4,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(4,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(4,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(4,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(4,6)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(4,7)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(4,8)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(4,9)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(4,10)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(4,11)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(4,12)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(4,13)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(4,14)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(4,15)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(4,16)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(4,17)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(4,18)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(4,19)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(4,20)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(4,21)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(4,22)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(4,23)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_sonfn_cell_pos(4,24)."</td>\n"); 
			  
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(4,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(4,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(4,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(4,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(4,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(4,6)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(4,7)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(4,8)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(4,9)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(4,10)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(4,11)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(4,12)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(4,13)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(4,14)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(4,15)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(4,16)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(4,17)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(4,18)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(4,19)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(4,20)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(4,21)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(4,22)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(4,23)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_sonfn_cell_pos(4,24)."</td>\n");

		 }  
	}

		print (HTMLFILE "</td>\n");
		print (HTMLFILE "</tr>\n");
		 
		}

 
 print (HTMLFILE "</table>\n");
 
 
 
 ####################C1XRTT-MOBIL

print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td align=center colspan=69 bgcolor=#EEEEEE><b>C1XRTT-MOBIL</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>CELL_NUM</th><th align=center>S_ID</th><th align=center>N_ID</th><th align=center>MULT_SIDS</th><th align=center>MULT_NIDS</th><th align=center>REG_ZONE</th><th align=center>TOTAL_ZONES</th><th align=center>ZONE_TIMER</th><th align=center>PACKET_ZONE_ID</th><th align=center>P_ZIDHYST_PARAM_INCLUDED</th><th align=center>P_ZHYST_ENABLED</th><th align=center>P_ZHYST_INFO_INCL</th><th align=center>P_ZHYST_LIST_LEN</th><th align=center>P_ZHYST_ACT_TIMER</th><th align=center>P_ZHYST_TIMER_MUL</th><th align=center>PZ_HYST_TIMER_EXP</th><th align=center>P_REV</th><th align=center>MIN_PREV</th><th align=center>NEG_SLOT_CYCLE_INDEX_SUP</th><th align=center>ENCRYPT_MODE</th><th align=center>ENC_SUPPORTED</th><th align=center>SIG_ENCRYPT_SUP</th><th align=center>MSG_INTEGRITY_SUP</th><th align=center>SIG_INTEGRITY_SUPINCL</th><th align=center>SIG_INTEGRITY_SUP</th><th align=center>AUTH</th><th align=center>MAX_NUM_ALT_SO</th><th align=center>USE_SYNC_ID</th><th align=center>MS_INIT_POS_LOC_SUP_IND</th><th align=center>MOB_QOS</th><th align=center>BAND_CLASS_INFO_REQ</th><th align=center>BAND_CLASS</th><th align=center>BYPASS_REG_IND</th><th align=center>ALT_BAND_CLASS</th><th align=center>MAX_ADD_SERV_INSTANCE</th><th align=center>HOME_REG</th><th align=center>FOR_SIDREG</th><th align=center>FOR_NIDREG</th><th align=center>POWER_UP_REG</th><th align=center>POWER_DOWN_REG</th><th align=center>PARAMETER_REG</th><th align=center>REG_PRD</th><th align=center>REG_DIST</th><th align=center>PREF_MSIDTYPE</th><th align=center>EXT_PREF_MSIDTYPE</th><th align=center>MEID_REQD</th><th align=center>MCC</th><th align=center>IMSI1112</th><th align=center>IMSI_TSUPPORTED</th><th align=center>RECONNECT_MSG_IND</th><th align=center>RER_MODE_SUPPORTED</th><th align=center>TKZ_MODE_SUPPORTED</th><th align=center>TKZ_ID</th><th align=center>PILOT_REPORT</th><th align=center>SDB_SUPPORTED</th><th align=center>AUTO_FCSOALLOWED</th><th align=center>SDB_IN_RCNMIND</th><th align=center>FPC_FCH_INCLUDED</th><th align=center>FPC_FCH_INIT_SETPT_RC3</th><th align=center>FPC_FCH_INIT_SETPT_RC4</th><th align=center>FPC_FCH_INIT_SETPT_RC5</th><th align=center>FPC_FCH_INIT_SETPT_RC11</th><th align=center>FPC_FCH_INIT_SETPT_RC12</th><th align=center>T_ADD</th><th align=center>PILOT_INC</th><th align=center>RAND_CDMA2000_INCLUDED</th><th align=center>RAND_CDMA2000</th><th align=center>G_CSNAL2_ACK_TIMER</th><th align=center>G_CSNASEQ_CONTEXT_TIMER</th></tr>\n");			      

parse_c1xrtt_mobil_get ();
	# my $row=0;
	# my $col=0;

for ($row=0; $row < get_size_c1xrtt_mobil_arr();$row = $row + 1) {  
        #print_c1xrtt_mobil_pos
		if (print_c1xrtt_mobil_pos($row,1)== 0){
		if (print_c1xrtt_mobil_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21)){
    
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,6)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,7)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,8)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,9)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,10)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,11)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,12)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,13)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,14)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,15)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,16)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,17)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,18)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,19)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,20)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,21)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,22)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,23)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,24)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,25)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,26)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,27)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,28)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,29)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,30)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,31)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,32)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,33)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,34)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,35)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,36)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,37)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,38)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,39)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,40)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,41)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,42)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,43)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,44)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,45)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,46)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,47)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,48)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,49)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,50)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,51)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,52)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,53)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,54)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,55)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,56)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,57)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,58)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,59)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,60)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,61)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,62)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,63)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,64)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,65)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,66)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,67)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,68)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(0,69)."</td>\n");  
			  
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,6)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,7)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,8)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,9)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,10)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,11)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,12)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,13)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,14)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,15)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,16)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,17)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,18)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,19)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,20)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,21)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,22)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,23)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,24)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,25)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,26)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,27)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,28)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,29)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,30)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,31)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,32)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,33)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,34)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,35)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,36)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,37)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,38)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,39)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,40)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,41)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,42)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,43)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,44)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,45)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,46)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,47)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,48)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,49)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,50)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,51)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,52)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,53)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,54)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,55)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,56)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,57)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,58)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,59)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,60)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,61)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,62)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,63)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,64)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,65)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,66)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,67)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,68)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(0,69)."</td>\n");
		 
		 }  
	}

	
		if (print_c1xrtt_mobil_pos($row,1)== 1){
		if (print_c1xrtt_mobil_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21)){
    
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,6)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,7)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,8)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,9)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,10)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,11)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,12)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,13)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,14)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,15)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,16)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,17)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,18)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,19)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,20)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,21)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,22)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,23)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,24)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,25)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,26)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,27)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,28)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,29)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,30)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,31)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,32)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,33)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,34)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,35)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,36)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,37)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,38)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,39)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,40)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,41)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,42)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,43)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,44)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,45)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,46)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,47)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,48)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,49)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,50)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,51)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,52)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,53)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,54)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,55)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,56)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,57)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,58)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,59)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,60)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,61)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,62)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,63)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,64)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,65)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,66)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,67)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,68)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(1,69)."</td>\n");  
			  
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,6)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,7)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,8)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,9)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,10)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,11)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,12)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,13)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,14)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,15)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,16)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,17)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,18)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,19)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,20)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,21)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,22)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,23)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,24)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,25)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,26)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,27)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,28)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,29)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,30)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,31)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,32)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,33)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,34)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,35)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,36)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,37)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,38)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,39)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,40)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,41)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,42)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,43)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,44)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,45)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,46)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,47)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,48)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,49)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,50)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,51)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,52)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,53)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,54)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,55)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,56)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,57)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,58)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,59)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,60)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,61)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,62)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,63)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,64)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,65)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,66)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,67)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,68)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(1,69)."</td>\n");
		 
		 }  
	}

	
		if (print_c1xrtt_mobil_pos($row,1)== 3){
		if (print_c1xrtt_mobil_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21)){
    
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,6)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,7)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,8)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,9)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,10)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,11)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,12)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,13)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,14)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,15)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,16)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,17)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,18)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,19)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,20)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,21)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,22)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,23)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,24)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,25)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,26)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,27)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,28)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,29)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,30)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,31)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,32)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,33)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,34)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,35)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,36)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,37)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,38)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,39)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,40)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,41)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,42)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,43)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,44)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,45)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,46)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,47)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,48)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,49)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,50)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,51)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,52)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,53)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,54)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,55)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,56)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,57)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,58)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,59)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,60)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,61)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,62)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,63)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,64)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,65)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,66)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,67)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,68)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_c1xrtt_mobil_pos(2,69)."</td>\n");  
			  
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,6)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,7)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,8)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,9)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,10)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,11)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,12)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,13)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,14)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,15)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,16)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,17)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,18)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,19)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,20)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,21)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,22)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,23)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,24)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,25)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,26)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,27)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,28)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,29)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,30)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,31)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,32)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,33)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,34)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,35)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,36)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,37)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,38)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,39)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,40)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,41)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,42)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,43)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,44)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,45)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,46)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,47)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,48)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,49)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,50)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,51)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,52)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,53)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,54)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,55)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,56)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,57)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,58)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,59)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,60)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,61)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,62)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,63)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,64)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,65)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,66)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,67)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,68)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_mobil_pos(2,69)."</td>\n");
		 
		 }  
	}
 print (HTMLFILE "</td>\n");
 print (HTMLFILE "</tr>\n");
 
}

 
 print (HTMLFILE "</table>\n");
 
# }  
                       
                       
##############RTRV-ENBPLMN-INFO

print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=5 align=center bgcolor=#EEEEEE><b>ENBPLMN-INFO</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>PLMN_INDEX</th><th align=center>MCC</th><th align=center>MNC</th><th align=center>OP_ID</th></tr>\n");

parse_enbplmn_info_get ();

my $row=0;
my $col=0;

for ($row=0; $row<get_size_enbplmn_info_arr();$row = $row + 1) {  
        #print_enbplm_info_pos
	if (print_enbplmn_info($row,1) == 0){
		if ((print_enbplmn_info($row,2) eq "310") && (print_enbplmn_info($row,3) eq "120") && (print_enbplmn_info($row,4) eq "0")) {
    
			 print (HTMLFILE "<td align=center>".print_enbplmn_info(0,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_enbplmn_info(0,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_enbplmn_info(0,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_enbplmn_info(0,4)."</td>\n");     
		
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_enbplmn_info(0,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_enbplmn_info(0,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_enbplmn_info(0,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_enbplmn_info(0,4)."</td>\n");    
		 
		 }
    }  

 print (HTMLFILE "</td>\n");
 print (HTMLFILE "</tr>\n");
}

 
 print (HTMLFILE "</table>\n");

# }   


###################################cellplmn-info

##############RTRV-CELLPLMN-INFO

print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=11 align=center bgcolor=#EEEEEE><b>RTRV-CELLPLMN-INFO</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>CELL_NUM</th><th align=center>PLMN_IDX</th><th align=center>PLMN_USAGE</th></tr>\n");

parse_cellplmn_info_get ();

my $row=0;
# my $col=0;

			#for ($row=0; $row < get_size_cellplmn_info_arr(); $row = $row + 1) {  
				   
				if (print_cellplmn_info_pos($row,1) == 0){
					if ((print_cellplmn_info_pos($row,2) eq "0") && (print_cellplmn_info_pos($row,3) eq "use")) {
				
						 print (HTMLFILE "<td align=center>".print_cellplmn_info_pos(0,1)."</td>\n");
						 print (HTMLFILE "<td align=center>".print_cellplmn_info_pos(0,2)."</td>\n");  
						 print (HTMLFILE "<td align=center>".print_cellplmn_info_pos(0,3)."</td>\n");   
					
					}
					else {
						 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cellplmn_info_pos(0,1)."</td>\n");    
						 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cellplmn_info_pos(0,2)."</td>\n");
						 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cellplmn_info_pos(0,3)."</td>\n");   
					 
					 }
					 
					 
				# if (print_cellplmn_info_pos($row,1) == 0){
					# if ((print_cellplmn_info_pos($row,2) eq "1") && (print_cellplmn_info_pos($row,3) eq "use")) {
				
						 # print (HTMLFILE "<td align=center>".print_cellplmn_info_pos(1,1)."</td>\n");
						 # print (HTMLFILE "<td align=center>".print_cellplmn_info_pos(1,2)."</td>\n");  
						 # print (HTMLFILE "<td align=center>".print_cellplmn_info_pos(1,3)."</td>\n");   
					
					# }
					# else {
						 # print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cellplmn_info_pos(1,1)."</td>\n");    
						 # print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cellplmn_info_pos(1,2)."</td>\n");
						 # print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cellplmn_info_pos(1,3)."</td>\n");   
					 
					 # }
					 # }
					 

				
 print (HTMLFILE "</td>\n");
 print (HTMLFILE "</tr>\n");
 
}

 
 print (HTMLFILE "</table>\n");


##############################cellplmn-info



##############RTRV-PRACH-CONF

print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=11 align=center bgcolor=#EEEEEE><b>RTRV-PRACH-CONF</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>CELL_NUM</th><th align=center>ROOT_SEQUENCE_INDEX</th><th align=center>ZERO_CORREL_ZONE_CONFIG</th></tr>\n");  
  
parse_prach_confn_get ();
	# my $row=0;
	# my $col=0;

for ($row=0; $row < get_size_prach_conf_arr();$row = $row + 1) {  
        #print_prach_confn_pos
	if (print_prach_confn_pos($row,1) == 0){
		if ((print_prach_confn_pos($row,5) eq ret_vendor_ciq_info2($cascade,$eNBName,0,34)) && (print_prach_confn_pos($row,4) eq "12")) {
    
			 print (HTMLFILE "<td align=center>".print_prach_confn_pos(0,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_prach_confn_pos(0,5)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_prach_confn_pos(0,4)."</td>\n");   
		
		
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_prach_confn_pos(0,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_prach_confn_pos(0,5)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_prach_confn_pos(0,4)."</td>\n");  			 
		 
		 }
    }  
		
		if (print_prach_confn_pos($row,1) == 1){
		if ((print_prach_confn_pos($row,5) eq ret_vendor_ciq_info2($cascade,$eNBName,0,34)) && (print_prach_confn_pos($row,4) eq "12")) {
    
			 print (HTMLFILE "<td align=center>".print_prach_confn_pos(1,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_prach_confn_pos(1,5)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_prach_confn_pos(1,4)."</td>\n");   
		
		
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_prach_confn_pos(1,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_prach_confn_pos(1,5)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_prach_confn_pos(1,4)."</td>\n");  			 
		 
		 }
    } 
	
		if (print_prach_confn_pos($row,1) == 3){
		if ((print_prach_confn_pos($row,5) eq ret_vendor_ciq_info2($cascade,$eNBName,0,34)) && (print_prach_confn_pos($row,4) eq "12")) {
    
			 print (HTMLFILE "<td align=center>".print_prach_confn_pos(2,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_prach_confn_pos(2,5)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_prach_confn_pos(2,4)."</td>\n");   
		
		
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_prach_confn_pos(2,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_prach_confn_pos(2,5)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_prach_confn_pos(2,4)."</td>\n");  			 
		 
		 }
    } 

	

 print (HTMLFILE "</td>\n");
 print (HTMLFILE "</tr>\n");
}

 
 print (HTMLFILE "</table>\n");
 
# }  


##############RTRV-C1XRTT-PREG

print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=12 align=center bgcolor=#EEEEEE><b>RTRV-C1XRTT-PREG</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>CELL_NUM</th><th align=center>CSFB_PRE_REG_USAGE</th><th align=center>SID</th><th align=center>NID</th><th align=center>MULTIPLE_SID</th><th align=center>MULTIPLE_NID</th><th align=center>HOME_REG</th><th align=center>FOREIGN_SID_REG</th><th align=center>FOREIGN_NID_REG</th><th align=center>PARAMETER_REG</th></tr>\n");  
  
parse_c1xrtt_preg_get ();
	# my $row=0;
	# my $col=0;

for ($row=0; $row < get_size_c1xrtt_preg_arr();$row = $row + 1) {  
        #print_c1xrtt_preg_pos
		if (print_c1xrtt_preg_pos($row,1)==0){
		if ((print_c1xrtt_preg_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21)&& print_c1xrtt_preg_pos($row,2) eq "use")){
    
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(0,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(0,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(0,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(0,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(0,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(0,6)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(0,7)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(0,8)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(0,9)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(0,10)."</td>\n"); 
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(0,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(0,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(0,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(0,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(0,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(0,6)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(0,7)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(0,8)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(0,9)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(0,10)."</td>\n");
		 
		 }  
	}
	
		if (print_c1xrtt_preg_pos($row,1)== 1){
		if ((print_c1xrtt_preg_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21)&& print_c1xrtt_preg_pos($row,2) eq "use")){
    
    
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(1,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(1,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(1,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(1,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(1,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(1,6)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(1,7)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(1,8)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(1,9)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(1,10)."</td>\n"); 
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(1,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(1,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(1,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(1,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(1,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(1,6)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(1,7)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(1,8)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(1,9)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(1,10)."</td>\n");
		 
		 }  
	}

	if (print_c1xrtt_preg_pos($row,1)==3){
		if ((print_c1xrtt_preg_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21)&& print_c1xrtt_preg_pos($row,2) eq "use")){
    
    
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(2,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(2,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(2,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(2,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(2,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(2,6)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(2,7)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(2,8)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(2,9)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(2,10)."</td>\n"); 
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(2,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(2,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(2,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(2,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(2,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(2,6)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(2,7)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(2,8)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(2,9)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(2,10)."</td>\n");
		 
		 }  
	}
	
	if (print_c1xrtt_preg_pos($row,1)==4){
		if ((print_c1xrtt_preg_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21)&& print_c1xrtt_preg_pos($row,2) eq "use")){
    
    
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(3,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(3,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(3,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(3,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(3,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(3,6)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(3,7)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(3,8)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(3,9)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(3,10)."</td>\n"); 
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(3,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(3,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(3,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(3,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(3,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(3,6)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(3,7)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(3,8)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(3,9)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(3,10)."</td>\n");
		 
		 }  
	}
	
	
	if (print_c1xrtt_preg_pos($row,1)==5){
		if ((print_c1xrtt_preg_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21)&& print_c1xrtt_preg_pos($row,2) eq "use")){
    
    
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(4,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(4,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(4,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(4,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(4,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(4,6)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(4,7)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(4,8)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(4,9)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(4,10)."</td>\n"); 
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(4,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(4,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(4,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(4,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(4,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(4,6)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(4,7)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(4,8)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(4,9)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(4,10)."</td>\n");
		 
		 }  
	}
	
	if (print_c1xrtt_preg_pos($row,1)==6){
		if ((print_c1xrtt_preg_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21)&& print_c1xrtt_preg_pos($row,2) eq "use")){
    
    
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(5,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(5,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(5,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(5,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(5,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(5,6)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(5,7)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(5,8)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(5,9)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(5,10)."</td>\n"); 
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(5,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(5,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(5,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(5,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(5,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(5,6)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(5,7)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(5,8)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(5,9)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(5,10)."</td>\n");
		 
		 }  
	}
	
	if (print_c1xrtt_preg_pos($row,1)==7){
		if ((print_c1xrtt_preg_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21)&& print_c1xrtt_preg_pos($row,2) eq "use")){
    
    
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(6,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(6,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(6,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(6,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(6,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(6,6)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(6,7)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(6,8)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(6,9)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(6,10)."</td>\n"); 
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(6,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(6,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(6,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(6,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(6,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(6,6)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(6,7)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(6,8)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(6,9)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(6,10)."</td>\n");
		 
		 }  
	}
	
		if (print_c1xrtt_preg_pos($row,1)==8){
		if ((print_c1xrtt_preg_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21)&& print_c1xrtt_preg_pos($row,2) eq "use")){
    
    
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(7,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(7,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(7,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(7,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(7,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(7,6)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(7,7)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(7,8)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(7,9)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(7,10)."</td>\n"); 
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(7,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(7,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(7,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(7,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(7,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(7,6)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(7,7)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(7,8)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(7,9)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(7,10)."</td>\n");
		 
		 }  
	}
	
	if (print_c1xrtt_preg_pos($row,1)==9){
		if ((print_c1xrtt_preg_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21)&& print_c1xrtt_preg_pos($row,2) eq "use")){
    
    
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(8,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(8,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(8,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(8,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(8,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(8,6)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(8,7)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(8,8)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(8,9)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(8,10)."</td>\n"); 
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(8,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(8,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(8,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(8,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(8,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(8,6)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(8,7)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(8,8)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(8,9)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(8,10)."</td>\n");
		 
		 }  
	}
	
	if (print_c1xrtt_preg_pos($row,1)==10){
		if ((print_c1xrtt_preg_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21)&& print_c1xrtt_preg_pos($row,2) eq "use")){
    
    
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(9,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(9,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(9,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(9,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(9,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(9,6)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(9,7)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(9,8)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(9,9)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(9,10)."</td>\n"); 
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(9,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(9,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(9,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(9,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(9,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(9,6)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(9,7)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(9,8)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(9,9)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(9,10)."</td>\n");
		 
		 }  
	}
	
		if (print_c1xrtt_preg_pos($row,1)==12){
		if ((print_c1xrtt_preg_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21)&& print_c1xrtt_preg_pos($row,2) eq "use")){
    
    
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(10,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(10,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(10,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(10,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(10,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(10,6)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(10,7)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(10,8)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(10,9)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(10,10)."</td>\n"); 
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(10,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(10,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(10,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(10,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(10,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(10,6)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(10,7)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(10,8)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(10,9)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(10,10)."</td>\n");
		 
		 }  
	}
	
		if (print_c1xrtt_preg_pos($row,1)==13){
		if ((print_c1xrtt_preg_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21)&& print_c1xrtt_preg_pos($row,2) eq "use")){
    
    
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(11,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(11,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(11,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(11,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(11,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(11,6)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(11,7)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(11,8)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(11,9)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(11,10)."</td>\n"); 
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(11,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(11,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(11,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(11,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(11,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(11,6)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(11,7)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(11,8)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(11,9)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(11,10)."</td>\n");
		 
		 }  
	}
	
		if (print_c1xrtt_preg_pos($row,1)==14){
		if ((print_c1xrtt_preg_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21)&& print_c1xrtt_preg_pos($row,2) eq "use")){
    
    
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(12,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(12,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(12,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(12,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(12,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(12,6)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(12,7)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(12,8)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(12,9)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(12,10)."</td>\n"); 
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(12,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(12,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(12,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(12,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(12,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(12,6)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(12,7)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(12,8)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(12,9)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(12,10)."</td>\n");
		 
		 }  
	}
	
	if (print_c1xrtt_preg_pos($row,1)==18){
		if ((print_c1xrtt_preg_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21)&& print_c1xrtt_preg_pos($row,2) eq "use")){
    
    
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(13,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(13,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(13,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(13,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(13,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(13,6)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(13,7)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(13,8)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(13,9)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(13,10)."</td>\n"); 
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(13,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(13,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(13,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(13,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(13,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(13,6)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(13,7)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(13,8)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(13,9)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(13,10)."</td>\n");
		
		 }  
	}
	
	if (print_c1xrtt_preg_pos($row,1)==19){
		if ((print_c1xrtt_preg_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21)&& print_c1xrtt_preg_pos($row,2) eq "use")){
    
    
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(14,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(14,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(14,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(14,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(14,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(14,6)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(14,7)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(14,8)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(14,9)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_c1xrtt_preg_pos(14,10)."</td>\n"); 
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(14,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(14,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(14,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(14,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(14,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(14,6)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(14,7)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(14,8)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(14,9)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_c1xrtt_preg_pos(14,10)."</td>\n");
		
		 }  
	}
	
	
	
 print (HTMLFILE "</td>\n");
 print (HTMLFILE "</tr>\n");
 
}

 
 print (HTMLFILE "</table>\n");
 
# }  

####################CELL_CAC

print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td align=center colspan=20 bgcolor=#EEEEEE><b>CELL-CAC</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>CELL_NUM</th><th align=center>CELL-CAC</th><th align=center>MAX_CALL_COUNT</th><th align=center>CALL_CAC_THRESH_FOR_NORMAL[%]</th><th align=center>CALL_CAC_THRESH_FOR_EMER[%]</th><th align=center>CALL_CAC_THRESH_FOR_HO[%]</th><th align=center>CALL_CAC_THRESH_FOR_MO_SIG[%]</th><th align=center>CALL_CAC_THRESH_FOR_MT_ACCESS[%]</th><th align=center>DRB_COUNT_CAC_USAGE</th><th align=center>MAX_DRB_COUNT</th><th align=center>DRB_CAC_THRESH_FOR_NORMAL[%]</th><th align=center>DRB_CAC_THRESH_FOR_EMER_HO[%]</th><th align=center>QOS_CAC_OPTION</th><th align=center>QOS_POLICY_OPTION</th><th align=center>PRB_REPORT_PERIOD</th><th align=center>ESTIMATION_OPT</th><th align=center>PREEMPTION_FLAG</th><th align=center>BH_BW_CAC_USAGE</th><th align=center>BH_BW_CAC_OPTION</th><th align=center>QCI_DRB_CAC_USAGE</th><th align=center>LB_REDIRECTION_USAGE</th><th align=center>ADAPTIVE_SHARING_USAGE</th><th align=center>RS_PREEMPTION_OPTION</th><th align=center>MAX_CA_CALL_COUNT</th><th align=center>LOW_CALL_REL_OPTION</th><th align=center>EMERGENCY_ARP_PRIORITY</th></tr>\n");  


parse_cell_cac_get ();

for ($row=0; $row < get_size_cell_cac_arr();$row = $row + 1) {  
        #print_cell_cac_pos
		if (print_cell_cac_pos($row,1)== 0){
		if (print_cell_cac_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21) && ((print_cell_cac_pos($row,2) eq "use"))){    
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(0,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(0,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(0,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(0,4)."</td>\n");     
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(0,5)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(0,6)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(0,7)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(0,8)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(0,9)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(0,10)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(0,11)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(0,12)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(0,13)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(0,14)."</td>\n");     
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(0,15)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(0,16)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(0,17)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(0,18)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(0,19)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(0,20)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(0,21)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(0,22)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(0,23)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(0,24)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(0,25)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(0,26)."</td>\n");
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(0,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(0,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(0,3)."</td>\n");  
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(0,4)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(0,5)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(0,6)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(0,7)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(0,8)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(0,9)."</td>\n");			 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(0,10)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(0,11)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(0,12)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(0,13)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(0,14)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(0,15)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(0,16)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(0,17)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(0,18)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(0,19)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(0,20)."</td>\n");			 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(0,21)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(0,22)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(0,23)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(0,24)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(0,25)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(0,26)."</td>\n"); 
	 }  
	}
	
	if (print_cell_cac_pos($row,1)== 1){
		if (print_cell_cac_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21) && ((print_cell_cac_pos($row,2) eq "use"))){    
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(1,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(1,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(1,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(1,4)."</td>\n");     
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(1,5)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(1,6)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(1,7)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(1,8)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(1,9)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(1,10)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(1,11)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(1,12)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(1,13)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(1,14)."</td>\n");     
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(1,15)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(1,16)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(1,17)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(1,18)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(1,19)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(1,20)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(1,21)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(1,22)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(1,23)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(1,24)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(1,25)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(1,26)."</td>\n");
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(1,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(1,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(1,3)."</td>\n");  
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(1,4)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(1,5)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(1,6)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(1,7)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(1,8)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(1,9)."</td>\n");			 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(1,10)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(1,11)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(1,12)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(1,13)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(1,14)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(1,15)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(1,16)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(1,17)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(1,18)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(1,19)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(1,20)."</td>\n");			 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(1,21)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(1,22)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(1,23)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(1,24)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(1,25)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(1,26)."</td>\n"); 
	 }  
	}
	

	if (print_cell_cac_pos($row,1)== 3){
		if (print_cell_cac_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21) && ((print_cell_cac_pos($row,2) eq "use"))){    
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(2,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(2,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(2,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(2,4)."</td>\n");     
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(2,5)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(2,6)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(2,7)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(2,8)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(2,9)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(2,10)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(2,11)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(2,12)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(2,13)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(2,14)."</td>\n");     
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(2,15)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(2,16)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(2,17)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(2,18)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(2,19)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(2,20)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(2,21)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(2,22)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(2,23)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(2,24)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(2,25)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(2,26)."</td>\n");
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(2,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(2,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(2,3)."</td>\n");  
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(2,4)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(2,5)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(2,6)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(2,7)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(2,8)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(2,9)."</td>\n");			 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(2,10)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(2,11)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(2,12)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(2,13)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(2,14)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(2,15)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(2,16)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(2,17)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(2,18)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(2,19)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(2,20)."</td>\n");			 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(2,21)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(2,22)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(2,23)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(2,24)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(2,25)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(2,26)."</td>\n"); 
	 }  
	}
	
	if (print_cell_cac_pos($row,1)== 4){
		if (print_cell_cac_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21) && ((print_cell_cac_pos($row,2) eq "use"))){    
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(3,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(3,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(3,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(3,4)."</td>\n");     
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(3,5)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(3,6)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(3,7)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(3,8)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(3,9)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(3,10)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(3,11)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(3,12)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(3,13)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(3,14)."</td>\n");     
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(3,15)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(3,16)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(3,17)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(3,18)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(3,19)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(3,20)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(3,21)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(3,22)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(3,23)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(3,24)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(3,25)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(3,26)."</td>\n");
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(3,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(3,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(3,3)."</td>\n");  
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(3,4)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(3,5)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(3,6)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(3,7)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(3,8)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(3,9)."</td>\n");			 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(3,10)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(3,11)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(3,12)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(3,13)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(3,14)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(3,15)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(3,16)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(3,17)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(3,18)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(3,19)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(3,20)."</td>\n");			 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(3,21)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(3,22)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(3,23)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(3,24)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(3,25)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(3,26)."</td>\n"); 
	 }  
	}
	
	
		if (print_cell_cac_pos($row,1)== 5){
		if (print_cell_cac_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21) && ((print_cell_cac_pos($row,2) eq "use"))){    
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(4,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(4,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(4,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(4,4)."</td>\n");     
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(4,5)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(4,6)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(4,7)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(4,8)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(4,9)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(4,10)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(4,11)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(4,12)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(4,13)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(4,14)."</td>\n");     
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(4,15)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(4,16)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(4,17)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(4,18)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(4,19)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(4,20)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(4,21)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(4,22)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(4,23)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(4,24)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(4,25)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(4,26)."</td>\n");
			 }
		
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(4,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(4,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(4,3)."</td>\n");  
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(4,4)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(4,5)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(4,6)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(4,7)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(4,8)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(4,9)."</td>\n");			 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(4,10)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(4,11)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(4,12)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(4,13)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(4,14)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(4,15)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(4,16)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(4,17)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(4,18)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(4,19)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(4,20)."</td>\n");			 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(4,21)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(4,22)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(4,23)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(4,24)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(4,25)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(4,26)."</td>\n"); 
	 }  
	}
	
	if (print_cell_cac_pos($row,1)== 6){
		if (print_cell_cac_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21) && ((print_cell_cac_pos($row,2) eq "use"))){    
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(5,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(5,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(5,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(5,4)."</td>\n");     
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(5,5)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(5,6)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(5,7)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(5,8)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(5,9)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(5,10)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(5,11)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(5,12)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(5,13)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(5,14)."</td>\n");     
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(5,15)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(5,16)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(5,17)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(5,18)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(5,19)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(5,20)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(5,21)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(5,22)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(5,23)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(5,24)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(5,25)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(5,26)."</td>\n");
			 }
		
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(5,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(5,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(5,3)."</td>\n");  
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(5,4)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(5,5)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(5,6)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(5,7)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(5,8)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(5,9)."</td>\n");			 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(5,10)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(5,11)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(5,12)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(5,13)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(5,14)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(5,15)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(5,16)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(5,17)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(5,18)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(5,19)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(5,20)."</td>\n");			 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(5,21)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(5,22)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(5,23)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(5,24)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(5,25)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(5,26)."</td>\n"); 
	 }  
	}
	
	if (print_cell_cac_pos($row,1)== 7){
		if (print_cell_cac_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21) && ((print_cell_cac_pos($row,2) eq "use"))){    
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(6,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(6,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(6,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(6,4)."</td>\n");     
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(6,5)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(6,6)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(6,7)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(6,8)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(6,9)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(6,10)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(6,11)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(6,12)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(6,13)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(6,14)."</td>\n");     
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(6,15)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(6,16)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(6,17)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(6,18)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(6,19)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(6,20)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(6,21)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(6,22)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(6,23)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(6,24)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(6,25)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(6,26)."</td>\n");
			 }
		
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(6,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(6,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(6,3)."</td>\n");  
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(6,4)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(6,5)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(6,6)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(6,7)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(6,8)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(6,9)."</td>\n");			 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(6,10)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(6,11)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(6,12)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(6,13)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(6,14)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(6,15)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(6,16)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(6,17)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(6,18)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(6,19)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(6,20)."</td>\n");			 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(6,21)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(6,22)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(6,23)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(6,24)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(6,25)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(6,26)."</td>\n"); 
	 }  
	}
	
	if (print_cell_cac_pos($row,1)== 8){
		if (print_cell_cac_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21) && ((print_cell_cac_pos($row,2) eq "use"))){    
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(7,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(7,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(7,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(7,4)."</td>\n");     
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(7,5)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(7,6)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(7,7)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(7,8)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(7,9)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(7,10)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(7,11)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(7,12)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(7,13)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(7,14)."</td>\n");     
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(7,15)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(7,16)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(7,17)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(7,18)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(7,19)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(7,20)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(7,21)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(7,22)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(7,23)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(7,24)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(7,25)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(7,26)."</td>\n");
			 }
		
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(7,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(7,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(7,3)."</td>\n");  
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(7,4)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(7,5)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(7,6)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(7,7)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(7,8)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(7,9)."</td>\n");			 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(7,10)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(7,11)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(7,12)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(7,13)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(7,14)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(7,15)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(7,16)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(7,17)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(7,18)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(7,19)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(7,20)."</td>\n");			 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(7,21)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(7,22)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(7,23)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(7,24)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(7,25)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(7,26)."</td>\n"); 
	 }  
	}
	
	if (print_cell_cac_pos($row,1)== 9){
		if (print_cell_cac_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21) && ((print_cell_cac_pos($row,2) eq "use"))){    
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(8,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(8,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(8,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(8,4)."</td>\n");     
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(8,5)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(8,6)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(8,7)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(8,8)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(8,9)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(8,10)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(8,11)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(8,12)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(8,13)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(8,14)."</td>\n");     
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(8,15)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(8,16)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(8,17)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(8,18)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(8,19)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(8,20)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(8,21)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(8,22)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(8,23)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(8,24)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(8,25)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(8,26)."</td>\n");
			 }
		
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(8,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(8,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(8,3)."</td>\n");  
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(8,4)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(8,5)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(8,6)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(8,7)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(8,8)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(8,9)."</td>\n");			 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(8,10)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(8,11)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(8,12)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(8,13)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(8,14)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(8,15)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(8,16)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(8,17)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(8,18)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(8,19)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(8,20)."</td>\n");			 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(8,21)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(8,22)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(8,23)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(8,24)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(8,25)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(8,26)."</td>\n"); 
	 }  
	}
	
	if (print_cell_cac_pos($row,1)== 10){
		if (print_cell_cac_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21) && ((print_cell_cac_pos($row,2) eq "use"))){    
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(9,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(9,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(9,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(9,4)."</td>\n");     
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(9,5)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(9,6)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(9,7)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(9,8)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(9,9)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(9,10)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(9,11)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(9,12)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(9,13)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(9,14)."</td>\n");     
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(9,15)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(9,16)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(9,17)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(9,18)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(9,19)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(9,20)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(9,21)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(9,22)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(9,23)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(9,24)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(9,25)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(9,26)."</td>\n");
			 }
		
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(9,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(9,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(9,3)."</td>\n");  
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(9,4)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(9,5)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(9,6)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(9,7)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(9,8)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(9,9)."</td>\n");			 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(9,10)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(9,11)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(9,12)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(9,13)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(9,14)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(9,15)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(9,16)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(9,17)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(9,18)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(9,19)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(9,20)."</td>\n");			 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(9,21)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(9,22)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(9,23)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(9,24)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(9,25)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(9,26)."</td>\n"); 
	 }  
	}
	
	if (print_cell_cac_pos($row,1)== 12){
		if (print_cell_cac_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21) && ((print_cell_cac_pos($row,2) eq "use"))){    
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(10,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(10,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(10,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(10,4)."</td>\n");     
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(10,5)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(10,6)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(10,7)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(10,8)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(10,9)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(10,10)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(10,11)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(10,12)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(10,13)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(10,14)."</td>\n");     
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(10,15)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(10,16)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(10,17)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(10,18)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(10,19)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(10,20)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(10,21)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(10,22)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(10,23)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(10,24)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(10,25)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(10,26)."</td>\n");
			 }
		
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(10,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(10,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(10,3)."</td>\n");  
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(10,4)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(10,5)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(10,6)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(10,7)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(10,8)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(10,9)."</td>\n");			 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(10,10)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(10,11)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(10,12)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(10,13)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(10,14)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(10,15)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(10,16)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(10,17)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(10,18)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(10,19)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(10,20)."</td>\n");			 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(10,21)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(10,22)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(10,23)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(10,24)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(10,25)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(10,26)."</td>\n"); 
	 }  
	}
	
	if (print_cell_cac_pos($row,1)== 13){
		if (print_cell_cac_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21) && ((print_cell_cac_pos($row,2) eq "use"))){    
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(11,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(11,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(11,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(11,4)."</td>\n");     
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(11,5)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(11,6)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(11,7)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(11,8)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(11,9)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(11,10)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(11,11)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(11,12)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(11,13)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(11,14)."</td>\n");     
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(11,15)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(11,16)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(11,17)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(11,18)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(11,19)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(11,20)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(11,21)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(11,22)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(11,23)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(11,24)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(11,25)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(11,26)."</td>\n");
			 }
		
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(11,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(11,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(11,3)."</td>\n");  
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(11,4)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(11,5)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(11,6)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(11,7)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(11,8)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(11,9)."</td>\n");			 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(11,10)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(11,11)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(11,12)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(11,13)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(11,14)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(11,15)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(11,16)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(11,17)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(11,18)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(11,19)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(11,20)."</td>\n");			 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(11,21)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(11,22)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(11,23)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(11,24)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(11,25)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(11,26)."</td>\n"); 
	 }  
	}
	
	if (print_cell_cac_pos($row,1)== 14){
		if (print_cell_cac_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21) && ((print_cell_cac_pos($row,2) eq "use"))){    
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(12,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(12,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(12,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(12,4)."</td>\n");     
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(12,5)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(12,6)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(12,7)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(12,8)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(12,9)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(12,10)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(12,11)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(12,12)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(12,13)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(12,14)."</td>\n");     
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(12,15)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(12,16)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(12,17)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(12,18)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(12,19)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(12,20)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(12,21)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(12,22)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(12,23)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(12,24)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(12,25)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(12,26)."</td>\n");
			 }
		
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(12,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(12,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(12,3)."</td>\n");  
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(12,4)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(12,5)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(12,6)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(12,7)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(12,8)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(12,9)."</td>\n");			 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(12,10)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(12,11)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(12,12)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(12,13)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(12,14)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(12,15)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(12,16)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(12,17)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(12,18)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(12,19)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(12,20)."</td>\n");			 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(12,21)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(12,22)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(12,23)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(12,24)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(12,25)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(12,26)."</td>\n"); 
	 }  
	}
	
	if (print_cell_cac_pos($row,1)== 18){
		if (print_cell_cac_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21) && ((print_cell_cac_pos($row,2) eq "use"))){    
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(13,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(13,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(13,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(13,4)."</td>\n");     
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(13,5)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(13,6)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(13,7)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(13,8)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(13,9)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(13,10)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(13,11)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(13,12)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(13,13)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(13,14)."</td>\n");     
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(13,15)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(13,16)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(13,17)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(13,18)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(13,19)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(13,20)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(13,21)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(13,22)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(13,23)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(13,24)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(13,25)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(13,26)."</td>\n");
			 }
		
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(13,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(13,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(13,3)."</td>\n");  
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(13,4)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(13,5)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(13,6)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(13,7)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(13,8)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(13,9)."</td>\n");			 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(13,10)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(13,11)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(13,12)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(13,13)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(13,14)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(13,15)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(13,16)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(13,17)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(13,18)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(13,19)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(13,20)."</td>\n");			 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(13,21)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(13,22)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(13,23)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(13,24)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(13,25)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(13,26)."</td>\n"); 
	 }  
	}
	
	if (print_cell_cac_pos($row,1)== 19){
		if (print_cell_cac_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21) && ((print_cell_cac_pos($row,2) eq "use"))){    
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(14,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(14,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(14,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(14,4)."</td>\n");     
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(14,5)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(14,6)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(14,7)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(14,8)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(14,9)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(14,10)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(14,11)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(14,12)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(14,13)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(14,14)."</td>\n");     
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(14,15)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(14,16)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(14,17)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(14,18)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(14,19)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(14,20)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(14,21)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(14,22)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(14,23)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(14,24)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(14,25)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_cac_pos(14,26)."</td>\n");
			 }
		
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(14,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(14,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(14,3)."</td>\n");  
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(14,4)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(14,5)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(14,6)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(14,7)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(14,8)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(14,9)."</td>\n");			 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(14,10)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(14,11)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(14,12)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(14,13)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(14,14)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(14,15)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(14,16)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(14,17)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(14,18)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(14,19)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(14,20)."</td>\n");			 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(14,21)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(14,22)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(14,23)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(14,24)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(14,25)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_cac_pos(14,26)."</td>\n"); 
	 }  
	}
	
 print (HTMLFILE "</td>\n");
 print (HTMLFILE "</tr>\n");
 
}
 
 print (HTMLFILE "</table>\n");
 
# }  



############################################CELL-UECNT

print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=11 align=center bgcolor=#EEEEEE><b>CELL-UECNT</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>CELL_NUM</th><th align=center>ACTIVE_UECOUNT</th><th align=center>CELL-UECNT</th><th align=center>H_PRIORITY_AC_UECOUNT</th><th align=center>M_TERM_AC_UECOUNT</th><th align=center>M_ORG_SIGNAL_AC_UECOUNT</th><th align=center>M_ORG_DATA_AC_UECOUNT</th><th align=center>RELOCATE_HOCOUNT</th><th align=center>DTA_UECOUNT</th><th S_CELL_UE_COUNT</th></tr>\n");  
  
parse_cell_uecnt_get();

for ($row=0; $row<get_size_cell_uecnt_arr(); $row = $row + 1) {  
        #print_cell_info_pos
	if (print_cell_uecnt_pos($row,1) == 0){
		if ((print_cell_uecnt_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21) )) {
    
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(0,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(0,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(0,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(0,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(0,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(0,6)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(0,7)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(0,8)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(0,9)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(0,10)."</td>\n"); 
		
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(0,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(0,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(0,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(0,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(0,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(0,6)."</td>\n"); 
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(0,7)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(0,8)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(0,9)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(0,10)."</td>\n"); 			 
		 
		 } 
    }  
	if (print_cell_uecnt_pos($row,1) == 1){
		if ((print_cell_uecnt_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21) )) {
    
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(1,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(1,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(1,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(1,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(1,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(1,6)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(1,7)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(1,8)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(1,9)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(1,10)."</td>\n"); 
		
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(1,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(1,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(1,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(1,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(1,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(1,6)."</td>\n"); 
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(1,7)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(1,8)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(1,9)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(1,10)."</td>\n"); 			 
		 
		 } 
    }  

    	if (print_cell_uecnt_pos($row,1) == 3){
		if ((print_cell_uecnt_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21) )) {
    
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(2,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(2,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(2,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(2,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(2,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(2,6)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(2,7)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(2,8)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(2,9)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(2,10)."</td>\n"); 
		
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(2,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(2,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(2,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(2,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(2,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(2,6)."</td>\n"); 
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(2,7)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(2,8)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(2,9)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(2,10)."</td>\n"); 			 
		 
		 } 
    }  

	if (print_cell_uecnt_pos($row,1) == 4){
		if ((print_cell_uecnt_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21) )) {
    
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(3,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(3,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(3,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(3,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(3,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(3,6)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(3,7)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(3,8)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(3,9)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(3,10)."</td>\n"); 
		
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(3,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(3,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(3,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(3,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(3,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(3,6)."</td>\n"); 
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(3,7)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(3,8)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(3,9)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(3,10)."</td>\n"); 			 
		 
		 } 
    }  
    	if (print_cell_uecnt_pos($row,1) == 5){
		if ((print_cell_uecnt_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21) )) {
    
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(4,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(4,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(4,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(4,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(4,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(4,6)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(4,7)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(4,8)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(4,9)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(4,10)."</td>\n"); 
		
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(4,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(4,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(4,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(4,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(4,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(4,6)."</td>\n"); 
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(4,7)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(4,8)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(4,9)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(4,10)."</td>\n"); 			 
		 
		 } 
    }  

    	if (print_cell_uecnt_pos($row,1) == 6){
		if ((print_cell_uecnt_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21) )) {
    
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(5,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(5,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(5,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(5,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(5,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(5,6)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(5,7)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(5,8)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(5,9)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(5,10)."</td>\n"); 
		
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(5,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(5,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(5,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(5,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(5,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(5,6)."</td>\n"); 
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(5,7)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(5,8)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(5,9)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(5,10)."</td>\n"); 			 
		 
		 } 
    }  

	if (print_cell_uecnt_pos($row,1) == 7){
		if ((print_cell_uecnt_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21) )) {
    
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(6,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(6,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(6,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(6,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(6,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(6,6)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(6,7)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(6,8)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(6,9)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(6,10)."</td>\n"); 
		
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(6,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(6,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(6,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(6,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(6,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(6,6)."</td>\n"); 
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(6,7)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(6,8)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(6,9)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(6,10)."</td>\n"); 			 
		 
		 } 
    }  

	if (print_cell_uecnt_pos($row,1) == 8){
		if ((print_cell_uecnt_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21) )) {
    
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(7,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(7,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(7,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(7,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(7,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(7,6)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(7,7)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(7,8)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(7,9)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(7,10)."</td>\n"); 
		
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(7,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(7,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(7,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(7,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(7,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(7,6)."</td>\n"); 
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(7,7)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(7,8)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(7,9)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(7,10)."</td>\n"); 			 
		 
		 } 
    }  
	if (print_cell_uecnt_pos($row,1) == 9){
		if ((print_cell_uecnt_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21) )) {
    
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(8,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(8,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(8,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(8,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(8,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(8,6)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(8,7)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(8,8)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(8,9)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(8,10)."</td>\n"); 
		
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(8,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(8,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(8,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(8,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(8,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(8,6)."</td>\n"); 
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(8,7)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(8,8)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(8,9)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(8,10)."</td>\n"); 			 
		 
		 } 
    } 
	if (print_cell_uecnt_pos($row,1) == 10){
		if ((print_cell_uecnt_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21) )) {
    
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(9,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(9,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(9,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(9,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(9,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(9,6)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(9,7)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(9,8)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(9,9)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(9,10)."</td>\n"); 
		
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(9,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(9,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(9,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(9,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(9,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(9,6)."</td>\n"); 
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(9,7)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(9,8)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(9,9)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(9,10)."</td>\n"); 			 
		
		 } 
    } 

	if (print_cell_uecnt_pos($row,1) == 12){
		if ((print_cell_uecnt_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21) )) {
    
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(10,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(10,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(10,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(10,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(10,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(10,6)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(10,7)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(10,8)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(10,9)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(10,10)."</td>\n"); 
		
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(10,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(10,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(10,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(10,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(10,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(10,6)."</td>\n"); 
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(10,7)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(10,8)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(10,9)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(10,10)."</td>\n"); 			 
		 
		 } 
    } 
	if (print_cell_uecnt_pos($row,1) == 13){
		if ((print_cell_uecnt_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21) )) {
    
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(11,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(11,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(11,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(11,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(11,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(11,6)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(11,7)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(11,8)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(11,9)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(11,10)."</td>\n"); 
		
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(11,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(11,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(11,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(11,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(11,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(11,6)."</td>\n"); 
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(11,7)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(11,8)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(11,9)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(11,10)."</td>\n"); 			 
		 
		 } 
    } 

    	if (print_cell_uecnt_pos($row,1) == 14){
		if ((print_cell_uecnt_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21) )) {
    
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(12,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(12,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(12,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(12,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(12,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(12,6)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(12,7)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(12,8)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(12,9)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(12,10)."</td>\n"); 
		
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(12,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(12,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(12,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(12,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(12,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(12,6)."</td>\n"); 
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(12,7)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(12,8)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(12,9)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(12,10)."</td>\n"); 			 
		 
		 } 
    } 

    	if (print_cell_uecnt_pos($row,1) == 18){
		if ((print_cell_uecnt_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21) )) {
    
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(13,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(13,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(13,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(13,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(13,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(13,6)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(13,7)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(13,8)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(13,9)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(13,10)."</td>\n"); 
		
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(13,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(13,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(13,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(13,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(13,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(13,6)."</td>\n"); 
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(13,7)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(13,8)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(13,9)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(13,10)."</td>\n"); 			 
		 
		 } 
    } 

    	if (print_cell_uecnt_pos($row,1) == 19){
		if ((print_cell_uecnt_pos($row,1) eq ret_vendor_ciq_info2($cascade,$eNBName,0,21) )) {
    
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(14,1)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(14,2)."</td>\n");  
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(14,3)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(14,4)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(14,5)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(14,6)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(14,7)."</td>\n");
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(14,8)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(14,9)."</td>\n"); 
			 print (HTMLFILE "<td align=center>".print_cell_uecnt_pos(14,10)."</td>\n"); 
		
		}
		else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(14,1)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(14,2)."</td>\n");
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(14,3)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(14,4)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(14,5)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(14,6)."</td>\n"); 
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(14,7)."</td>\n");    
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(14,8)."</td>\n"); 
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(14,9)."</td>\n");  
             print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_uecnt_pos(14,10)."</td>\n"); 			 
		 
		 } 
    } 


    print (HTMLFILE "</td>\n");
    print (HTMLFILE "</tr>\n");

                    
   }                 
                    
print (HTMLFILE "</table>\n"); 


############################################


    
#################################


# #############################gps-invt


print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=11 align=center bgcolor=#EEEEEE><b>RTRV-GPS-INVT</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>UNIT_ID</th><th align=center>VERSION</th><th align=center>FW_VERSION</th><th align=center>SERIAL</th><th align=center>VENDOR</th></tr>\n");  
  

parse_gps_invt_field_value();
# my $val=fetch_gps_invt_value_by_pos(1);
# print "val=".$val;
#exit;

  
	if (fetch_gps_invt_value_by_pos(1) eq "UCCM[0]"){
     
		 print (HTMLFILE "<td align=center>".fetch_gps_invt_value_by_pos(1)."</td>\n");  
		
     } else {
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".fetch_gps_invt_value_by_pos(1)."</td>\n");
   
	 }   
     

     if ((fetch_gps_invt_value_by_pos(5) eq "1.0.0.2")) {
		 print (HTMLFILE "<td align=center>".fetch_gps_invt_value_by_pos(5)."</td>\n");  
		
     } else {
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".fetch_gps_invt_value_by_pos(5)."</td>\n");
   
	 }   


  

     if ((fetch_gps_invt_value_by_pos(6) eq "NA218181721")) {
		 print (HTMLFILE "<td align=center>".fetch_gps_invt_value_by_pos(6)."</td>\n");  
		
     } else {
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".fetch_gps_invt_value_by_pos(6)."</td>\n");
   
	 }  

     
     if ((fetch_gps_invt_value_by_pos(7) eq "SAMSUNG")) {
		 print (HTMLFILE "<td align=center>".fetch_gps_invt_value_by_pos(7)."</td>\n");  
		
     } else {
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".fetch_gps_invt_value_by_pos(7)."</td>\n");
   
	 }   
     

     if ((fetch_gps_invt_value_by_pos(16) eq "0.0.0.2")) {
		 print (HTMLFILE "<td align=center>".fetch_gps_invt_value_by_pos(16)."</td>\n");  
		
     } else {
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".fetch_gps_invt_value_by_pos(16)."</td>\n");
   
	 }   
     

    print (HTMLFILE "</td>\n");
    print (HTMLFILE "</tr>\n"); 

	print (HTMLFILE "</table>\n");    

###################################################SYS-CONF

print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=11 align=center bgcolor=#EEEEEE><b>SYS-CONF</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>SYS_ID</th><th align=center>STATUS</th><th align=center>ADMINISTRATIVE_STATE</th><th align=center>TYPE</th><th align=center>SYS_TYPE</th></tr>\n");  
 
parse_sys_conf_field_value();

if (fetch_sys_conf_value_by_pos(0)){
     
		 print (HTMLFILE "<td align=center>".fetch_sys_conf_value_by_pos(0)."</td>\n");  
		
     } else {
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".fetch_sys_conf_value_by_pos(0)."</td>\n");
   
	 } 

if (fetch_sys_conf_value_by_pos(1) eq "EQUIP"){
     
		 print (HTMLFILE "<td align=center>".fetch_sys_conf_value_by_pos(1)."</td>\n");  
		
     } else {
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".fetch_sys_conf_value_by_pos(1)."</td>\n");
   
	 } 

 if (fetch_sys_conf_value_by_pos(2) eq "unlocked"){
 
	 print (HTMLFILE "<td align=center>".fetch_sys_conf_value_by_pos(2)."</td>\n");  
	
 } else {
	 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".fetch_sys_conf_value_by_pos(2)."</td>\n");

 } 

 if (fetch_sys_conf_value_by_pos(3) eq "ENB"){
 
	 print (HTMLFILE "<td align=center>".fetch_sys_conf_value_by_pos(3)."</td>\n");  
	
 } else {
	 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".fetch_sys_conf_value_by_pos(3)."</td>\n");

 } 

if (fetch_sys_conf_value_by_pos(4) eq "ADV_OUTDOOR_DIST_TYPE"){
 
	 print (HTMLFILE "<td align=center>".fetch_sys_conf_value_by_pos(4)."</td>\n");  
	
 } else {
	 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".fetch_sys_conf_value_by_pos(4)."</td>\n");

 } 

    print (HTMLFILE "</td>\n");
    print (HTMLFILE "</tr>\n"); 

	print (HTMLFILE "</table>\n"); 

# ########################################################################################################### VLAN-CONF
		print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
		print (HTMLFILE "<tr><td colspan=11 align=center bgcolor=#EEEEEE><b>RTRV-VLAN-CONF</b></td></tr>\n");
		print (HTMLFILE "<tr><th align=center>DB_INDEX</th><th align=center>VR_ID</th><th align=center>IF_NAME</th><th align=center>VLAN_ID</th><th align=center>ADMINISTRATIVE_STATE</th><th align=center>DESCRIPTION</th></tr>\n");  

		parse_vlan_conf_field_value();


		if (fetch_vlan_conf_value_by_pos(0)){
			 
				 print (HTMLFILE "<td align=center>".fetch_vlan_conf_value_by_pos(0)."</td>\n");  
				
			 } else {
				 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".fetch_vlan_conf_value_by_pos(0)."</td>\n");
		   
			 } 

		if (fetch_vlan_conf_value_by_pos(1)){
			 
				 print (HTMLFILE "<td align=center>".fetch_vlan_conf_value_by_pos(1)."</td>\n");  
				
			 } else {
				 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".fetch_vlan_conf_value_by_pos(1)."</td>\n");
		   
			 } 
		if (fetch_vlan_conf_value_by_pos(2)){
			 
				 print (HTMLFILE "<td align=center>".fetch_vlan_conf_value_by_pos(2)."</td>\n");  
				
			 } else {
				 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".fetch_vlan_conf_value_by_pos(2)."</td>\n");
		   
			 } 
			if (fetch_vlan_conf_value_by_pos(3) eq ret_vendor_ciq_info2($cascade,$eNBName,0,22)){
			 
				 print (HTMLFILE "<td align=center>".fetch_vlan_conf_value_by_pos(2)."</td>\n");  
				
			 } else {
				 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".fetch_vlan_conf_value_by_pos(2)."</td>\n");
		   
			 } 
		if (fetch_vlan_conf_value_by_pos(4) eq "linkUnlocked"){
			 
				 print (HTMLFILE "<td align=center>".fetch_vlan_conf_value_by_pos(4)."</td>\n");  
				
			 } else {
				 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".fetch_vlan_conf_value_by_pos(4)."</td>\n");
		   
			 } 

		if (fetch_vlan_conf_value_by_pos(5)){
			 
				 print (HTMLFILE "<td align=center>".fetch_vlan_conf_value_by_pos(5)."</td>\n");  
				
			 } else {
				 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".fetch_vlan_conf_value_by_pos(5)."</td>\n");
		   
			 } 



		   print (HTMLFILE "</td>\n");
			print (HTMLFILE "</tr>\n"); 

			print (HTMLFILE "</table>\n"); 


################################################GPS-STS
print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=11 align=center bgcolor=#EEEEEE><b>RTRV-GPS-STS</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>LOCK_STATE</th><th align=center>HOLDOVER_STATE</th><th align=center>LOCATION</th><th align=center>DUAL STATE</th><th align=center>SAT_ID</th></tr>\n");  



parse_gps_sts_field_value();


if (fetch_gps_sts_value_by_pos(1) eq "GPS_LOCKED" ){
     
		 print (HTMLFILE "<td align=center>".fetch_gps_sts_value_by_pos(1)."</td>\n");  
		
     } else {
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".fetch_gps_sts_value_by_pos(1)."</td>\n");
   
	 } 
if (fetch_gps_sts_value_by_pos(2) eq "GPS_NOT_HOLDOVER" ){
     
		 print (HTMLFILE "<td align=center>".fetch_gps_sts_value_by_pos(2)."</td>\n");  
		
     } else {
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".fetch_gps_sts_value_by_pos(2)."</td>\n");
   
	 } 

	 if (fetch_gps_sts_value_by_pos(3)){
     
		 print (HTMLFILE "<td align=center>".fetch_gps_sts_value_by_pos(3)."</td>\n");  
		
     } else {
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".fetch_gps_sts_value_by_pos(3)."</td>\n");
   
	 } 

if (fetch_gps_sts_value_by_pos(4) eq "ACTIVE" ){
     
		 print (HTMLFILE "<td align=center>".fetch_gps_sts_value_by_pos(4)."</td>\n");  
		
     } else {
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".fetch_gps_sts_value_by_pos(4)."</td>\n");
   
	 } 


if (fetch_gps_sts_value_by_pos(14) ){
     
		 print (HTMLFILE "<td align=center>".fetch_gps_sts_value_by_pos(14)."</td>\n");  
		
     } else {
		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".fetch_gps_sts_value_by_pos(14)."</td>\n");
   
	 } 



   print (HTMLFILE "</td>\n");
    print (HTMLFILE "</tr>\n"); 

	print (HTMLFILE "</table>\n"); 

# #####################################################################
			##########EAIU-INVT
			print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
			print (HTMLFILE "<tr><td colspan=11 align=center bgcolor=#EEEEEE><b>RTRV-EAIU-INVT</b></td></tr>\n");
			print (HTMLFILE "<tr><th align=center>UNIT_ID</th><th align=center>FAMILY_TYPE</th><th align=center>FW_VERSION</th><th align=center>SERIAL</th><th align=center>VERSION</th><th align=center>HW_NAME</th></tr>\n");  
			  
			parse_eaiu_invt_field_value();


			if (fetch_gps_sts_value_by_pos(0)){
				 
					 print (HTMLFILE "<td align=center>".fetch_gps_sts_value_by_pos(0)."</td>\n");  
					
				 } else {
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".fetch_gps_sts_value_by_pos(0)."</td>\n");
			   
				 } 
			if (fetch_gps_sts_value_by_pos(1)){
				 
					 print (HTMLFILE "<td align=center>".fetch_gps_sts_value_by_pos(1)."</td>\n");  
					
				 } else {
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".fetch_gps_sts_value_by_pos(2)."</td>\n");
			   
				 } 

			if (fetch_gps_sts_value_by_pos(16)){
				 
					 print (HTMLFILE "<td align=center>".fetch_gps_sts_value_by_pos(16)."</td>\n");  
					
				 } else {
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".fetch_gps_sts_value_by_pos(16)."</td>\n");
			   
				 } 

			if (fetch_gps_sts_value_by_pos(5)){
				 
					 print (HTMLFILE "<td align=center>".fetch_gps_sts_value_by_pos(5)."</td>\n");  
					
				 } else {
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".fetch_gps_sts_value_by_pos(5)."</td>\n");
			   
				 } 


			if (fetch_gps_sts_value_by_pos(4)){
				 
					 print (HTMLFILE "<td align=center>".fetch_gps_sts_value_by_pos(4)."</td>\n");  
					
				 } else {
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".fetch_gps_sts_value_by_pos(4)."</td>\n");
			   
				 } 

			if (fetch_gps_sts_value_by_pos(2)){
				 
					 print (HTMLFILE "<td align=center>".fetch_gps_sts_value_by_pos(2)."</td>\n");  
					
				 } else {
					 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".fetch_gps_sts_value_by_pos(2)."</td>\n");
			   
				 } 


			# if (fetch_gps_sts_value_by_pos(17)){
				 
					 # print (HTMLFILE "<td align=center>".fetch_gps_sts_value_by_pos(17)."</td>\n");  
					
				 # } else {
					 # print (HTMLFILE "<td bgcolor=#FF0000 align=center>".fetch_gps_sts_value_by_pos(17)."</td>\n");
			   
				 # }
			# if (fetch_gps_sts_value_by_pos(18)){
				 
					 # print (HTMLFILE "<td align=center>".fetch_gps_sts_value_by_pos(18)."</td>\n");  
					
				 # } else {
					 # print (HTMLFILE "<td bgcolor=#FF0000 align=center>".fetch_gps_sts_value_by_pos(18)."</td>\n");
			   
				 # }
			print (HTMLFILE "</td>\n");
			print (HTMLFILE "</tr>\n");
			 
			 
			print (HTMLFILE "</table>\n");   




# ######################### PUNCT-MODE

	print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
	print (HTMLFILE "<tr><td colspan=11 align=center bgcolor=#EEEEEE><b>RTRV-PUNCTMODE-IDLE</b></td></tr>\n");
	print (HTMLFILE "<tr><th align=center>USER_SPECIFIC_TIMING</th></tr>\n");  

	 
	parse_punctmode_idle_field_value();

	if (fetch_punctmode_idle_value_by_pos(0) eq "Not_Use"){
		 
			 print (HTMLFILE "<td align=center>".fetch_punctmode_idle_value_by_pos(0)."</td>\n");  
			
		 } else {
			 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".fetch_punctmode_idle_value_by_pos(0)."</td>\n");
	   
		 }



	print (HTMLFILE "</td>\n");
	print (HTMLFILE "</tr>\n");
	 
	 
	print (HTMLFILE "</table>\n");   



# ###################################


# ###################################X2-sts

# print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
# print (HTMLFILE "<tr><td colspan=11 align=center bgcolor=#EEEEEE><b>RTRV-X2-STS</b></td></tr>\n");
# print (HTMLFILE "<tr><th align=center>NBR_ENB_INDEX</th><th align=center>NBR_ENB_ID</th><th align=center>SCTP_STATE</th><th align=center>X2AP_STATE</th></tr>\n");  
  
# parse_x2_sts_field_value();

# if (fetch_x2_sts_value_by_pos(0) eq "NOK"){
     
		 # print (HTMLFILE "<td align=center>".fetch_x2_sts_value_by_pos(0)."</td>\n");  
		
     # } else {
		 # print (HTMLFILE "<td bgcolor=#FF0000 align=center>".fetch_x2_sts_value_by_pos(0)."</td>\n");
   
	 # }

# # if (fetch_x2_sts_value_by_pos(0) eq "NOK"){
     
# # 		 print (HTMLFILE "<td align=center>".fetch_x2_sts_value_by_pos(0)."</td>\n");  
		
# #      } else {
# # 		 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".fetch_x2_sts_value_by_pos(0)."</td>\n");
   
# # 	 }



# print (HTMLFILE "</td>\n");
# print (HTMLFILE "</tr>\n");
 
 
# print (HTMLFILE "</table>\n");   



# ############################################

# print "ending \n";








###############################RRH-INVT

print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=11 align=center bgcolor=#EEEEEE><b>RTRV-RRH-INVT</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>CONN_BD_ID</th><th align=center>CONN_PORT_ID</th><th align=center>UNIT_ID</th><th align=center>FAMILY_TYPE</th><th align=center>FW_VERSION</th><th align=center>SERIAL</th></tr>\n");  
  
# foreach $_(@rrh_invt){

# @_ = split (/,/,$_);

# if ($pkg =~ m/^3/) {
# if ($_[1] eq 6){ 
# if ($_[4] eq "1.0.6.1"){
    
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     print (HTMLFILE "<td align=center>$_[4]</td>\n");    
#     print (HTMLFILE "<td align=center>$_[5]</td>\n");     
#     }
#     else {
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[0]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");                               
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[2]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[3]</td>\n");  
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[4]</td>\n"); 
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[5]</td>\n"); 
#          } 
         
#        }      

# if ($_[1] eq 8){ 
# if ($_[4] eq "1.0.6.1"){
    
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     print (HTMLFILE "<td align=center>$_[4]</td>\n");    
#     print (HTMLFILE "<td align=center>$_[5]</td>\n");     
#     }
#     else {
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[0]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");                               
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[2]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[3]</td>\n");  
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[4]</td>\n"); 
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[5]</td>\n"); 
#          } 
         
#        } 
       
# if ($_[1] eq 10){ 
# if ($_[4] eq "1.0.6.1"){
    
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     print (HTMLFILE "<td align=center>$_[4]</td>\n");    
#     print (HTMLFILE "<td align=center>$_[5]</td>\n");     
#     }
#     else {
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[0]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");                               
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[2]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[3]</td>\n");  
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[4]</td>\n"); 
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[5]</td>\n"); 
#          } 
         
#        }             
#                     }
# if ($pkg =~ m/^4/) {
# if ($_[1] eq 6){ 
# if ($_[4] eq "1.1.0.5"){
    
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     print (HTMLFILE "<td align=center>$_[4]</td>\n");    
#     print (HTMLFILE "<td align=center>$_[5]</td>\n");     
#     }
#     else {
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[0]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");                               
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[2]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[3]</td>\n");  
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[4]</td>\n"); 
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[5]</td>\n"); 
#          } 
         
#        }      

# if ($_[1] eq 8){ 
# if ($_[4] eq "1.1.0.5"){
    
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     print (HTMLFILE "<td align=center>$_[4]</td>\n");    
#     print (HTMLFILE "<td align=center>$_[5]</td>\n");     
#     }
#     else {
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[0]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");                               
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[2]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[3]</td>\n");  
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[4]</td>\n"); 
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[5]</td>\n"); 
#          } 
         
#        } 
       
# if ($_[1] eq 10){ 
# if ($_[4] eq "1.1.0.5"){
    
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     print (HTMLFILE "<td align=center>$_[4]</td>\n");    
#     print (HTMLFILE "<td align=center>$_[5]</td>\n");     
#     }
#     else {
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[0]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");                               
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[2]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[3]</td>\n");  
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[4]</td>\n"); 
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[5]</td>\n"); 
#          } 
         
#        }         
#                    }
# if ($pkg =~ m/^5/) {
# if ($_[1] eq 6){ 
# if ($_[4] eq "1.2.0.1"){
    
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     print (HTMLFILE "<td align=center>$_[4]</td>\n");    
#     print (HTMLFILE "<td align=center>$_[5]</td>\n");     
#     }
#     else {
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[0]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");                               
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[2]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[3]</td>\n");  
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[4]</td>\n"); 
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[5]</td>\n"); 
#          } 
         
#        }      

# if ($_[1] eq 8){ 
# if ($_[4] eq "1.2.0.1"){
    
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     print (HTMLFILE "<td align=center>$_[4]</td>\n");    
#     print (HTMLFILE "<td align=center>$_[5]</td>\n");     
#     }
#     else {
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[0]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");                               
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[2]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[3]</td>\n");  
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[4]</td>\n"); 
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[5]</td>\n"); 
#          } 
         
#        } 
       
# if ($_[1] eq 10){ 
# if ($_[4] eq "1.2.0.1"){
    
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     print (HTMLFILE "<td align=center>$_[4]</td>\n");    
#     print (HTMLFILE "<td align=center>$_[5]</td>\n");     
#     }
#     else {
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[0]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");                               
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[2]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[3]</td>\n");  
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[4]</td>\n"); 
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[5]</td>\n"); 
#          } 
         
#        }         
#                    }  
#     print (HTMLFILE "</td>\n");
#     print (HTMLFILE "</tr>\n");




#                     } 
                    
                    
print (HTMLFILE "</table>\n");    

##############################################################################                              

##########################################RRH-CONF:0,6

print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=11 align=center bgcolor=#EEEEEE><b>RTRV-RRH-CONF:0,6</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>CONNECT_BOARD_ID</th><th align=center>CONNECT_PORT_ID</th><th align=center>POWER_BOOST</th><th align=center>NUM_OF_ALD</th><th align=center>DIGITAL_INPUT_LOW_ALARM_TH</th><th align=center>START_EARFCN1</th><th align=center>ANTENNA_PROFILE_ID</th><th align=center>CELL_NUM</th></tr>\n");  

# my ($boolEAR);

# $boolEAR = "false";
  
# @_ = split (/~/,$port6);
# if ($pkg eq "3.5.2"){
# if ($divciq eq "8T8R"){
# if (($_[2] eq "1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB") && ($_[3] eq "1") && ($_[4] eq "36,36,36,36,36,36") && ($_[5] eq $startear)){
          
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     print (HTMLFILE "<td align=center>$_[4]</td>\n");
#     print (HTMLFILE "<td align=center>$_[5]</td>\n"); 
#     if ($_[6] eq $alphaid){
#        print (HTMLFILE "<td align=center>$_[6]</td>\n"); 
#                           }
#     if ($_[6] ne $alphaid){
#        print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[6]</td>\n"); 
#                           }     
                                                                 
#     if (($secondcar ne "true") && ($_[7] eq "0,-,-,-,-,-")){
#           print (HTMLFILE "<td align=center>$_[7]</td>\n");           
#           }        
#     if (($secondcar eq "true") && ($_[7] eq "0,3,-,-,-,-")){
#           print (HTMLFILE "<td align=center>$_[7]</td>\n");           
#           }
   
#     if (($secondcar ne "true") && ($_[7] ne "0,-,-,-,-,-")){
#           print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[7]</td>\n");           
#           } 
#     if (($secondcar eq "true") && ($_[7] ne "0,3,-,-,-,-")){
#           print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[7]</td>\n");           
#           }
                                                                                                 
#     $boolEAR = "true"; 
            
#     }
# }
# if ($divciq eq "4T4R"){
# if (($_[2] eq "3dB,3dB,3dB,3dB,3dB,3dB") && ($_[3] eq "0") && ($_[4] eq "36,36,36,36,36,36") && ($_[5] eq $startear)){
          
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     print (HTMLFILE "<td align=center>$_[4]</td>\n");
#     print (HTMLFILE "<td align=center>$_[5]</td>\n"); 
#     if ($_[6] eq $alphaid){
#        print (HTMLFILE "<td align=center>$_[6]</td>\n"); 
#                           }
#     if ($_[6] ne $alphaid){
#        print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[6]</td>\n"); 
#                           }                                         
#     if (($secondcar4T ne "true") && ($_[7] eq "0,-,-,-,-,-")){
#           print (HTMLFILE "<td align=center>$_[7]</td>\n");           
#           }        
#     if (($secondcar4T eq "true") && ($_[7] eq "0,9,-,-,-,-")){
#           print (HTMLFILE "<td align=center>$_[7]</td>\n");           
#           }
   
#     if (($secondcar4T ne "true") && ($_[7] ne "0,-,-,-,-,-")){
#           print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[7]</td>\n");           
#           } 
#     if (($secondcar4T eq "true") && ($_[7] ne "0,9,-,-,-,-")){
#           print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[7]</td>\n");           
#           }                                                                                        
#     $boolEAR = "true"; 
            
#     }
# }      
# # if (($_[2] eq "1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB") && ($_[3] eq "1") && ($_[4] eq "36,36,36,36,36,36") && ($_[5] eq $startear)){
          
#     # print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     # print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     # print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     # print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     # print (HTMLFILE "<td align=center>$_[4]</td>\n");
#     # print (HTMLFILE "<td align=center>$_[5]</td>\n");     
#     # if ($_[6] eq $alphaid){
#        # print (HTMLFILE "<td align=center>$_[6]</td>\n"); 
#                           # }
#     # $boolEAR = "true";    
#     # }    
    
    
#     if ($boolEAR eq "false") {
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[0]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");                               
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[2]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[3]</td>\n");  
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[4]</td>\n"); 
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[5]</td>\n"); 
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[6]</td>\n");
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[7]</td>\n");
#          } 
# }                   


# if (($pkg eq "4.0.2")||($pkg eq "5.0.2")){
# if ($divciq eq "8T8R"){
# if (($_[2] eq "1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB") && ($_[3] eq "1") && ($_[4] eq "36,36,36,36,36,36,36,36,36,36,36,36") && ($_[5] eq $startear)){
          
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     print (HTMLFILE "<td align=center>$_[4]</td>\n");
#     print (HTMLFILE "<td align=center>$_[5]</td>\n"); 
#     if ($_[6] eq $alphaid){
#        print (HTMLFILE "<td align=center>$_[6]</td>\n"); 
#                           }
#     if ($_[6] ne $alphaid){
#        print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[6]</td>\n"); 
#                           }                                            
                                                                                        
#     $boolEAR = "true"; 
            
#     }
#     print (HTMLFILE "<td align=center>$_[7]</td>\n");
# }
# if ($divciq eq "4T4R"){
# if (($_[2] eq "3dB,3dB,3dB,3dB,3dB,3dB") && ($_[3] eq "0") && ($_[4] eq "36,36,36,36,36,36") && ($_[5] eq $startear)){
          
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     print (HTMLFILE "<td align=center>$_[4]</td>\n");
#     print (HTMLFILE "<td align=center>$_[5]</td>\n"); 
#     if ($_[6] eq $alphaid){
#        print (HTMLFILE "<td align=center>$_[6]</td>\n"); 
#                           }
#     if ($_[6] ne $alphaid){
#        print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[6]</td>\n"); 
#                           }                                         


                                                                                        
#     $boolEAR = "true"; 
            
#     }
#     print (HTMLFILE "<td align=center>$_[7]</td>\n");
# }      
# # if (($_[2] eq "1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB") && ($_[3] eq "1") && ($_[4] eq "36,36,36,36,36,36") && ($_[5] eq $startear)){
          
#     # print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     # print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     # print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     # print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     # print (HTMLFILE "<td align=center>$_[4]</td>\n");
#     # print (HTMLFILE "<td align=center>$_[5]</td>\n");     
#     # if ($_[6] eq $alphaid){
#        # print (HTMLFILE "<td align=center>$_[6]</td>\n"); 
#                           # }
#     # $boolEAR = "true";    
#     # }    
    
    
#     if ($boolEAR eq "false") {
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[0]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");                               
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[2]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[3]</td>\n");  
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[4]</td>\n"); 
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[5]</td>\n"); 
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[6]</td>\n");
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[7]</td>\n");
#          } 
# }                               
print (HTMLFILE "</table>\n");   

#########################################RRH-CONF:0,8
print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=11 align=center bgcolor=#EEEEEE><b>RTRV-RRH-CONF:0,8</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>CONNECT_BOARD_ID</th><th align=center>CONNECT_PORT_ID</th><th align=center>POWER_BOOST</th><th align=center>NUM_OF_ALD</th><th align=center>DIGITAL_INPUT_LOW_ALARM_TH</th><th align=center>START_EARFCN1</th><th align=center>ANTENNA_PROFILE_ID</th><th align=center>CELL_NUM</th></tr>\n");  
  
# @_ = split (/~/,$port8);

# if ($pkg eq "3.5.2"){
# if ($divciq eq "8T8R"){
# if (($_[2] eq "1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB") && ($_[3] eq "1") && ($_[4] eq "36,36,36,36,36,36") && ($_[5] eq $startear)){
          
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     print (HTMLFILE "<td align=center>$_[4]</td>\n");
#     print (HTMLFILE "<td align=center>$_[5]</td>\n");
#     if ($_[6] eq $betaid){
#        print (HTMLFILE "<td align=center>$_[6]</td>\n"); 
#                           } 
#     if ($_[6] ne $betaid){
#        print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[6]</td>\n"); 
#                           }                                
#     if (($secondcar ne "true") && ($_[7] eq "1,-,-,-,-,-")){
#           print (HTMLFILE "<td align=center>$_[7]</td>\n");           
#           }        
#     if (($secondcar eq "true") && ($_[7] eq "1,4,-,-,-,-")){
#           print (HTMLFILE "<td align=center>$_[7]</td>\n");           
#           }
   
#     if (($secondcar ne "true") && ($_[7] ne "1,-,-,-,-,-")){
#           print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[7]</td>\n");           
#           } 
#     if (($secondcar eq "true") && ($_[7] ne "1,4,-,-,-,-")){
#           print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[7]</td>\n");           
#           }
#     $boolEAR = "true";        
#     }
#  }

# if ($divciq eq "4T4R"){
# if (($_[2] eq "3dB,3dB,3dB,3dB,3dB,3dB") && ($_[3] eq "0") && ($_[4] eq "36,36,36,36,36,36") && ($_[5] eq $startear)){
          
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     print (HTMLFILE "<td align=center>$_[4]</td>\n");
#     print (HTMLFILE "<td align=center>$_[5]</td>\n");
#     if ($_[6] eq $betaid){
#        print (HTMLFILE "<td align=center>$_[6]</td>\n"); 
#                           } 
#     if ($_[6] ne $betaid){
#        print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[6]</td>\n"); 
#                           }                                

#     if (($secondcar4T ne "true") && ($_[7] eq "1,-,-,-,-,-")){
#           print (HTMLFILE "<td align=center>$_[7]</td>\n");           
#           }        
#     if (($secondcar4T eq "true") && ($_[7] eq "1,10,-,-,-,-")){
#           print (HTMLFILE "<td align=center>$_[7]</td>\n");           
#           }
   
#     if (($secondcar4T ne "true") && ($_[7] ne "1,-,-,-,-,-")){
#           print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[7]</td>\n");           
#           } 
#     if (($secondcar4T eq "true") && ($_[7] ne "1,10,-,-,-,-")){
#           print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[7]</td>\n");           
#           }

#     $boolEAR = "true";        
#     }
#  }     
# # if (($_[2] eq "1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB") && ($_[3] eq "1") && ($_[4] eq "36,36,36,36,36,36") && ($_[5] eq $startear)){
          
#     # print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     # print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     # print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     # print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     # print (HTMLFILE "<td align=center>$_[4]</td>\n"); 
#     # print (HTMLFILE "<td align=center>$_[5]</td>\n");  
#     # if ($_[6] eq $betaid){
#        # print (HTMLFILE "<td align=center>$_[6]</td>\n"); 
#                           # }      
#     # $boolEAR = "true";    
#     # }    
    
#     if ($boolEAR eq "false") {
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[0]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");                               
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[2]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[3]</td>\n");  
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[4]</td>\n"); 
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[5]</td>\n"); 
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[6]</td>\n");
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[7]</td>\n");
#          } 
# }                    
# if (($pkg eq "4.0.2")||($pkg eq "5.0.2")){
# if ($divciq eq "8T8R"){
# if (($_[2] eq "1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB") && ($_[3] eq "1") && ($_[4] eq "36,36,36,36,36,36,36,36,36,36,36,36") && ($_[5] eq $startear)){
          
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     print (HTMLFILE "<td align=center>$_[4]</td>\n");
#     print (HTMLFILE "<td align=center>$_[5]</td>\n");
#     if ($_[6] eq $betaid){
#        print (HTMLFILE "<td align=center>$_[6]</td>\n"); 
#                           } 
#     if ($_[6] ne $betaid){
#        print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[6]</td>\n"); 
#                           }                                
#     $boolEAR = "true";        
#     }
#     print (HTMLFILE "<td align=center>$_[7]</td>\n");
#  }

# if ($divciq eq "4T4R"){
# if (($_[2] eq "3dB,3dB,3dB,3dB,3dB,3dB") && ($_[3] eq "0") && ($_[4] eq "36,36,36,36,36,36") && ($_[5] eq $startear)){
          
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     print (HTMLFILE "<td align=center>$_[4]</td>\n");
#     print (HTMLFILE "<td align=center>$_[5]</td>\n");
#     if ($_[6] eq $betaid){
#        print (HTMLFILE "<td align=center>$_[6]</td>\n"); 
#                           } 
#     if ($_[6] ne $betaid){
#        print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[6]</td>\n"); 
#                           }                                
#     $boolEAR = "true";        
#     }
#     print (HTMLFILE "<td align=center>$_[7]</td>\n");
#  }     
# # if (($_[2] eq "1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB") && ($_[3] eq "1") && ($_[4] eq "36,36,36,36,36,36") && ($_[5] eq $startear)){
          
#     # print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     # print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     # print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     # print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     # print (HTMLFILE "<td align=center>$_[4]</td>\n"); 
#     # print (HTMLFILE "<td align=center>$_[5]</td>\n");  
#     # if ($_[6] eq $betaid){
#        # print (HTMLFILE "<td align=center>$_[6]</td>\n"); 
#                           # }      
#     # $boolEAR = "true";    
#     # }    
    
#     if ($boolEAR eq "false") {
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[0]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");                               
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[2]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[3]</td>\n");  
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[4]</td>\n"); 
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[5]</td>\n"); 
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[6]</td>\n");
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[7]</td>\n");
#          } 
# }                      
print (HTMLFILE "</table>\n");   


 #################RRH-CONF:0,10
print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=11 align=center bgcolor=#EEEEEE><b>RTRV-RRH-CONF:0,10</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>CONNECT_BOARD_ID</th><th align=center>CONNECT_PORT_ID</th><th align=center>POWER_BOOST</th><th align=center>NUM_OF_ALD</th><th align=center>DIGITAL_INPUT_LOW_ALARM_TH</th><th align=center>START_EARFCN1</th><th align=center>ANTENNA_PROFILE_ID</th><th align=center>CELL_NUM</th></tr>\n");  
  
# @_ = split (/~/,$port10);
# if ($pkg eq "3.5.2"){
# if ($divciq eq "8T8R"){
# if (($_[2] eq "1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB") && ($_[3] eq "1") && ($_[4] eq "36,36,36,36,36,36") && ($_[5] eq $startear)){
          
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     print (HTMLFILE "<td align=center>$_[4]</td>\n");
#     print (HTMLFILE "<td align=center>$_[5]</td>\n");
#     if ($_[6] eq $gammaid){
#        print (HTMLFILE "<td align=center>$_[6]</td>\n"); 
#                           } 
#     if ($_[6] ne $gammaid){
#        print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[6]</td>\n"); 
#                           }                               
#     if (($secondcar ne "true") && ($_[7] eq "2,-,-,-,-,-")){
#           print (HTMLFILE "<td align=center>$_[7]</td>\n");           
#           }        
#     if (($secondcar eq "true") && ($_[7] eq "2,5,-,-,-,-")){
#           print (HTMLFILE "<td align=center>$_[7]</td>\n");           
#           }
   
#     if (($secondcar ne "true") && ($_[7] ne "2,-,-,-,-,-")){
#           print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[7]</td>\n");           
#           } 
#     if (($secondcar eq "true") && ($_[7] ne "2,5,-,-,-,-")){
#           print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[7]</td>\n");           
#           }
#     $boolEAR = "true";          
#     }
#  }
# if ($divciq eq "4T4R"){
# if (($_[2] eq "3dB,3dB,3dB,3dB,3dB,3dB") && ($_[3] eq "0") && ($_[4] eq "36,36,36,36,36,36") && ($_[5] eq $startear)){
          
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     print (HTMLFILE "<td align=center>$_[4]</td>\n");
#     print (HTMLFILE "<td align=center>$_[5]</td>\n");
#     if ($_[6] eq $gammaid){
#        print (HTMLFILE "<td align=center>$_[6]</td>\n"); 
#                           } 
#     if ($_[6] ne $gammaid){
#        print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[6]</td>\n"); 
#                           }                               
#     if (($secondcar4T ne "true") && ($_[7] eq "2,-,-,-,-,-")){
#           print (HTMLFILE "<td align=center>$_[7]</td>\n");           
#           }        
#     if (($secondcar4T eq "true") && ($_[7] eq "2,11,-,-,-,-")){
#           print (HTMLFILE "<td align=center>$_[7]</td>\n");           
#           }
   
#     if (($secondcar4T ne "true") && ($_[7] ne "2,-,-,-,-,-")){
#           print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[7]</td>\n");           
#           } 
#     if (($secondcar4T eq "true") && ($_[7] ne "2,11,-,-,-,-")){
#           print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[7]</td>\n");           
#           }
#     $boolEAR = "true";          
#     }
#  }
# # if (($_[2] eq "1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB") && ($_[3] eq "1") && ($_[4] eq "36,36,36,36,36,36") && ($_[5] eq $startear)){
          
#     # print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     # print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     # print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     # print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     # print (HTMLFILE "<td align=center>$_[4]</td>\n"); 
#     # print (HTMLFILE "<td align=center>$_[5]</td>\n");
#     # if ($_[6] eq $gammaid){
#        # print (HTMLFILE "<td align=center>$_[6]</td>\n"); 
#                           # }    
#     # $boolEAR = "true";        
#     # }       
    
#     if ($boolEAR eq "false") {
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[0]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");                               
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[2]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[3]</td>\n");  
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[4]</td>\n"); 
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[5]</td>\n");
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[6]</td>\n");
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[7]</td>\n");
#          } 
# }                    
# if (($pkg eq "4.0.2")||($pkg eq "5.0.2")){
# if ($divciq eq "8T8R"){
# if (($_[2] eq "1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB") && ($_[3] eq "1") && ($_[4] eq "36,36,36,36,36,36,36,36,36,36,36,36") && ($_[5] eq $startear)){
          
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     print (HTMLFILE "<td align=center>$_[4]</td>\n");
#     print (HTMLFILE "<td align=center>$_[5]</td>\n");
#     if ($_[6] eq $gammaid){
#        print (HTMLFILE "<td align=center>$_[6]</td>\n"); 
#                           } 
#     if ($_[6] ne $gammaid){
#        print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[6]</td>\n"); 
#                           }                               
#     $boolEAR = "true";          
#     }
#     print (HTMLFILE "<td align=center>$_[7]</td>\n");
#  }
# if ($divciq eq "4T4R"){
# if (($_[2] eq "3dB,3dB,3dB,3dB,3dB,3dB") && ($_[3] eq "0") && ($_[4] eq "36,36,36,36,36,36") && ($_[5] eq $startear)){
          
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     print (HTMLFILE "<td align=center>$_[4]</td>\n");
#     print (HTMLFILE "<td align=center>$_[5]</td>\n");
#     if ($_[6] eq $gammaid){
#        print (HTMLFILE "<td align=center>$_[6]</td>\n"); 
#                           } 
#     if ($_[6] ne $gammaid){
#        print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[6]</td>\n"); 
#                           }                               
#     $boolEAR = "true";          
#     }
#     print (HTMLFILE "<td align=center>$_[7]</td>\n");
#  }
# # if (($_[2] eq "1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB") && ($_[3] eq "1") && ($_[4] eq "36,36,36,36,36,36") && ($_[5] eq $startear)){
          
#     # print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     # print (HTMLFILE "<td align=center>$_[1]</td>\n");  
#     # print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     # print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
#     # print (HTMLFILE "<td align=center>$_[4]</td>\n"); 
#     # print (HTMLFILE "<td align=center>$_[5]</td>\n");
#     # if ($_[6] eq $gammaid){
#        # print (HTMLFILE "<td align=center>$_[6]</td>\n"); 
#                           # }    
#     # $boolEAR = "true";        
#     # }       
    
#     if ($boolEAR eq "false") {
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[0]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");                               
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[2]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[3]</td>\n");  
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[4]</td>\n"); 
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[5]</td>\n");
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[6]</td>\n");
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[7]</td>\n");
#          } 
# }                     
print (HTMLFILE "</table>\n");                       
                                      
}



                         

print "ending \n";