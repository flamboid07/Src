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
             

my %HashCsv;




my ($version_cq,$bucket,$LSMOAM,$LSM, $IP, $user, $pass, $eNBName,$cascade,$mmbsoamip,$mmbssbip,$alphapci,$betapci,$gammapci,$alpharsi,$betarsi,$gammarsi,$tac,$cabinet,$alphaid,$betaid,$gammaid,$alphatilt,$betatilt,$gammatilt,$earfcn,$startear,$enbid,$ltm,$zero_cq,$pkg);
my ($secondcar,$divciq,$convert_long,$convert_lat,$tddsecondcar,$tdd3rdcar,$thirdcar);
my($now);
print "starting \n";


$cascade="LA04UB141";
$eNBName="614402";


$now = strftime("%m%d%Y_%H_%M_%S", localtime);
$path="C:\\Users\\Arvind\\Desktop\\GUI\\${cascade}\\${eNBName}";
$fname="C:\\Users\\Arvind\\Desktop\\Delivery\\Version1\\RTRV-IP-ADDR.txt";

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

# if ($mme_assignment eq "Bayamon"){
# print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
# print (HTMLFILE "<tr><td colspan=11 align=center bgcolor=#EEEEEE><b>RTRV-MME-CONF</b></td></tr>\n");
# print (HTMLFILE "<tr><th align=center>MME_INDEX</th><th align=center>MME_IPV4</th></tr>\n");

# foreach $_(@mme_ips){

# @_ = split (/,/,$_);

# if ($_[0] eq 0){

# if (($_[1] eq "10.156.75.12") || ($_[1] eq "10.156.43.12")){	     
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");      
#                              }
# else {
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[0]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");      
#      }     

#                }


# if ($_[0] eq 1){

# if (($_[1] eq "10.156.75.12") || ($_[1] eq "10.156.43.12")){	     
#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");      
#                              }
# else {
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[0]</td>\n");    
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");      
#      }     

#                }


#  print (HTMLFILE "</td>\n");
#  print (HTMLFILE "</tr>\n");


          
#                            }  

# print (HTMLFILE "</table>\n");
# } 
###################################

############### SYS CONF

print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=11 align=center bgcolor=#EEEEEE><b>SYS-CONF</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>SYS_ID</th><th align=center>STATUS</th><th align=center>ADMINISTRATIVE_STATE</th><th align=center>TYPE</th><th align=center>SYS_TYPE</th></tr>\n");  
  
# foreach $_(@sys_conf){

# @_ = split (/,/,$_);


#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");
#     print (HTMLFILE "<td align=center>$_[3]</td>\n");
    
#     if ($_[4] eq $cabinet){
#         print (HTMLFILE "<td align=center>$_[4]</td>\n");   
#     }
#     if ($_[4] ne $cabinet){
#         print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[4]</td>\n");   
#     }

        
    
# print (HTMLFILE "</td>\n");
# print (HTMLFILE "</tr>\n");
#                     } 
                    
                    
print (HTMLFILE "</table>\n"); 

########################

#################vlan-conf



print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=11 align=center bgcolor=#EEEEEE><b>RTRV-VLAN-CONF</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>DB_INDEX</th><th align=center>VR_ID</th><th align=center>IF_NAME</th><th align=center>VLAN_ID</th><th align=center>ADMINISTRATIVE_STATE</th><th align=center>DESCRIPTION</th></tr>\n");  
  
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
                    
	}                    
print (HTMLFILE "</table>\n");     
##################  RTRV-IP-ADDR             

###########Sub Routine Call###################
    my $IPLog_Fname='RTRV-IP-ADDR.txt';
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
print (HTMLFILE "<tr><td colspan=15 bgcolor=#EEEEEE><b>CELL-INFO</b></td></tr>\n");
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
	#	 print (HTMLFILE "<td align=center>".print_cell_idlen_pos(0,13)."</td>\n");    
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
	#	 print (HTMLFILE "<td bgcolor=#FF0000 align=center>".print_cell_idlen_pos(0,13)."</td>\n");    
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

 ######################## cell acs
print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=13 align=center bgcolor=#EEEEEE><b>RTRV-CELL-ACS</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>CELL_NUM</th><th align=center>CELL_BARRED</th><th align=center>INTRA_FREQ_CELL_RESELECT</th><th align=center>BARRING_CTR_USAGE</th><th align=center>HANDOVER_BARRING_STATUS</th></tr>\n");  

# foreach $_(@cell_bar){

# @_ = split (/,/,$_);

#     print (HTMLFILE "<td align=center>$_[0]</td>\n");
#     if ($_[1] eq "notBarred"){
#     print (HTMLFILE "<td align=center>$_[1]</td>\n");
#     }
#     if ($_[1] ne "notBarred"){
#     print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");
#     }
#     if ($_[2] eq "NotAllowed"){
#     print (HTMLFILE "<td align=center>$_[2]</td>\n");   
#     }
#     if ($_[2] ne "NotAllowed"){
#     print (HTMLFILE "<td bgcolor=#FF0000 td align=center>$_[2]</td>\n");    
#     }
#     if ($_[3] eq "cpuStatusCtrl"){
#     print (HTMLFILE "<td align=center>$_[3]</td>\n");   
#     }
#     if ($_[3] ne "cpuStatusCtrl"){
#     print (HTMLFILE "<td bgcolor=#FF0000 td align=center>$_[3]</td>\n");    
#     }
#     if ($_[4] eq "barringOff"){
#     print (HTMLFILE "<td align=center>$_[4]</td>\n");   
#     }
#     if ($_[4] ne "barringOff"){
#     print (HTMLFILE "<td bgcolor=#FF0000 td align=center>$_[4]</td>\n");    
#     }
      
#     print (HTMLFILE "</td>\n");
#     print (HTMLFILE "</tr>\n");  
#     }                   
                       
                       
print (HTMLFILE "</table>\n");

######################## cell acs

###################################cellplmn-info




##############################cellplmn-info

##############################enbplmn-info


##############################enbplmn-info

#############################gps-invt


print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=11 align=center bgcolor=#EEEEEE><b>RTRV-GPS-INVT</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>UNIT_ID</th><th align=center>VERSION</th><th align=center>FW_VERSION</th><th align=center>SERIAL</th><th align=center>VENDOR</th></tr>\n");  
  
# foreach $_(@gps){

# @_ = split (/,/,$_);
# print (HTMLFILE "<td align=center>$_[0]</td>\n");   
      
# if ($_[4] eq "SAMSUNG"){
#      if ($_[1] eq "1.0.0.2"){
#            print (HTMLFILE "<td align=center>$_[1]</td>\n");                   
#                }     
#      if ($_[1] ne "1.0.0.2"){
#            print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");                   
#                }
#      if ($_[2] eq "1.0.0.5"){
#            print (HTMLFILE "<td align=center>$_[2]</td>\n");                   
#                }     
#      if ($_[2] ne "1.0.0.5"){
#            print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[2]</td>\n");                   
#                }                 
                          
#           }
          
# if ($_[4] eq "Trimble-D"){
#      if ($_[1] eq "1.0.0.0"){
#            print (HTMLFILE "<td align=center>$_[1]</td>\n");                   
#                }     
#      if ($_[1] ne "1.0.0.0"){
#            print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");                   
#                }
#      if ($_[2] eq "1.0.0.1"){
#            print (HTMLFILE "<td align=center>$_[2]</td>\n");                   
#                }     
#      if ($_[2] ne "1.0.0.1"){
#            print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[2]</td>\n");                   
#                }                 
                          
#           }          
          
# print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
# print (HTMLFILE "<td align=center>$_[4]</td>\n"); 

         
#     print (HTMLFILE "</td>\n");
#     print (HTMLFILE "</tr>\n");




#                     } 
                    
                    
print (HTMLFILE "</table>\n");    
#################################
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
                                      




                         

print "ending \n";


	

