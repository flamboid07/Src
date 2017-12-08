use POSIX;
use Net::SSH2;
use Spreadsheet::WriteExcel;

use Control::CLI;
use Data::Dumper;


unless(-d "C:\\3G_4G_TOOL_Scripts\\2.5\\ATP_2.5\\REPORT\\"){
   `mkdir C:\\3G_4G_TOOL_Scripts\\2.5\\ATP_2.5\\REPORT\\`;		
 }   
unless(-d "C:\\3G_4G_TOOL_Scripts\\2.5\\ATP_2.5\\RSSI_LOG\\"){
   `mkdir C:\\3G_4G_TOOL_Scripts\\2.5\\ATP_2.5\\RSSI_LOG\\`;		
 }
unless(-d "C:\\3G_4G_TOOL_Scripts\\2.5\\ATP_2.5\\RSSI_REPORT\\"){
   `mkdir C:\\3G_4G_TOOL_Scripts\\2.5\\ATP_2.5\\RSSI_REPORT\\`;		
 }
 
my ($LSM, $IP, $user, $pass, $eNBName,$cascade,$enb_id,$pkg,$div,$testfreq);


my ($port1,$port2,$port3);
my ($bucket, $enb_NAME_LSM);
my ($BoardId0,$BoardId1,$BoardI2,$PortId0,$PortId1,$PortId2);
my ($BoardIdvw0,$BoardIdvw1,$BoardIdvw2);
my ($PortIdvw0,$PortIdvw1,$PortIdvw2);

my ($BoardIdoc0,$BoardIdoc1,$BoardocI2,$PortIdoc0,$PortIdoc1,$PortIdoc2);
my ($Status1,$Status2,$Status3,$Status4,$Status5,$Status6);
my ($Status1_tilt,$Status2_tilt,$Status3_tilt);
my (@array_tx_pwr_0,@array_tx_pwr_1,@array_tx_pwr_2);
my (@array_fa_pwr_0,@array_fa_pwr_1,@array_fa_pwr_2);
my (@array_fa_pwr_0_tilt,@array_fa_pwr_1_tilt,@array_fa_pwr_2_tilt);

my (@array_tx_pwr_ocns_0,@array_tx_pwr_ocns_1,@array_tx_pwr_ocns_2);
my (@array_fa_pwr_ocns_0,@array_fa_pwr_ocns_1,@array_fa_pwr_ocns_2);


my (@array_each_vswr0,@array_each_vswr1,@array_each_vswr2);
my (@array_each_rt0,@array_each_rt1,@array_each_rt2);

my (@alarm_list,@alarm_log);

my (@split_each_line_cell,$split_each_line_cell);
my (@ret);

my($now);

$now = strftime("%m%d%Y_%H_%M_%S", localtime);

 
# my (@inputMulti,$inputMulti);
# chop($ARGV[0]);
# @inputMulti = split(/~/,$ARGV[0]);

# # foreach $inputMulti (@inputMulti){
          
# my (@input,$input);
# @input = split(/,/,$inputMulti);    

my (@input,$input);
@input = split(/,/,$ARGV[0]);


print ("\n################\n");
print ("# 2.5 ATP TOOL LSMU-Blade server#\n");
print ("################\n\n");

#print "@input\n";

$eNBName = $input[0];
$LSM = $input[1];
$IP = $input[2];
$user = $input[3];
$pass = $input[4];
$eNBIP = $input[5];
$cascade = $input[6];
$alphatilt = $input[7];
$alphatilt = $alphatilt * 10;

$betatilt = $input[8];
$betatilt = $betatilt * 10;

$gammatilt = $input[9];
$gammatilt = $gammatilt * 10;
# $earfcn = $input[22];
# $startear = $input[23];
$opt = $input[10];
$div = $input[11];
$testfreq = $input[12];
$teststart = $input[13];

$dblsmip = $IP;
$dblsmusr = $user;
$dblsmpwd= $pass;
$connectedtoMS = 'false';



if ($LSM =~ m/Akron_LSU/ )
						{
						$dblsmip="10.158.34.71";
						$dblsmusr = $user;
						$dblsmpwd= $input[12];

						print ("MC IP-$dblsmip\n");
						print ("MC User-$dblsmusr\n");
						print ("MC Pwd-$dblsmpwd\n");
						};
						
if ($LSM =~ m/Tacoma_LSU/ ) 
						{
						$dblsmip="10.158.2.179";
						$dblsmusr = $user;
						$dblsmpwd= $input[12];
						
						print ("MC IP-$dblsmip\n");
						print ("MC User-$dblsmusr\n");
						print ("MC Pwd-$dblsmpwd\n");
						};


if ($alphatilt < 0){
      $alphatilt = $alphatilt * -1;
                   }
                  
if ($betatilt < 0){
      $betatilt = $betatilt * -1;
                   }                  

if ($gammatilt < 0){
      $gammatilt = $gammatilt * -1;
                   }

 
my $validate = `C:\\3G_4G_TOOL_Scripts\\bin\\validate.exe`;
chomp ($validate); 

if ($validate eq "expired"){
print ("ERROR: YOUR TOOLS HAS EXPIRED\n\n");
sleep 15;
exit;
                           }



if ($validate ne "true"){
print ("ERROR: YOU ARE NOT A VALID USER\n");
sleep 15;
exit;
                        }


if ($opt eq "1"){
	&atp;
	
	}

if ($opt eq "2"){
	&plmn;
	
	}
if ($opt eq "3"){
	&retune;
	
	}	                        
                        
sub atp{                         

# if ($testvalidate eq "true"){

open (FILE, ">C:\\3G_4G_TOOL_Scripts\\2.5\\ATP_2.5\\RAN_LOG\\$cascade\_2500_ATP_$now.txt");
open (FILE_M, ">C:\\3G_4G_TOOL_Scripts\\2.5\\ATP_2.5\\Market_LOG\\$cascade\_2500_ATP_Market_$now.txt");
open (FILE_RSSI, ">C:\\3G_4G_TOOL_Scripts\\2.5\\ATP_2.5\\RSSI_LOG\\$cascade\_RSSI_TDD_$now.txt");

my $workbook = Spreadsheet::WriteExcel->new("C:\\3G_4G_TOOL_Scripts\\2.5\\ATP_2.5\\RSSI_REPORT\\$cascade\_RSSI_TDD_$now.xls");

$format_title = $workbook->add_format(border=>0); # Add a format
$format_title->set_bold();
$format_title->set_size(14);
$format_title->set_color('black');
$format_title->set_align('left');

$format_title_merge = $workbook->add_format(border=>0); # Add a format
$format_title_merge->set_bold();
$format_title_merge->set_size(15);
$format_title_merge->set_color('black');
$format_title_merge->set_align('center');

# $format_title_merge->set_text_wrap();

$format_white = $workbook->add_format(border=>1); # Add a format

$format_white->set_size(10);
$format_white->set_bg_color('white');
$format_white->set_color('black');
$format_white->set_align('center');
$format_white->set_valign('vcenter');


$format_white_bold = $workbook->add_format(border=>1); # Add a format

$format_white_bold->set_size(12);
$format_white_bold->set_bold();
$format_white_bold->set_bg_color('white');
$format_white_bold->set_color('black');
$format_white_bold->set_align('center');
$format_white_bold->set_valign('vcenter');
# $format_white->set_text_wrap();

$format_yellow = $workbook->add_format(border=>1); # Add a format
$format_yellow->set_bold();
$format_yellow->set_size(10);
$format_yellow->set_bg_color('yellow');
$format_yellow->set_color('black');
$format_yellow->set_align('center');
$format_yellow->set_valign('vcenter');


$format_red = $workbook->add_format(border=>1); # Add a format
$format_red->set_bold();
$format_red->set_size(10);
$format_red->set_bg_color('red');
$format_red->set_color('black');
$format_red->set_align('center');
$format_red->set_valign('vcenter');

$worksheet_RSSI = $workbook->add_worksheet("RSSI AUDIT");
$worksheet_RSSI->add_write_handler(qr[\w], \&store_string_widths);                                 

my $ssh_lsm = new Control::CLI(Use => 'SSH',
                        Prompt => ']',
			Errmode=> 'return',
                        Timeout=> '240');


my $connect = $ssh_lsm->connect(
			Host => $dblsmip,
          Username => $dblsmusr,
          Password => $dblsmpwd,
        PrivateKey => '.ssh/id_dsa');
						
	

if ($connect) {		#start if connected
$ssh_lsm->dump_log('C:\3G_4G_TOOL_Scripts\2.5\ATP_2.5\dump.txt');           # Debuging
$ssh_lsm->output_log('C:\3G_4G_TOOL_Scripts\2.5\ATP_2.5\output.txt');       # Debuging


$ssh_lsm->read(Blocking => 1);




$ssh_lsm->print("uname -n;");
$ssh_lsm->waitfor(';');
my $uname_n = $ssh_lsm->waitfor('\[');
$uname_n = uc($uname_n);
#print ("$uname_n\n");

if ($uname_n =~ m/LSMR/) {
$LSM_TYPE = "LSMR";
                         }
if ($uname_n =~ m/LSMU/) {
$LSM_TYPE = "LSMU";
                         }
if ($uname_n =~ m/LSMP/) {
$LSM_TYPE = "LSMP";
                         }

#print ("$LSM_TYPE\n");

$ssh_lsm->print("source /home/lsm/.profile");
$ssh_lsm->waitfor(']');
my $profile = $ssh_lsm->waitfor(']');
#print ("$profile\n");

sleep 1;

$ssh_lsm->print("INFO.sh;");
$ssh_lsm->waitfor(';');
my $info = $ssh_lsm->waitfor(']');
$info =~ s/\[.*//g;
print ("$info\n\n");


my ($database_name);

if (($info =~ m/SPRINT_SSLR_4.0/) || ($info =~ m/LSM_4.5/) || ($info =~ m/SPRINT_SSLR_5.0/)) { 
# SPRINT_SSLR_5.0 added for blade server 8/10/16 - cw
$database_name = "mc_db";
                                                            }
else {
$database_name = "lsm_db";
     }


#print ("$database_name\n");


print ("\n\nPLEASE WAIT......\n\n");


$ssh_lsm->print("/db/mysql/app/bin/mysql -ulsm -plsm $database_name\;");
my $sql_start = $ssh_lsm->waitfor('mysql>');
#print ("$sql_start\n\n");

my (%hash_level_id, $hash_level_id);
%hash_level_id = ();


$ssh_lsm->print("select level2_id,ems_alias,level1_id from cm_v_level2andcoord_lsm;");
my $BUCKETS = $ssh_lsm->waitfor('mysql>');
#print ("$BUCKETS\n");


##########################
# START GET BUCKET NAMES #
##########################


my (@array_split_get_level_id, $array_split_get_level_id);



@array_split_get_level_id = split(/\n/, $BUCKETS);
foreach $array_split_get_level_id (@array_split_get_level_id) {
$array_split_get_level_id =~ s/^\|\s+//g;
$array_split_get_level_id =~ s/\|\s+$//g;
$array_split_get_level_id =~ s/\s+$//g;
$array_split_get_level_id =~ s/\s+\|\s+/\t/g;
if (($array_split_get_level_id =~ m/^\d+/) && ($array_split_get_level_id !~ m/rows\s+in\s+set/) && ($array_split_get_level_id !~ m/row\s+in\s+set/)) {
#print ("$array_split_get_level_id\n");
@_ = split(/\t/, $array_split_get_level_id);
$_[1] = uc($_[1]);


$hash_level_id{$_[0]} = "$_[1]";				#hash level_id key is number and value is bucket
                                                                                                                                                     }
                                                              }

#print Dumper(\%hash_level_id);
##########################
#  END GET BUCKET NAMES  #
##########################



$ssh_lsm->print("select system_id,ems_alias,level2_id,level3_id,ip_addr_1,version,level1_id from cm_v_level3_lsm where ems_alias = '$eNBName';");
my $ENODEBS = $ssh_lsm->waitfor('mysql>');
#print ("$ENODEBS\n");
#print (FILE "$ENODEBS\n");

#########################
# START GET ENODEB INFO #
#########################


my (@array_get_enodeb_ids, $array_get_enodeb_ids);
@array_get_enodeb_ids = split(/\n/, $ENODEBS);
foreach $array_get_enodeb_ids (@array_get_enodeb_ids) {
$array_get_enodeb_ids =~ s/^\|\s+//g;
$array_get_enodeb_ids =~ s/\|\s+$//g;
$array_get_enodeb_ids =~ s/\s+$//g;
$array_get_enodeb_ids =~ s/\s+\|\s+/\t/g;
$array_get_enodeb_ids =~ s/\r+//g;
if (($array_get_enodeb_ids !~ m/rows\s+in\s+set/) && ($array_get_enodeb_ids !~ m/system_id/) && ($array_get_enodeb_ids !~ m/row\s+in\s+set/)) {
@_ = split(/\t+/, $array_get_enodeb_ids);

if (($_[0] =~ m/\d+/)) {		#start if $_[0]
$bucket = "$hash_level_id{$_[2]}";
$bucket = uc($bucket);

$enb_NAME_LSM = "$_[1]";
$enb_NAME_LSM =~ s/\s+$//g;
$enb_NAME_LSM =~ s/\r+$//g;
                       }		#end if $_[0]




                                                                                                                                              }
                                                       }
#########################
#  END GET ENODEB INFO  #
#########################




$ssh_lsm->print('exit');		#exit database
my $sql_exit = $ssh_lsm->waitfor(']');


# we only need to do this if its the first site and bucket
if ($connectedtoMS=~'false') {
if (($LSM =~ m/Akron_LSU/ ) || ($LSM =~ m/Tacoma_LSU/ ))
{
# ssh to the LEP blade
print ("\n\n Connecting to MS \n\n");
print ("ssh $user\@$IP\n");
					     
$ssh_lsm->print("ssh $user\@$IP");
sleep 5;
print("yes\n");
$ssh_lsm->print('yes');
sleep 10;
my $Log = $ssh_lsm->waitfor('password:');

print("$pass\n");
$ssh_lsm->print("$pass");
$ssh_lsm->waitfor(']');
print("source /home/lsm/.profile\n");
$ssh_lsm->print("source /home/lsm/.profile");
$ssh_lsm->waitfor(']');

print ("Connected to MS\n");
$connectedtoMS='true'
};
};


print ("\n\n\n$bucket\n\n\n");

if (($bucket =~ m/COMMERCIAL/) || ($bucket =~ m/OAR/)) {
      
print "\n\n\n\n\n\n SITE IS IN $bucket BUCKET. NO ATP ... \n\n\n\n\n";      
sleep 15;
exit;    
}      

if (!$enb_NAME_LSM) {
print ("$eNBName NOT PRESENT ON $LSM");
sleep 15;
exit;
                    }

#print ("$enb_NAME_LSM\n");

$ssh_lsm->print("pwd");
$ssh_lsm->waitfor('/home/');

$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName RTRV-PKG-VER;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;


my (@split_each_line_vlan,$split_each_line_vlan);
@split_each_line_vlan = split (/\n/,$Log);

foreach $split_each_line_vlan (@split_each_line_vlan){
          
          
          if ($split_each_line_vlan =~ m/^\s+\d+/){
                @_ = split (/\s+/,$split_each_line_vlan);
                
                
                    
                    my $STATUS = $_[4];
                    my $PKG_VER  = $_[2];
		    if ($STATUS eq "ACTIVE"){
		            $pkg  = $PKG_VER;

                    
                                            }                 
          
                                                   
                                                   }	
	       }
	       



$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName RTRV-CELL-IDLE;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;


my (@split_each_line_vlan,$split_each_line_vlan);
@split_each_line_vlan = split (/\n/,$Log);

foreach $split_each_line_vlan (@split_each_line_vlan){
          
          
          if ($split_each_line_vlan =~ m/^\s+\d+/){
                @_ = split (/\s+/,$split_each_line_vlan);
                    
                    my $CELL_NUM = $_[1];
                    if (($CELL_NUM eq "3") || ($CELL_NUM eq "4") || ($CELL_NUM eq "5" )){
                          $secondcar = "true";
                          }
                    if (($CELL_NUM eq "9") || ($CELL_NUM eq "10") || ($CELL_NUM eq "11" )){
                          $secondcar4T = "true";
                          }      
                    my $PHY_CELL_ID = $_[3];
                    $DL_ANT_COUNT = $_[6];
                    $UL_ANT_COUNT = $_[7];
                    my $EARFCN_DL= $_[8];
                    my $EARFCN_UL= $_[9];
                    my $SUBFRAME_ASSIGNMENT= $_[14];
                    my $SPECIAL_SUBFRAME_PATTERNS= $_[15];
                    my $data = "$CELL_NUM,$PHY_CELL_ID,$DL_ANT_COUNT,$UL_ANT_COUNT,$EARFCN_DL,$EARFCN_UL,$SUBFRAME_ASSIGNMENT,$SPECIAL_SUBFRAME_PATTERNS";                    
                    push (@cell_idle,$data);                 
                    
                                                  }                 
          
                                                   
                                                   }




$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName RTRV-RET-INF;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;
print FILE_M $Log;

my (@split_each_line_vlan,$split_each_line_vlan);
@split_each_line_vlan = split (/\n/,$Log);

foreach $split_each_line_vlan (@split_each_line_vlan){
          
          
          if ($split_each_line_vlan =~ m/^\s+\d+/){
                @_ = split (/\s+/,$split_each_line_vlan);
                
                
                    
                    my $CONNECT_BOARD_ID = $_[1];
                    my $CONNECT_PORT_ID  = $_[2];
                    my $ALD_ID  = $_[3];
                    my $ANT_ID = $_[4];
                    my $TILT = $_[5];
                    my $data = "$CONNECT_BOARD_ID,$CONNECT_PORT_ID,$ALD_ID,$ANT_ID,$TILT";                    
                    push (@ret,$data);               

                                  
                    
                                                  }                 
          
                                                   
                                                   }

$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-SYS-CONF:unlocked;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;


$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-CONF:0,unlocked;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;


$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-CONF:1,unlocked;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;



$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-CONF:2,unlocked;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;

if ($secondcar eq "true"){
      
$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-CONF:3,unlocked;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;


$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-CONF:4,unlocked;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;



$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-CONF:5,unlocked;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;     
      
      
      }


if ($secondcar4T eq "true"){
      
$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-CONF:9,unlocked;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;


$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-CONF:10,unlocked;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;



$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-CONF:11,unlocked;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;     
      
      
      }
      
      
print "Please wait for 45 seconds\n";

sleep 45;


$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName RTRV-CELL-CONF;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;




@split_each_line_cell = split (/\n/,$Log);
foreach $split_each_line_cell(@split_each_line_cell){
	
	$split_each_line_cell =~ s/^\s+//g;
	if ($split_each_line_cell =~ m/^0 /) {		
	      @_ = split(/\s+/, $split_each_line_cell);
	      $port1 = $_[1];	      
		       
					     }
	if ($split_each_line_cell =~ m/^1 /) {		
	      @_ = split(/\s+/, $split_each_line_cell);
	      $port2 = $_[1];	      
		       
					     }	
	if ($split_each_line_cell =~ m/^2 /) {		
	      @_ = split(/\s+/, $split_each_line_cell);
	      $port3 = $_[1];	      
		       
					     }
        if ($secondcar eq "true"){
	if ($split_each_line_cell =~ m/^3 /){		
	      @_ = split(/\s+/, $split_each_line_cell);
	      $port4 = $_[1];	      
		       
					     }
					     
	if ($split_each_line_cell =~ m/^4 /) {		
	      @_ = split(/\s+/, $split_each_line_cell);
	      $port5 = $_[1];	      
		       
					     }					     

	if ($split_each_line_cell =~ m/^5 /) {		
	      @_ = split(/\s+/, $split_each_line_cell);
	      $port6 = $_[1];	      
		       
					     }
       }
        if ($secondcar4T eq "true"){
	if ($split_each_line_cell =~ m/^9 /){		
	      @_ = split(/\s+/, $split_each_line_cell);
	      $port4 = $_[1];	      
		       
					     }
					     
	if($split_each_line_cell =~ m/^10 /) {		
	      @_ = split(/\s+/, $split_each_line_cell);
	      $port5 = $_[1];	      
		       
					     }					     

	if ($split_each_line_cell =~ m/^11 /) {		
	      @_ = split(/\s+/, $split_each_line_cell);
	      $port6 = $_[1];	      
		       
					     }
       }

						     }	
						     
						     
print "$\n\n\n $port4\n\n\n\n";						     
print "$\n\n\n $port5\n\n\n\n";						     
print "$\n\n\n $port6\n\n\n\n";						     

sleep 20;						     
						     

print ("\n\n Connecting to DU \n\n");
					     
$ssh_lsm->cmd("ssh lteuser\@$eNBIP");
sleep 5;
$ssh_lsm->print('yes');
sleep 10;
my $Log = $ssh_lsm->waitfor('password:');
print "$Log\n";

$ssh_lsm->print("samsunglte");
#$ssh_lsm->waitfor('@LMA3');	#removed for 4.0
$ssh_lsm->waitfor('LMA3');

$ssh_lsm->print("su -");
$ssh_lsm->waitfor('Password:');


$ssh_lsm->print("123qwe");
#my $Log = $ssh_lsm->waitfor('@LMA3');	#removed for 4.0
my $Log = $ssh_lsm->waitfor('LMA3');



if ($Log =~ m/failure/){

$ssh_lsm->print("su -");
$ssh_lsm->waitfor('Password:');


my $Log = $ssh_lsm->print("S\@msung1te");
#$ssh_lsm->waitfor('@LMA3');	#removed for 4.0
$ssh_lsm->waitfor('LMA3');

}

$ssh_lsm->print("cd /pkg");
$ssh_lsm->waitfor('/pkg');

$ssh_lsm->print("cd $pkg/ENB/r-01/bin");
$ssh_lsm->waitfor('/ENB/r-01/bin');


$ssh_lsm->print("cli.otm");
$ssh_lsm->waitfor('USERNAME :');


$ssh_lsm->print("ROOT");
$ssh_lsm->waitfor('PASSWORD :');




$ssh_lsm->print("ROOT");
$ssh_lsm->waitfor('] ');

my (@split_each_line_txpwr,$split_each_line_txpwr);








#$ssh_lsm->waitfor('] ');


if ($port1 eq "EQUIP"){
$ssh_lsm->print("TEST-TXPWR:0,6;");
$ssh_lsm->waitfor('NOTIFY TEST RESULT');
sleep 5;
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;
print FILE_M $Log;
print FILE_RSSI $Log;

@split_each_line_txpwr = split (/\n/,$Log);

foreach $split_each_line_txpwr(@split_each_line_txpwr){


$split_each_line_txpwr =~ s/Connect Board ID/BoardId/g;
$split_each_line_txpwr =~ s/Connect Port ID/PortId/g;
$split_each_line_txpwr =~ s/Tx RF Power/RF Pwr/g;
$split_each_line_txpwr =~ s/Fa0 Rssi/FA0 RSSI/g;


          if ($split_each_line_txpwr =~ m/BoardId\s+\=/) {
                    
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/\s+//g;
			$BoardId0 = $_[1];
			

							  }
          if ($split_each_line_txpwr =~ m/PortId\s+\=/) {
                    
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/\s+//g;
			$PortId0 = $_[1];
			  
							  }
							  
							  
	  if (($split_each_line_txpwr =~ m/RF Pwr/) && ($split_each_line_txpwr =~ m/\(dBm\)/)) {			#get RF PWR value
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/^\s+//g;
			my (@array_each_pwr, $array_each_pwr);
			@array_tx_pwr_0 = split(/\s+/, $_[1]);

                                                                                         }

	  if (($split_each_line_txpwr =~ m/FA0 RSSI/) && ($split_each_line_txpwr =~ m/\(dBm\)/)) {			#get RF PWR value
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/^\s+//g;
			@array_fa_pwr_0 = split(/\s+/, $_[1]);
                                                                                         }
          if (($secondcar eq "true") || ($secondcar4T eq "true")){

		  
if ($div eq "8T8R"){						  
	  if (($split_each_line_txpwr =~ m/FA2 RSSI/) && ($split_each_line_txpwr =~ m/\(dBm\)/)) {			#get RF PWR value
	 
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/^\s+//g;
			@array_fa_pwr_0_2nd = split(/\s+/, $_[1]);
                                                                                             }
																							 
																							 
																							 
					}

if ($div eq "4T4R"){						  
	  if (($split_each_line_txpwr =~ m/FA1 RSSI/) && ($split_each_line_txpwr =~ m/\(dBm\)/)) {			#get RF PWR value
	 
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/^\s+//g;
			@array_fa_pwr_0_2nd = split(/\s+/, $_[1]);
                                                                                             }
																							 
																							 
																							 
					}						 
																							 
																							 
																							 
																							 
																						 
																						 
                                                                }

          
                                                      }     


}

if ($port2 eq "EQUIP"){
$ssh_lsm->print("TEST-TXPWR:0,8;");
$ssh_lsm->waitfor('NOTIFY TEST RESULT');
sleep 5;
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;
print FILE_M $Log;
print FILE_RSSI $Log;

@split_each_line_txpwr = split (/\n/,$Log);

foreach $split_each_line_txpwr(@split_each_line_txpwr){


$split_each_line_txpwr =~ s/Connect Board ID/BoardId/g;
$split_each_line_txpwr =~ s/Connect Port ID/PortId/g;
$split_each_line_txpwr =~ s/Tx RF Power/RF Pwr/g;
$split_each_line_txpwr =~ s/Fa0 Rssi/FA0 RSSI/g;


          if ($split_each_line_txpwr =~ m/BoardId\s+\=/) {
                    
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/\s+//g;
			$BoardId1 = $_[1];
					  
							  }
          if ($split_each_line_txpwr =~ m/PortId\s+\=/) {
                    
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/\s+//g;
			$PortId1 = $_[1];
			    
							  }
							  
							  
	  if (($split_each_line_txpwr =~ m/RF Pwr/) && ($split_each_line_txpwr =~ m/\(dBm\)/)) {			#get RF PWR value
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/^\s+//g;
			my (@array_each_pwr, $array_each_pwr);
			@array_tx_pwr_1 = split(/\s+/, $_[1]);

                                                                                         }

	  if (($split_each_line_txpwr =~ m/FA0 RSSI/) && ($split_each_line_txpwr =~ m/\(dBm\)/)) {			#get RF PWR value
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/^\s+//g;
			@array_fa_pwr_1 = split(/\s+/, $_[1]);
			
                                                                                         }
          if (($secondcar eq "true") || ($secondcar4T eq "true")){

								 

if ($div eq "8T8R"){							  
	  if (($split_each_line_txpwr =~ m/FA2 RSSI/) && ($split_each_line_txpwr =~ m/\(dBm\)/)) {			#get RF PWR value
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/^\s+//g;
			@array_fa_pwr_1_2nd = split(/\s+/, $_[1]);
			
                                                                                             }
                   }

if ($div eq "4T4R"){							  
	  if (($split_each_line_txpwr =~ m/FA1 RSSI/) && ($split_each_line_txpwr =~ m/\(dBm\)/)) {			#get RF PWR value
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/^\s+//g;
			@array_fa_pwr_1_2nd = split(/\s+/, $_[1]);
			
                                                                                             }
                   }
				   
																							 								 
                                                                 }

          
                                                      }     

}


if ($port3 eq "EQUIP"){

$ssh_lsm->print("TEST-TXPWR:0,10;");
$ssh_lsm->waitfor('NOTIFY TEST RESULT');
sleep 5;
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;
print FILE_M $Log;
print FILE_RSSI $Log;

@split_each_line_txpwr = split (/\n/,$Log);

foreach $split_each_line_txpwr(@split_each_line_txpwr){


$split_each_line_txpwr =~ s/Connect Board ID/BoardId/g;
$split_each_line_txpwr =~ s/Connect Port ID/PortId/g;
$split_each_line_txpwr =~ s/Tx RF Power/RF Pwr/g;
$split_each_line_txpwr =~ s/Fa0 Rssi/FA0 RSSI/g;


          if ($split_each_line_txpwr =~ m/BoardId\s+\=/) {
                    
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/\s+//g;
			$BoardId2 = $_[1];
			

							  }
          if ($split_each_line_txpwr =~ m/PortId\s+\=/) {
                    
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/\s+//g;
			$PortId2 = $_[1];
	                
							  }
							  
							  
	  if (($split_each_line_txpwr =~ m/RF Pwr/) && ($split_each_line_txpwr =~ m/\(dBm\)/)) {			#get RF PWR value
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/^\s+//g;
			my (@array_each_pwr, $array_each_pwr);
			@array_tx_pwr_2 = split(/\s+/, $_[1]);

                                                                                         }

	  if (($split_each_line_txpwr =~ m/FA0 RSSI/) && ($split_each_line_txpwr =~ m/\(dBm\)/)) {			#get RF PWR value
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/^\s+//g;
			@array_fa_pwr_2 = split(/\s+/, $_[1]);
                                                                                         }
          if (($secondcar eq "true") || ($secondcar4T eq "true")){
		  



if ($div eq "8T8R"){							  
	  if (($split_each_line_txpwr =~ m/FA2 RSSI/) && ($split_each_line_txpwr =~ m/\(dBm\)/)) {			#get RF PWR value
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/^\s+//g;
			@array_fa_pwr_2_2nd = split(/\s+/, $_[1]);
                                                                                             }
                   }

if ($div eq "4T4R"){							  
	  if (($split_each_line_txpwr =~ m/FA1 RSSI/) && ($split_each_line_txpwr =~ m/\(dBm\)/)) {			#get RF PWR value
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/^\s+//g;
			@array_fa_pwr_2_2nd = split(/\s+/, $_[1]);
                                                                                             }
                   }							   
																							 

	
																							 
																							 
                                                                }                                                                               


          
                                                      }     

}
$div =~ s/\s+//g;
print "$div\n\n\n\n";
sleep 5;
if ($div ne "4T4R"){
&Check_RSSI;
}

sleep 10;

print "\n\n\n Set BF to FALSE ...\n\n\n";

if ($port1 eq "EQUIP"){
     $ssh_lsm->waitfor("]");	
     $ssh_lsm->print("CHG-BF-CONF:CELL_NUM=0,BEAM_FORMING_ENABLE=0;");
     $ssh_lsm->waitfor("COMPLD");     
     my $Log = $ssh_lsm->waitfor(';');
     print $Log;
     print FILE $Log;
     print FILE_M $Log;
     print FILE_RSSI $Log;	
		
}

if ($port2 eq "EQUIP"){
     $ssh_lsm->waitfor("]");
     $ssh_lsm->print("CHG-BF-CONF:CELL_NUM=1,BEAM_FORMING_ENABLE=0;");
     $ssh_lsm->waitfor("COMPLD");     
     my $Log = $ssh_lsm->waitfor(';');
     print $Log;
     print FILE $Log;
     print FILE_M $Log;
     print FILE_RSSI $Log;	
		
}	

if ($port3 eq "EQUIP"){
     $ssh_lsm->waitfor("]"); 
     $ssh_lsm->print("CHG-BF-CONF:CELL_NUM=2,BEAM_FORMING_ENABLE=0;");
     $ssh_lsm->waitfor("COMPLD");     
     my $Log = $ssh_lsm->waitfor(';');
     print $Log;
     print FILE $Log;
     print FILE_M $Log;
     print FILE_RSSI $Log;	
		
}

if ($secondcar eq "true"){
if ($port4 eq "EQUIP"){
     $ssh_lsm->waitfor("]"); 
     $ssh_lsm->print("CHG-BF-CONF:CELL_NUM=3,BEAM_FORMING_ENABLE=0;");
     $ssh_lsm->waitfor("COMPLD");     
     my $Log = $ssh_lsm->waitfor(';');
     print $Log;
     print FILE $Log;
     print FILE_M $Log;
     print FILE_RSSI $Log;	
		
}

if ($port5 eq "EQUIP"){
     $ssh_lsm->waitfor("]"); 
     $ssh_lsm->print("CHG-BF-CONF:CELL_NUM=4,BEAM_FORMING_ENABLE=0;");
     $ssh_lsm->waitfor("COMPLD");     
     my $Log = $ssh_lsm->waitfor(';');
     print $Log;
     print FILE $Log;
     print FILE_M $Log;
     print FILE_RSSI $Log;	
		
}

if ($port6 eq "EQUIP"){
     $ssh_lsm->waitfor("]"); 
     $ssh_lsm->print("CHG-BF-CONF:CELL_NUM=5,BEAM_FORMING_ENABLE=0;");
     $ssh_lsm->waitfor("COMPLD");     
     my $Log = $ssh_lsm->waitfor(';');
     print $Log;
     print FILE $Log;
     print FILE_M $Log;
     print FILE_RSSI $Log;	
		
}

                   }


$ssh_lsm->waitfor("]");
print "\n\n\n wait 20 Seconds ...\n\n\n";


sleep 20;




if ($port1 eq "EQUIP"){

$ssh_lsm->print("TEST-MODEL:0,\"ETM_1_1\";");

$ssh_lsm->waitfor('PASSWORD :');
$ssh_lsm->print("ROOT");
$ssh_lsm->waitfor('NOTIFY TEST RESULT');

sleep 5;
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;
print FILE_M $Log;
}

if ($port2 eq "EQUIP"){
$ssh_lsm->print("TEST-MODEL:1,\"ETM_1_1\";");

$ssh_lsm->waitfor('PASSWORD :');
$ssh_lsm->print("ROOT");
$ssh_lsm->waitfor('NOTIFY TEST RESULT');


sleep 5;
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;
print FILE_M $Log;
}

if ($port3 eq "EQUIP"){
$ssh_lsm->print("TEST-MODEL:2,\"ETM_1_1\";");

$ssh_lsm->waitfor('PASSWORD :');
$ssh_lsm->print("ROOT");
$ssh_lsm->waitfor('NOTIFY TEST RESULT');

sleep 5;
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;
print FILE_M $Log;
}



if ($secondcar eq "true"){

if ($port4 eq "EQUIP"){
$ssh_lsm->print("TEST-MODEL:3,\"ETM_1_1\";");

$ssh_lsm->waitfor('PASSWORD :');
$ssh_lsm->print("ROOT");
$ssh_lsm->waitfor('NOTIFY TEST RESULT');

sleep 5;
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;
print FILE_M $Log;
}


if ($port5 eq "EQUIP"){
$ssh_lsm->print("TEST-MODEL:4,\"ETM_1_1\";");

$ssh_lsm->waitfor('PASSWORD :');
$ssh_lsm->print("ROOT");
$ssh_lsm->waitfor('NOTIFY TEST RESULT');


sleep 5;
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;
print FILE_M $Log;
}


if ($port6 eq "EQUIP"){
$ssh_lsm->print("TEST-MODEL:5,\"ETM_1_1\";");

$ssh_lsm->waitfor('PASSWORD :');
$ssh_lsm->print("ROOT");
$ssh_lsm->waitfor('NOTIFY TEST RESULT');


sleep 5;
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;
print FILE_M $Log;
}

}




if ($secondcar4T eq "true"){

if ($port4 eq "EQUIP"){
$ssh_lsm->print("TEST-MODEL:9,\"ETM_1_1\";");

$ssh_lsm->waitfor('PASSWORD :');
$ssh_lsm->print("ROOT");
$ssh_lsm->waitfor('NOTIFY TEST RESULT');


sleep 5;
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;
print FILE_M $Log;
}


if ($port5 eq "EQUIP"){
$ssh_lsm->print("TEST-MODEL:10,\"ETM_1_1\";");

$ssh_lsm->waitfor('PASSWORD :');
$ssh_lsm->print("ROOT");
$ssh_lsm->waitfor('NOTIFY TEST RESULT');


sleep 5;
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;
print FILE_M $Log;
}


if ($port6 eq "EQUIP"){
$ssh_lsm->print("TEST-MODEL:11,\"ETM_1_1\";");

$ssh_lsm->waitfor('PASSWORD :');
$ssh_lsm->print("ROOT");
$ssh_lsm->waitfor('NOTIFY TEST RESULT');

sleep 5;
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;
print FILE_M $Log;
}

}



$ssh_lsm->print("MON-TEST;");
$ssh_lsm->waitfor('MONITOR TEST STATUS');
sleep 5;
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;
print FILE_M $Log;




print "n\n\n\n waiting for 3 minutes ...\n\n\n\n";
sleep 180;

if ($port1 eq "EQUIP"){
$ssh_lsm->print("TEST-TXPWR:0,6;");
$ssh_lsm->waitfor('NOTIFY TEST RESULT');
sleep 5;
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;
print FILE_M $Log;

@split_each_line_txpwr = split (/\n/,$Log);

foreach $split_each_line_txpwr(@split_each_line_txpwr){


$split_each_line_txpwr =~ s/Connect Board ID/BoardId/g;
$split_each_line_txpwr =~ s/Connect Port ID/PortId/g;
$split_each_line_txpwr =~ s/Tx RF Power/RF Pwr/g;
$split_each_line_txpwr =~ s/Fa0 Rssi/FA0 RSSI/g;


          if ($split_each_line_txpwr =~ m/BoardId\s+\=/) {
                    
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/\s+//g;
			$BoardIdoc0 = $_[1];
			    
							  }
          if ($split_each_line_txpwr =~ m/PortId\s+\=/) {
                    
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/\s+//g;
			$PortIdoc0 = $_[1];

							  }
							  
							  
	  if (($split_each_line_txpwr =~ m/RF Pwr/) && ($split_each_line_txpwr =~ m/\(dBm\)/)) {			#get RF PWR value
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/^\s+//g;
			my (@array_each_pwr, $array_each_pwr);
			@array_tx_pwr_ocns_0 = split(/\s+/, $_[1]);

                                                                                         }

	  if (($split_each_line_txpwr =~ m/FA0 RSSI/) && ($split_each_line_txpwr =~ m/\(dBm\)/)) {			#get RF PWR value
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/^\s+//g;
			@array_fa_pwr_ocns_0 = split(/\s+/, $_[1]);
                                                                                         }


          if (($secondcar eq "true") || ($secondcar4T eq "true")){
		  

	

if ($div eq "8T8R"){						  
	  if (($split_each_line_txpwr =~ m/FA2 RSSI/) && ($split_each_line_txpwr =~ m/\(dBm\)/)) {			#get RF PWR value
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/^\s+//g;
			@array_fa_pwr_ocns_0_2nd = split(/\s+/, $_[1]);
                                                                                             }
																							 
                   }

if ($div eq "4T4R"){						  
	  if (($split_each_line_txpwr =~ m/FA1 RSSI/) && ($split_each_line_txpwr =~ m/\(dBm\)/)) {			#get RF PWR value
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/^\s+//g;
			@array_fa_pwr_ocns_0_2nd = split(/\s+/, $_[1]);
                                                                                             }
																							 
                   }
				   
																							 

							
                                                                  }                      


          
                                                      }     

}

if ($port2 eq "EQUIP"){

$ssh_lsm->print("TEST-TXPWR:0,8;");
$ssh_lsm->waitfor('NOTIFY TEST RESULT');
sleep 5;
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;
print FILE_M $Log;

@split_each_line_txpwr = split (/\n/,$Log);

foreach $split_each_line_txpwr(@split_each_line_txpwr){


$split_each_line_txpwr =~ s/Connect Board ID/BoardId/g;
$split_each_line_txpwr =~ s/Connect Port ID/PortId/g;
$split_each_line_txpwr =~ s/Tx RF Power/RF Pwr/g;
$split_each_line_txpwr =~ s/Fa0 Rssi/FA0 RSSI/g;

          if ($split_each_line_txpwr =~ m/BoardId\s+\=/) {
                    
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/\s+//g;
			$BoardIdoc1 = $_[1];

							  }
          if ($split_each_line_txpwr =~ m/PortId\s+\=/) {
                    
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/\s+//g;
			$PortIdoc1 = $_[1];

							  }
							  
							  
	  if (($split_each_line_txpwr =~ m/RF Pwr/) && ($split_each_line_txpwr =~ m/\(dBm\)/)) {			#get RF PWR value
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/^\s+//g;
			@array_tx_pwr_ocns_1 = split(/\s+/, $_[1]);

                                                                                         }

	  if (($split_each_line_txpwr =~ m/FA0 RSSI/) && ($split_each_line_txpwr =~ m/\(dBm\)/)) {			#get RF PWR value
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/^\s+//g;
			@array_fa_pwr_ocns_1 = split(/\s+/, $_[1]);
                                                                                         }

          if (($secondcar eq "true") || ($secondcar4T eq "true")){
		  

 
					  
if ($div eq "8T8R"){									  
	  if (($split_each_line_txpwr =~ m/FA2 RSSI/) && ($split_each_line_txpwr =~ m/\(dBm\)/)) {			#get RF PWR value
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/^\s+//g;
			@array_fa_pwr_ocns_1_2nd = split(/\s+/, $_[1]);
                                                                                             }
																							 
                   }

if ($div eq "4T4R"){									  
	  if (($split_each_line_txpwr =~ m/FA1 RSSI/) && ($split_each_line_txpwr =~ m/\(dBm\)/)) {			#get RF PWR value
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/^\s+//g;
			@array_fa_pwr_ocns_1_2nd = split(/\s+/, $_[1]);
                                                                                             }
																							 
                   }				   
																							 
								
									
																							 
                                                                }
            
            
            
          
                                                      } 

}


if ($port3 eq "EQUIP"){

$ssh_lsm->print("TEST-TXPWR:0,10;");
$ssh_lsm->waitfor('NOTIFY TEST RESULT');
sleep 5;
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;
print FILE_M $Log;

@split_each_line_txpwr = split (/\n/,$Log);

foreach $split_each_line_txpwr(@split_each_line_txpwr){


$split_each_line_txpwr =~ s/Connect Board ID/BoardId/g;
$split_each_line_txpwr =~ s/Connect Port ID/PortId/g;
$split_each_line_txpwr =~ s/Tx RF Power/RF Pwr/g;
$split_each_line_txpwr =~ s/Fa0 Rssi/FA0 RSSI/g;

          if ($split_each_line_txpwr =~ m/BoardId\s+\=/) {
                    
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/\s+//g;
			$BoardIdoc2 = $_[1];

							  }
          if ($split_each_line_txpwr =~ m/PortId\s+\=/) {
                    
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/\s+//g;
			$PortIdoc2 = $_[1];

							  }
							  
							  
	  if (($split_each_line_txpwr =~ m/RF Pwr/) && ($split_each_line_txpwr =~ m/\(dBm\)/)) {			#get RF PWR value
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/^\s+//g;
			@array_tx_pwr_ocns_2 = split(/\s+/, $_[1]);

                                                                                         }

	  if (($split_each_line_txpwr =~ m/FA0 RSSI/) && ($split_each_line_txpwr =~ m/\(dBm\)/)) {			#get RF PWR value
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/^\s+//g;
			@array_fa_pwr_ocns_2 = split(/\s+/, $_[1]);
                                                                                         }

          if (($secondcar eq "true") || ($secondcar4T eq "true")){
		  



if ($div eq "8T8R"){								  
	  if (($split_each_line_txpwr =~ m/FA2 RSSI/) && ($split_each_line_txpwr =~ m/\(dBm\)/)) {			#get RF PWR value
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/^\s+//g;
			@array_fa_pwr_ocns_2_2nd = split(/\s+/, $_[1]);
                                                                                             }
                   }																							 

if ($div eq "4T4R"){								  
	  if (($split_each_line_txpwr =~ m/FA1 RSSI/) && ($split_each_line_txpwr =~ m/\(dBm\)/)) {			#get RF PWR value
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/^\s+//g;
			@array_fa_pwr_ocns_2_2nd = split(/\s+/, $_[1]);
                                                                                             }
                   }					   
																							 
			
									
																							 
																							 
																							 
                                                                }
          
                                                      } 
}


if ($port1 eq "EQUIP"){
$ssh_lsm->print("TEST-VSWR:0,6;");
$ssh_lsm->waitfor('NOTIFY TEST RESULT');
sleep 5;
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;
print FILE_M $Log;


@split_each_line_txpwr = split (/\n/,$Log);

foreach $split_each_line_txpwr(@split_each_line_txpwr){


$split_each_line_txpwr =~ s/Connect Board ID/BoardId/g;
$split_each_line_txpwr =~ s/Connect Port ID/PortId/g;
$split_each_line_txpwr =~ s/Vswr/VSWR/g;

          if ($split_each_line_txpwr =~ m/BoardId\s+\=/) {
                    
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/\s+//g;
			$BoardIdvw0 = $_[1];

							  }
          if ($split_each_line_txpwr =~ m/PortId\s+\=/) {
                    
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/\s+//g;
			$PortIdvw0 = $_[1];

							  }
							  
							  
	  if ($split_each_line_txpwr =~ m/VSWR\s+\=/) {			#get RF PWR value
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/^\s+//g;
			@array_each_vswr0 = split(/\s+/, $_[1]);

                                                                                         }

	  if (($split_each_line_txpwr =~ m/Return Loss/) && ($split_each_line_txpwr =~ m/\(dB\)/)) {			#get RF PWR value
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/^\s+//g;
			@array_each_rt0 = split(/\s+/, $_[1]);
                                                                                         }




          
   
                                                     }   
}

if ($port2 eq "EQUIP"){

$ssh_lsm->print("TEST-VSWR:0,8;");
$ssh_lsm->waitfor('NOTIFY TEST RESULT');
sleep 5;
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;
print FILE_M $Log;


@split_each_line_txpwr = split (/\n/,$Log);

foreach $split_each_line_txpwr(@split_each_line_txpwr){


$split_each_line_txpwr =~ s/Connect Board ID/BoardId/g;
$split_each_line_txpwr =~ s/Connect Port ID/PortId/g;
$split_each_line_txpwr =~ s/Vswr/VSWR/g;

          if ($split_each_line_txpwr =~ m/BoardId\s+\=/) {
                    
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/\s+//g;
			$BoardIdvw1 = $_[1];

							  }
          if ($split_each_line_txpwr =~ m/PortId\s+\=/) {
                    
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/\s+//g;
			$PortIdvw1 = $_[1];

							  }
							  
							  
	  if ($split_each_line_txpwr =~ m/VSWR\s+\=/) {			#get RF PWR value
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/^\s+//g;
			@array_each_vswr1 = split(/\s+/, $_[1]);

                                                                                         }

	  if (($split_each_line_txpwr =~ m/Return Loss/) && ($split_each_line_txpwr =~ m/\(dB\)/)) {			#get RF PWR value
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/^\s+//g;
			@array_each_rt1 = split(/\s+/, $_[1]);
                                                                                         }




          
   
                                                     }   
}

if ($port3 eq "EQUIP"){
$ssh_lsm->print("TEST-VSWR:0,10;");
$ssh_lsm->waitfor('NOTIFY TEST RESULT');
sleep 5;
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;
print FILE_M $Log;


@split_each_line_txpwr = split (/\n/,$Log);

foreach $split_each_line_txpwr(@split_each_line_txpwr){


$split_each_line_txpwr =~ s/Connect Board ID/BoardId/g;
$split_each_line_txpwr =~ s/Connect Port ID/PortId/g;
$split_each_line_txpwr =~ s/Vswr/VSWR/g;

          if ($split_each_line_txpwr =~ m/BoardId\s+\=/) {
                    
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/\s+//g;
			$BoardIdvw2 = $_[1];

							  }
          if ($split_each_line_txpwr =~ m/PortId\s+\=/) {
                    
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/\s+//g;
			$PortIdvw2 = $_[1];

							  }
							  
							  
	  if ($split_each_line_txpwr =~ m/VSWR\s+\=/) {			#get RF PWR value
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/^\s+//g;
			@array_each_vswr2 = split(/\s+/, $_[1]);

                                                                                         }

	  if (($split_each_line_txpwr =~ m/Return Loss/) && ($split_each_line_txpwr =~ m/\(dB\)/)) {			#get RF PWR value
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/^\s+//g;
			@array_each_rt2 = split(/\s+/, $_[1]);
                                                                                         }




          
   
                                                     }   
}


if ($port1 eq "EQUIP"){

$ssh_lsm->print("TERM-TEST:0;");
$ssh_lsm->waitfor('NOTIFY TEST RESULT');
sleep 5;
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;
print FILE_M $Log;
}

if ($port2 eq "EQUIP"){

$ssh_lsm->print("TERM-TEST:1;");
$ssh_lsm->waitfor('NOTIFY TEST RESULT');
sleep 5;
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;
print FILE_M $Log;
}

if ($port3 eq "EQUIP"){

$ssh_lsm->print("TERM-TEST:2;");
$ssh_lsm->waitfor('NOTIFY TEST RESULT');
sleep 5;
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;
print FILE_M $Log;
}

if (($secondcar eq "true") || ($secondcar4T eq "true")){

if ($port4 eq "EQUIP"){

$ssh_lsm->print("TERM-TEST:3;");
$ssh_lsm->waitfor('NOTIFY TEST RESULT');
sleep 5;
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;
print FILE_M $Log;
}

if ($port5 eq "EQUIP"){

$ssh_lsm->print("TERM-TEST:4;");
$ssh_lsm->waitfor('NOTIFY TEST RESULT');
sleep 5;
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;
print FILE_M $Log;
}

if ($port6 eq "EQUIP"){

$ssh_lsm->print("TERM-TEST:5;");
$ssh_lsm->waitfor('NOTIFY TEST RESULT');
sleep 5;
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;
print FILE_M $Log;
}

}
							
######################

$ssh_lsm->print("exit;");
$ssh_lsm->waitfor('/ENB/r-01/bin');


$ssh_lsm->print("exit");
$ssh_lsm->waitfor('LMA3');

$ssh_lsm->print("exit");

undef @ret;

$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName RTRV-RET-INF;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;
print FILE_M $Log;

my (@split_each_line_vlan,$split_each_line_vlan);
@split_each_line_vlan = split (/\n/,$Log);

foreach $split_each_line_vlan (@split_each_line_vlan){
          
          
          if ($split_each_line_vlan =~ m/^\s+\d+/){
                @_ = split (/\s+/,$split_each_line_vlan);
                
                
                    
                    my $CONNECT_BOARD_ID = $_[1];
                    my $CONNECT_PORT_ID  = $_[2];
                    my $ALD_ID  = $_[3];
                    my $ANT_ID = $_[4];
                    my $TILT = $_[5];
                    my $data = "$CONNECT_BOARD_ID,$CONNECT_PORT_ID,$ALD_ID,$ANT_ID,$TILT";                    
                    push (@ret,$data);               

                                  
                    
                                                  }                 
          
                                                   
                                                   }

if ($div ne "4T4R"){


$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-BF-CONF:0,True;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;

$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-BF-CONF:1,True;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;

$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-BF-CONF:2,True;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;


if ($secondcar eq "true"){
      
$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-BF-CONF:3,True;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;

$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-BF-CONF:4,True;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;

$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-BF-CONF:5,True;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;      

      }

if ($secondcar4T eq "true"){
      
$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-BF-CONF:9,True;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;

$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-BF-CONF:10,True;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;

$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-BF-CONF:11,True;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;      

      }

}

$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-CONF:0,locked;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;


$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-CONF:1,locked;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;



$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-CONF:2,locked;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;

if ($secondcar eq "true"){
      
$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-CONF:3,locked;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;


$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-CONF:4,locked;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;



$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-CONF:5,locked;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;
      
      }

if ($secondcar4T eq "true"){

$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-CONF:9,locked;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;


$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-CONF:10,locked;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;



$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-CONF:11,locked;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;
      
      
}      


$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName INIT-RRH:CONN_BD_ID=0,CONN_PORT_ID=6;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;

$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName INIT-RRH:CONN_BD_ID=0,CONN_PORT_ID=8;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;

$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName INIT-RRH:CONN_BD_ID=0,CONN_PORT_ID=10;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;


print "Please wait aprox 3 min to clear the alarms!\n";

sleep 120;



$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName RTRV-ALM-LIST;");
$ssh_lsm->waitfor('COMPLD');
sleep 5;
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;
print FILE_M $Log;

@split_each_line_txpwr = split(/\n/,$Log);


foreach $split_each_line_txpwr (@split_each_line_txpwr){
	
if (($split_each_line_txpwr =~ m/critical/) || ($split_each_line_txpwr =~ m/major/) || ($split_each_line_txpwr =~ m/minor/)) {
	push (@alarm_list,$split_each_line_txpwr);	
															        }

							}



$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName RTRV-ALM-LOG;");
$ssh_lsm->waitfor('COMPLD');
sleep 5;
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;
print FILE_M $Log;


@split_each_line_txpwr = split(/\n/,$Log);


foreach $split_each_line_txpwr (@split_each_line_txpwr){
	
if ($split_each_line_txpwr =~ m/\d+/) {
	push (@alarm_log,$split_each_line_txpwr);	
															        }

							}



close FILE;
close FILE_M;

}


open (HTMLFILE, ">C:\\3G_4G_TOOL_Scripts\\2.5\\ATP_2.5\\REPORT\\$cascade\_$eNBName\_$now\.html");
print (HTMLFILE "<table width=100% cellspacing=0 cellpadding=5 border=0>\n");
print (HTMLFILE "<tr><td align=center><font size=+3>$cascade $eNBName 4G 2.5 ATP REPORT $now </font></td></tr>\n");
print (HTMLFILE "</table>\n");


print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><th align=center>CASCADE ID</th><th align=center>eNB NAME</th><th align=center>LSM</th><th align=center>BUCKET</th><th align=center>ADID</th></tr>\n");  


print (HTMLFILE "<td align=center>$cascade</td>\n");
print (HTMLFILE "<td align=center>$eNBName</td>\n");
print (HTMLFILE "<td align=center>$LSM</td>\n");
print (HTMLFILE "<td align=center>$bucket</td>\n");
print (HTMLFILE "<td align=center>$user</td>\n");   
print (HTMLFILE "</td>\n");
print (HTMLFILE "</tr>\n");
                    
                    
print (HTMLFILE "</table>\n");     






print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=11 align=center bgcolor=#EEEEEE><b>RTRV-RET-INF</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>CONNECT_BOARD_ID</th><th align=center>CONNECT_PORT_ID</th><th align=center>ALD_ID</th><th align=center>ANT_ID</th><th align=center>TILT</th></tr>\n");  
  
foreach $_(@ret){

@_ = split (/,/,$_);


if ($_[1] eq 6){ 
if (($_[3] eq "1") && ($_[4] eq $alphatilt)){
    
    print (HTMLFILE "<td align=center>$_[0]</td>\n");
    print (HTMLFILE "<td align=center>$_[1]</td>\n");  
    print (HTMLFILE "<td align=center>$_[2]</td>\n");
    print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
    print (HTMLFILE "<td align=center>$_[4]</td>\n");    
         
    }
    else {
    print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[0]</td>\n");    
    print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");                               
    print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[2]</td>\n");    
    print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[3]</td>\n");
    print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[4]</td>\n");     
      
         } 
         
       }      

if ($_[1] eq 8){ 
if (($_[3] eq "1") && ($_[4] eq $betatilt)){
    
    print (HTMLFILE "<td align=center>$_[0]</td>\n");
    print (HTMLFILE "<td align=center>$_[1]</td>\n");  
    print (HTMLFILE "<td align=center>$_[2]</td>\n");
    print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
    print (HTMLFILE "<td align=center>$_[4]</td>\n");    
         
    }
    else {
    print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[0]</td>\n");    
    print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");                               
    print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[2]</td>\n");    
    print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[3]</td>\n");
    print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[4]</td>\n");     
      
         } 
         
       }    

if ($_[1] eq 10){ 
if (($_[3] eq "1") && ($_[4] eq $gammatilt)){
    
    print (HTMLFILE "<td align=center>$_[0]</td>\n");
    print (HTMLFILE "<td align=center>$_[1]</td>\n");  
    print (HTMLFILE "<td align=center>$_[2]</td>\n");
    print (HTMLFILE "<td align=center>$_[3]</td>\n"); 
    print (HTMLFILE "<td align=center>$_[4]</td>\n");    
         
    }
    else {
    print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[0]</td>\n");    
    print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");                               
    print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[2]</td>\n");    
    print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[3]</td>\n");
    print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[4]</td>\n");     
      
         } 
         
       }            
       
         
    print (HTMLFILE "</td>\n");
    print (HTMLFILE "</tr>\n");




                    } 
                    
                    
print (HTMLFILE "</table>\n"); 




print (HTMLFILE "<br><br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=11 align=center bgcolor=#EEEEEE><b>TEST RSSI WITH OUT OCNS Design TILT</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>Cascade</th><th align=center>Board Id</th><th align=center>Port Id</th><th align=center>Fa0 Rssi(dBm) Path 0</th><th align=center>Fa0 Rssi(dBm) Path 1</th><th align=center>Fa0 Rssi(dBm) Path 2</th><th align=center>Fa0 Rssi(dBm) Path 3</th><th align=center>Fa0 Rssi(dBm) Path 4</th><th align=center>Fa0 Rssi(dBm) Path 5</th><th align=center>Fa0 Rssi(dBm) Path 6</th><th align=center>Fa0 Rssi(dBm) Path 7</th></tr>\n");


print (HTMLFILE "<td>$cascade</td>\n");
print (HTMLFILE "<td>0</td>\n");
print (HTMLFILE "<td>6</td>\n");

foreach $_(@array_fa_pwr_0){

if (($_ <= -95) && ($_ >= -101)){

print (HTMLFILE "<td align=center>$_</td>\n");


}

else{

print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_</td>\n");

}
          
                           }             

print (HTMLFILE "</td>\n");
print (HTMLFILE "</tr>\n");

print (HTMLFILE "<td>$cascade</td>\n");
print (HTMLFILE "<td>0</td>\n");
print (HTMLFILE "<td>8</td>\n");

foreach $_(@array_fa_pwr_1){

if (($_ <= -95) && ($_ >= -101)){

print (HTMLFILE "<td align=center>$_</td>\n");


}

else{

print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_</td>\n");

}

          
                           }             

print (HTMLFILE "</td>\n");
print (HTMLFILE "</tr>\n");


print (HTMLFILE "<td>$cascade</td>\n");
print (HTMLFILE "<td>0</td>\n");
print (HTMLFILE "<td>10</td>\n");

foreach $_(@array_fa_pwr_2){

if (($_ <= -95) && ($_ >= -101)){

print (HTMLFILE "<td align=center>$_</td>\n");


}

else{

print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_</td>\n");

}

          
                           }             

print (HTMLFILE "</td>\n");
print (HTMLFILE "</tr>\n");

print (HTMLFILE "</table>\n");





print (HTMLFILE "<br><br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=11 align=center bgcolor=#EEEEEE><b>TEST RSSI WITH OUT OCNS Design TILT</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>Cascade</th><th align=center>Board Id</th><th align=center>Port Id</th><th align=center>Fa1 Rssi(dBm) Path 0</th><th align=center>Fa1 Rssi(dBm) Path 1</th><th align=center>Fa1 Rssi(dBm) Path 2</th><th align=center>Fa1 Rssi(dBm) Path 3</th><th align=center>Fa1 Rssi(dBm) Path 4</th><th align=center>Fa1 Rssi(dBm) Path 5</th><th align=center>Fa1 Rssi(dBm) Path 6</th><th align=center>Fa1 Rssi(dBm) Path 7</th></tr>\n");


print (HTMLFILE "<td>$cascade</td>\n");
print (HTMLFILE "<td>0</td>\n");
print (HTMLFILE "<td>6</td>\n");

foreach $_(@array_fa_pwr_0_2nd){

if (($_ <= -95) && ($_ >= -101)){

print (HTMLFILE "<td align=center>$_</td>\n");


}

else{

print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_</td>\n");

}
          
                           }             

print (HTMLFILE "</td>\n");
print (HTMLFILE "</tr>\n");

print (HTMLFILE "<td>$cascade</td>\n");
print (HTMLFILE "<td>0</td>\n");
print (HTMLFILE "<td>8</td>\n");

foreach $_(@array_fa_pwr_1_2nd){

if (($_ <= -95) && ($_ >= -101)){

print (HTMLFILE "<td align=center>$_</td>\n");


}

else{

print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_</td>\n");

}

          
                           }             

print (HTMLFILE "</td>\n");
print (HTMLFILE "</tr>\n");


print (HTMLFILE "<td>$cascade</td>\n");
print (HTMLFILE "<td>0</td>\n");
print (HTMLFILE "<td>10</td>\n");

foreach $_(@array_fa_pwr_2_2nd){

if (($_ <= -95) && ($_ >= -101)){

print (HTMLFILE "<td align=center>$_</td>\n");


}

else{

print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_</td>\n");

}

          
                           }             

print (HTMLFILE "</td>\n");
print (HTMLFILE "</tr>\n");

print (HTMLFILE "</table>\n");




if ((@array_fa_pwr_0_tilt) || (@array_fa_pwr_1_tilt) || (@array_fa_pwr_2_tilt)){
	
	
print (HTMLFILE "<br><br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=11 align=center bgcolor=#EEEEEE><b>TEST RSSI WITH OUT OCNS WITH MAX TILT</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>Cascade</th><th align=center>Board Id</th><th align=center>Port Id</th><th align=center>Fa0 Rssi(dBm) Path 0</th><th align=center>Fa0 Rssi(dBm) Path 1</th><th align=center>Fa0 Rssi(dBm) Path 2</th><th align=center>Fa0 Rssi(dBm) Path 3</th><th align=center>Fa0 Rssi(dBm) Path 4</th><th align=center>Fa0 Rssi(dBm) Path 5</th><th align=center>Fa0 Rssi(dBm) Path 6</th><th align=center>Fa0 Rssi(dBm) Path 7</th></tr>\n");


print (HTMLFILE "<td>$cascade</td>\n");
print (HTMLFILE "<td>0</td>\n");
print (HTMLFILE "<td>6</td>\n");

foreach $_(@array_fa_pwr_0_tilt){

if (($_ <= -95) && ($_ >= -101)){

print (HTMLFILE "<td align=center>$_</td>\n");


}

else{

print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_</td>\n");

}
          
                           }             

print (HTMLFILE "</td>\n");
print (HTMLFILE "</tr>\n");

print (HTMLFILE "<td>$cascade</td>\n");
print (HTMLFILE "<td>0</td>\n");
print (HTMLFILE "<td>8</td>\n");

foreach $_(@array_fa_pwr_1_tilt){

if (($_ <= -95) && ($_ >= -101)){

print (HTMLFILE "<td align=center>$_</td>\n");


}

else{

print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_</td>\n");

}

          
                           }             

print (HTMLFILE "</td>\n");
print (HTMLFILE "</tr>\n");


print (HTMLFILE "<td>$cascade</td>\n");
print (HTMLFILE "<td>0</td>\n");
print (HTMLFILE "<td>10</td>\n");

foreach $_(@array_fa_pwr_2_tilt){

if (($_ <= -95) && ($_ >= -101)){

print (HTMLFILE "<td align=center>$_</td>\n");


}

else{

print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_</td>\n");

}

          
                           }             

print (HTMLFILE "</td>\n");
print (HTMLFILE "</tr>\n");

print (HTMLFILE "</table>\n");	
	
	
}	







#######################tx power w ocns

if (($secondcar ne "true") || ($secondcar4T ne "true")){
print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=11 align=center bgcolor=#EEEEEE><b>TEST-TXPWR WITH OCNS</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>Cascade</th><th align=center>Board Id</th><th align=center>Port Id</th><th align=center>RF Pwr(dBm) Path 0</th><th align=center>RF Pwr(dBm) Path 1</th><th align=center>RF Pwr(dBm) Path 2</th><th align=center>RF Pwr(dBm) Path 3</th><th align=center>RF Pwr(dBm) Path 4</th><th align=center>RF Pwr(dBm) Path 5</th><th align=center>RF Pwr(dBm) Path 6</th><th align=center>RF Pwr(dBm) Path 7</th></tr>\n");


print (HTMLFILE "<td>$cascade</td>\n");
print (HTMLFILE "<td>$BoardIdoc0</td>\n");
print (HTMLFILE "<td>$PortIdoc0</td>\n");

foreach $_(@array_tx_pwr_ocns_0){

if (($_ >= 35.5) && ($_ <= 39.5)){

print (HTMLFILE "<td align=center>$_</td>\n");


}

else{

print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_</td>\n");

}
          
                           }             

print (HTMLFILE "</td>\n");
print (HTMLFILE "</tr>\n");


print (HTMLFILE "<td>$cascade</td>\n");
print (HTMLFILE "<td>$BoardIdoc1</td>\n");
print (HTMLFILE "<td>$PortIdoc1</td>\n");

foreach $_(@array_tx_pwr_ocns_1){

if (($_ >= 35.5) && ($_ <= 39.5)){

print (HTMLFILE "<td align=center>$_</td>\n");


}

else{

print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_</td>\n");

}

          
                           }             

print (HTMLFILE "</td>\n");
print (HTMLFILE "</tr>\n");


print (HTMLFILE "<td>$cascade</td>\n");
print (HTMLFILE "<td>$BoardIdoc2</td>\n");
print (HTMLFILE "<td>$PortIdoc2</td>\n");

foreach $_(@array_tx_pwr_ocns_2){

if (($_ >= 35.5) && ($_ <= 39.5)){

print (HTMLFILE "<td align=center>$_</td>\n");


}

else{

print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_</td>\n");

}

          
                           }             

print (HTMLFILE "</td>\n");
print (HTMLFILE "</tr>\n");

print (HTMLFILE "</table>\n");

}


if (($secondcar eq "true") || ($secondcar4T eq "true")){
print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=11 align=center bgcolor=#EEEEEE><b>TEST-TXPWR WITH OCNS</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>Cascade</th><th align=center>Board Id</th><th align=center>Port Id</th><th align=center>RF Pwr(dBm) Path 0</th><th align=center>RF Pwr(dBm) Path 1</th><th align=center>RF Pwr(dBm) Path 2</th><th align=center>RF Pwr(dBm) Path 3</th><th align=center>RF Pwr(dBm) Path 4</th><th align=center>RF Pwr(dBm) Path 5</th><th align=center>RF Pwr(dBm) Path 6</th><th align=center>RF Pwr(dBm) Path 7</th></tr>\n");


print (HTMLFILE "<td>$cascade</td>\n");
print (HTMLFILE "<td>$BoardIdoc0</td>\n");
print (HTMLFILE "<td>$PortIdoc0</td>\n");

foreach $_(@array_tx_pwr_ocns_0){

if (($_ >= 39.2) && ($_ <= 43.2)){

print (HTMLFILE "<td align=center>$_</td>\n");


}

else{

print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_</td>\n");

}
          
                           }             

print (HTMLFILE "</td>\n");
print (HTMLFILE "</tr>\n");


print (HTMLFILE "<td>$cascade</td>\n");
print (HTMLFILE "<td>$BoardIdoc1</td>\n");
print (HTMLFILE "<td>$PortIdoc1</td>\n");

foreach $_(@array_tx_pwr_ocns_1){

if (($_ >= 39.2) && ($_ <= 43.2)){

print (HTMLFILE "<td align=center>$_</td>\n");


}

else{

print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_</td>\n");

}

          
                           }             

print (HTMLFILE "</td>\n");
print (HTMLFILE "</tr>\n");


print (HTMLFILE "<td>$cascade</td>\n");
print (HTMLFILE "<td>$BoardIdoc2</td>\n");
print (HTMLFILE "<td>$PortIdoc2</td>\n");

foreach $_(@array_tx_pwr_ocns_2){

if (($_ >= 39.2) && ($_ <= 43.2)){

print (HTMLFILE "<td align=center>$_</td>\n");


}

else{

print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_</td>\n");

}

          
                           }             

print (HTMLFILE "</td>\n");
print (HTMLFILE "</tr>\n");

print (HTMLFILE "</table>\n");

}





######################################################################3

#####vswr


print (HTMLFILE "<br><br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=11 align=center bgcolor=#EEEEEE><b>TEST-VSWR WITH OCNS</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>Cascade</th><th align=center>Board Id</th><th align=center>Port Id</th><th align=center>Vswr Path 0</th><th align=center>Vswr Path 1</th><th align=center>Vswr Path 2</th><th align=center>Vswr Path 3</th><th align=center>Vswr Path 4</th><th align=center>Vswr Path 5</th><th align=center>Vswr Path 6</th><th align=center>Vswr Path 7</th></tr>\n");


print (HTMLFILE "<td>$cascade</td>\n");
print (HTMLFILE "<td>$BoardIdvw0</td>\n");
print (HTMLFILE "<td>$PortIdvw0</td>\n");

foreach $_(@array_each_vswr0){

if (($_ <= 1.5) && ($_ >= 1)){

print (HTMLFILE "<td align=center>$_</td>\n");


}

else{

print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_</td>\n");

}
          
                           }             

print (HTMLFILE "</td>\n");
print (HTMLFILE "</tr>\n");


print (HTMLFILE "<td>$cascade</td>\n");
print (HTMLFILE "<td>$BoardIdvw1</td>\n");
print (HTMLFILE "<td>$PortIdvw1</td>\n");

foreach $_(@array_each_vswr1){

if (($_ <= 1.5) && ($_ >= 1)){

print (HTMLFILE "<td align=center>$_</td>\n");


}

else{

print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_</td>\n");

}

          
                           }             

print (HTMLFILE "</td>\n");
print (HTMLFILE "</tr>\n");

print (HTMLFILE "<td>$cascade</td>\n");
print (HTMLFILE "<td>$BoardIdvw2</td>\n");
print (HTMLFILE "<td>$PortIdvw2</td>\n");

foreach $_(@array_each_vswr2){

if (($_ <= 1.5) && ($_ >= 1)){

print (HTMLFILE "<td align=center>$_</td>\n");


}

else{

print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_</td>\n");

}

          
                           }             

print (HTMLFILE "</td>\n");
print (HTMLFILE "</tr>\n");

print (HTMLFILE "</table>\n");


####alarm list 

my ($alarm_log);

print (HTMLFILE "<br><br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=11 align=center bgcolor=#EEEEEE><b>ALARM LIST</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>UNIT_TYPE</th><th align=center>ALARM_TYPE</th><th align=center>LOCATION</th><th align=center>RAISED_Date</th><th align=center>RAISED_TIME</th><th align=center>ALARM_GROUP</th><th align=center>PROBABLE_CAUSE</th><th align=center>SEVERITY</th><th align=center>ALARM_CODE</th><th align=center>INFO</th></tr>\n");

foreach $alarm_log (@alarm_list){
	$alarm_log =~ s/^\s+//g;
	@_ = split (/\s+/,$alarm_log);
	foreach $_ (@_){
	print (HTMLFILE "<td>$_</td>\n");
                       }       
	print (HTMLFILE "</tr>\n");
                       }       

print (HTMLFILE "</td>\n");
print (HTMLFILE "</tr>\n");

print (HTMLFILE "</table>\n");

close (HTMLFILE);

# }
# }



sub Check_RSSI{
	


$worksheet_RSSI->merge_range('A1:E1', "RSSI STATUS With Design Tilt", $format_title_merge);                      
                        
                        
my $n = 0;

my $k = 2;

$worksheet_RSSI->write($k, $n, 'eNB Name', $format_white);
$n++;
$worksheet_RSSI->write($k, $n, 'Board Id', $format_white);
$n++;  
$worksheet_RSSI->write($k, $n, 'Port Id', $format_white);
$n++;                        
$worksheet_RSSI->write($k, $n, 'Fa0 Rssi(dBm) Path 0', $format_white);                        
$n++;                        
$worksheet_RSSI->write($k, $n, 'Fa0 Rssi(dBm) Path 1', $format_white);                        
$n++;  
$worksheet_RSSI->write($k, $n, 'Fa0 Rssi(dBm) Path 2', $format_white);                        
$n++;  
$worksheet_RSSI->write($k, $n, 'Fa0 Rssi(dBm) Path 3', $format_white);                        
$n++;  
$worksheet_RSSI->write($k, $n, 'Fa0 Rssi(dBm) Path 4', $format_white);                        
$n++;  
$worksheet_RSSI->write($k, $n, 'Fa0 Rssi(dBm) Path 5', $format_white);                        
$n++;  
$worksheet_RSSI->write($k, $n, 'Fa0 Rssi(dBm) Path 6', $format_white);                        
$n++;  
$worksheet_RSSI->write($k, $n, 'Fa0 Rssi(dBm) Path 7', $format_white);                        
$n++;  
$worksheet_RSSI->write($k, $n, 'RSSI Status', $format_white);                        
$n++; 


#$k++;

#$worksheet_RSSI->write($k, 0, $eNBName, $format_white);
#$worksheet_RSSI->write($k, 1, $BoardId0, $format_white);
#$worksheet_RSSI->write($k, 2, $PortId0, $format_white);

#$n = 2;

if (@array_fa_pwr_0){
$Status1 = "False";

$k++;

$worksheet_RSSI->write($k, 0, $eNBName, $format_white);
$worksheet_RSSI->write($k, 1, $BoardId0, $format_white);
$worksheet_RSSI->write($k, 2, $PortId0, $format_white);

$n = 2;


foreach $_(@array_fa_pwr_0){
	      
$n++;

if ($_ < -101){
$worksheet_RSSI->write($k, $n, $_, $format_yellow);      
	
	    }

if (($_ <= -95) && ($_ >= -101)){
$worksheet_RSSI->write($k, $n, $_, $format_white); 

}

if (($_ <= -94) && ($_ > -95)){
$worksheet_RSSI->write($k, $n, $_, $format_yellow);
$Status1 = "True";
}


if ($_ > -94){
$worksheet_RSSI->write($k, $n, $_, $format_red);
$Status1 = "True";

}
          
                           }

if ($Status1 eq "False"){                           
    $worksheet_RSSI->write($k, 11, 'PASS', $format_white);  
    print "\nPORT 6 RSSI STATUS: PASS\n";                         
} 

if ($Status1 eq "True"){                           
    $worksheet_RSSI->write($k, 11, 'Fail', $format_white);
    print "\nPORT 6 RSSI STATUS: FAIL\n";                            
} 

                              	
}	

##### 2nd carreir

if (@array_fa_pwr_0_2nd){
#$Status1 = "False";
$Status4 = "False";

$k++;

$worksheet_RSSI->write($k, 0, $eNBName, $format_white);
$worksheet_RSSI->write($k, 1, $BoardId1, $format_white);
$worksheet_RSSI->write($k, 2, $PortId0, $format_white);

$n = 2;

foreach $_(@array_fa_pwr_0_2nd){
	      
$n++;

if ($_ < -101){
$worksheet_RSSI->write($k, $n, $_, $format_yellow);      
	
	    }

if (($_ <= -95) && ($_ >= -101)){
$worksheet_RSSI->write($k, $n, $_, $format_white); 

}

if (($_ <= -94) && ($_ > -95)){
$worksheet_RSSI->write($k, $n, $_, $format_yellow);
#$Status1 = "True";
$Status4 = "True";
}


if ($_ > -94){
$worksheet_RSSI->write($k, $n, $_, $format_red);
#$Status1 = "True";
$Status4 = "True";
}
          
                           }

#if ($Status1 eq "False"){ 
 if ($Status4 eq "False"){                          
    $worksheet_RSSI->write($k, 11, 'PASS', $format_white);  
    print "\nPORT 6 RSSI STATUS: PASS\n";                         
} 

#if ($Status1 eq "True"){  
 if ($Status4 eq "True"){                         
    $worksheet_RSSI->write($k, 11, 'Fail', $format_white);
    print "\nPORT 6 RSSI STATUS: FAIL\n";                            
} 

                              	
}





if (@array_fa_pwr_1){
$Status2 = "False";	
$k++;

$worksheet_RSSI->write($k, 0, $eNBName, $format_white);
$worksheet_RSSI->write($k, 1, $BoardId1, $format_white);
$worksheet_RSSI->write($k, 2, $PortId1, $format_white);

$n = 2;



foreach $_(@array_fa_pwr_1){
	
$n++;
if ($_ < -101){
$worksheet_RSSI->write($k, $n, $_, $format_yellow);       
	
	    }

if (($_ <= -95) && ($_ >= -101)){
$worksheet_RSSI->write($k, $n, $_, $format_white);      

}

if (($_ <= -94) && ($_ > -95)){
$worksheet_RSSI->write($k, $n, $_, $format_yellow);      
$Status2 = "True";
}


if ($_ > -94){
$worksheet_RSSI->write($k, $n, $_, $format_red);
$Status2 = "True";

}

          
                           }     	

if ($Status2 eq "False"){                           
    $worksheet_RSSI->write($k, 11, 'PASS', $format_white);  
    print "\nPORT 8 RSSI STATUS: PASS\n";                         
} 

if ($Status2 eq "True"){                           
    $worksheet_RSSI->write($k, 11, 'FAIL', $format_white); 
    print "\nPORT 8 RSSI STATUS: FAIL\n";                          
}
 	
}		


### 2nd carrir


if (@array_fa_pwr_1_2nd){
#$Status2 = "False";
$Status5 = "False";
$k++;

$worksheet_RSSI->write($k, 0, $eNBName, $format_white);
$worksheet_RSSI->write($k, 1, $BoardId1, $format_white);
$worksheet_RSSI->write($k, 2, $PortId1, $format_white);

$n = 2;



foreach $_(@array_fa_pwr_1_2nd){
	
$n++;
if ($_ < -101){
$worksheet_RSSI->write($k, $n, $_, $format_yellow);       
	
	    }

if (($_ <= -95) && ($_ >= -101)){
$worksheet_RSSI->write($k, $n, $_, $format_white);      

}

if (($_ <= -94) && ($_ > -95)){
$worksheet_RSSI->write($k, $n, $_, $format_yellow);      
#$Status2 = "True";
$Status5 = "True";
}


if ($_ > -94){
$worksheet_RSSI->write($k, $n, $_, $format_red);
#$Status2 = "True";
$Status5 = "True";

}

          
                           }     	

#if ($Status2 eq "False"){ 
if ($Status5 eq "False"){                           
    $worksheet_RSSI->write($k, 11, 'PASS', $format_white);  
    print "\nPORT 8 RSSI STATUS: PASS\n";                         
} 

#if ($Status2 eq "True"){ 
if ($Status5 eq "True"){                          
    $worksheet_RSSI->write($k, 11, 'FAIL', $format_white); 
    print "\nPORT 8 RSSI STATUS: FAIL\n";                          
}
 	
}		

	

if (@array_fa_pwr_2){
$Status3 = "False";
$k++;

$worksheet_RSSI->write($k, 0, $eNBName, $format_white);
$worksheet_RSSI->write($k, 1, $BoardId2, $format_white);
$worksheet_RSSI->write($k, 2, $PortId2, $format_white);

$n = 2;



foreach $_(@array_fa_pwr_2){
$n++;
if ($_ < -101){
$worksheet_RSSI->write($k, $n, $_, $format_yellow);
	
	    }

if (($_ <= -95) && ($_ >= -101)){
$worksheet_RSSI->write($k, $n, $_, $format_white);       

}

if (($_ <= -94) && ($_ > -95)){
$worksheet_RSSI->write($k, $n, $_, $format_yellow); 
$Status3 = "True";
}


if ($_ > -94){
$worksheet_RSSI->write($k, $n, $_, $format_red);
$Status3 = "True";

}

          
                           }      
if ($Status3 eq "False"){                           
    $worksheet_RSSI->write($k, 11, 'PASS', $format_white);  
    print "\nPORT 10 RSSI STATUS: PASS\n";                          
} 

if ($Status3 eq "True"){                           
    $worksheet_RSSI->write($k, 11, 'FAIL', $format_white);
    print "\nPORT 10 RSSI STATUS: FAIL\n";                            
}
}

if (@array_fa_pwr_2_2nd){
#$Status3 = "False";
$Status6 = "False";
$k++;

$worksheet_RSSI->write($k, 0, $eNBName, $format_white);
$worksheet_RSSI->write($k, 1, $BoardId2, $format_white);
$worksheet_RSSI->write($k, 2, $PortId2, $format_white);

$n = 2;



foreach $_(@array_fa_pwr_2_2nd){
$n++;
if ($_ < -101){
$worksheet_RSSI->write($k, $n, $_, $format_yellow);
	
	    }

if (($_ <= -95) && ($_ >= -101)){
$worksheet_RSSI->write($k, $n, $_, $format_white);       

}

if (($_ <= -94) && ($_ > -95)){
$worksheet_RSSI->write($k, $n, $_, $format_yellow); 
#$Status3 = "True";
$Status6 = "True";
}


if ($_ > -94){
$worksheet_RSSI->write($k, $n, $_, $format_red);
#$Status3 = "True";
$Status6 = "True";
}

          
                           }      
#if ($Status3 eq "False"){  
if ($Status6 eq "False"){                          
    $worksheet_RSSI->write($k, 11, 'PASS', $format_white);  
    print "\nPORT 10 RSSI STATUS: PASS\n";                          
} 

#if ($Status3 eq "True"){ 
if ($Status6 eq "True"){                           
    $worksheet_RSSI->write($k, 11, 'FAIL', $format_white);
    print "\nPORT 10 RSSI STATUS: FAIL\n";                            
}
}

if (($Status1 eq "True") || ($Status2 eq "True") || ($Status3 eq "True") || ($Status4 eq "True") || ($Status5 eq "True") || ($Status6 eq "True")){
	
      print "\n\nRSSI FAILED, WILL SET THE TILT TO 60 NOW, PLEASE WAIT\n"; 			    
$port1 =~ s/\s+//g;
$port2 =~ s/\s+//g;
$port3 =~ s/\s+//g;

     if ($port1 eq "EQUIP"){	      
     $ssh_lsm->waitfor("]");


     $ssh_lsm->print("CHG-RET-INF:CONNECT_BOARD_ID=0,CONNECT_PORT_ID=6,ALD_ID=0,ANT_ID_SUBUNIT_ID=1,TILT=60;");
     #$ssh_lsm->waitfor('PASSWORD :');
     $ssh_lsm->waitfor('PASSWORD');		 
     $ssh_lsm->print("ROOT");
     #$ssh_lsm->waitfor(";");
     #$ssh_lsm->waitfor(";");
     #$ssh_lsm->waitfor(";");
     #my $Log = $ssh_lsm->waitfor(';');
	 $ssh_lsm->waitfor('RET INFORMATION CHANGED');
	 my $Log = $ssh_lsm->waitfor(';');
	 print $Log;
     print FILE $Log;
     print FILE_M $Log;
     print FILE_RSSI $Log;
	 $ssh_lsm->waitfor('RET INFORMATION UPLOADED');
	 my $Log = $ssh_lsm->waitfor(';');
     print $Log;
     print FILE $Log;
     print FILE_M $Log;
     print FILE_RSSI $Log;
     }	
     if ($port2 eq "EQUIP"){
     $ssh_lsm->waitfor("]");

     $ssh_lsm->print("CHG-RET-INF:CONNECT_BOARD_ID=0,CONNECT_PORT_ID=8,ALD_ID=0,ANT_ID_SUBUNIT_ID=1,TILT=60;");
     #$ssh_lsm->waitfor('PASSWORD :');
     $ssh_lsm->waitfor('PASSWORD');		 
     $ssh_lsm->print("ROOT");
     #$ssh_lsm->waitfor(";");
     #$ssh_lsm->waitfor(";");
     #$ssh_lsm->waitfor(";");
     #my $Log = $ssh_lsm->waitfor(';');
	 $ssh_lsm->waitfor('RET INFORMATION CHANGED');
	 my $Log = $ssh_lsm->waitfor(';');
	 print $Log;
     print FILE $Log;
     print FILE_M $Log;
     print FILE_RSSI $Log;
	 $ssh_lsm->waitfor('RET INFORMATION UPLOADED');
	 my $Log = $ssh_lsm->waitfor(';');
     print $Log;
     print FILE $Log;
     print FILE_M $Log;
     print FILE_RSSI $Log;	    
     
     }     

     if ($port3 eq "EQUIP"){
     $ssh_lsm->waitfor("]");

     $ssh_lsm->print("CHG-RET-INF:CONNECT_BOARD_ID=0,CONNECT_PORT_ID=10,ALD_ID=0,ANT_ID_SUBUNIT_ID=1,TILT=60;");
     #$ssh_lsm->waitfor('PASSWORD :');
     $ssh_lsm->waitfor('PASSWORD');		 
     $ssh_lsm->print("ROOT");
     #$ssh_lsm->waitfor(";");
     #$ssh_lsm->waitfor(";");
     #$ssh_lsm->waitfor(";");
     #my $Log = $ssh_lsm->waitfor(';');
	 $ssh_lsm->waitfor('RET INFORMATION CHANGED');
	 my $Log = $ssh_lsm->waitfor(';');
     print $Log;
     print FILE $Log;
     print FILE_M $Log;
     print FILE_RSSI $Log;	 
	 $ssh_lsm->waitfor('RET INFORMATION UPLOADED');
	 my $Log = $ssh_lsm->waitfor(';');
     print $Log;
     print FILE $Log;
     print FILE_M $Log;
     print FILE_RSSI $Log;     
     
	}  
	
     print "\nWAIT 2 MINS FOR RET MOTOR\n"	;
     sleep 120;
     undef @ret;
     $ssh_lsm->waitfor("]");
     $ssh_lsm->print("RTRV-RET-INF;");
     $ssh_lsm->waitfor(";");
     my $Log = $ssh_lsm->waitfor(';');
     print $Log;
     print FILE $Log;
     print FILE_RSSI $Log;

$worksheet_RSSI->merge_range('A9:E9', "RSSI STATUS With Tilt Set to 60", $format_title_merge);


################### check RSSI again		
if ($port1 eq "EQUIP"){
$ssh_lsm->print("TEST-TXPWR:0,6;");
$ssh_lsm->waitfor('NOTIFY TEST RESULT');
sleep 5;
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;
print FILE_M $Log;
print FILE_RSSI $Log;

@split_each_line_txpwr = split (/\n/,$Log);

foreach $split_each_line_txpwr(@split_each_line_txpwr){


$split_each_line_txpwr =~ s/Connect Board ID/BoardId/g;
$split_each_line_txpwr =~ s/Connect Port ID/PortId/g;
$split_each_line_txpwr =~ s/Tx RF Power/RF Pwr/g;
$split_each_line_txpwr =~ s/Fa0 Rssi/FA0 RSSI/g;


          if ($split_each_line_txpwr =~ m/BoardId\s+\=/) {
                    
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/\s+//g;
			$BoardId0 = $_[1];

							  }
          if ($split_each_line_txpwr =~ m/PortId\s+\=/) {
                    
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/\s+//g;
			$PortId0 = $_[1];

							  }
							  
							  


	  if (($split_each_line_txpwr =~ m/FA0 RSSI/) && ($split_each_line_txpwr =~ m/\(dBm\)/)) {			#get RF PWR value
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/^\s+//g;
			@array_fa_pwr_0_tilt = split(/\s+/, $_[1]);
                                                                                         }
          if (($secondcar eq "true") || ($secondcar4T eq "true")){
		  
			      if ($pkg =~ m/^3/) {  
	  if (($split_each_line_txpwr =~ m/FA1 RSSI/) && ($split_each_line_txpwr =~ m/\(dBm\)/)) {			#get RF PWR value
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/^\s+//g;
			@array_fa_pwr_0_tilt_2nd = split(/\s+/, $_[1]);
                                                                                             }
																							 
									 }														 
																							 
				      if ($pkg =~ m/^4/) { 
if ($div ne "8T8R"){									  
	  if (($split_each_line_txpwr =~ m/FA2 RSSI/) && ($split_each_line_txpwr =~ m/\(dBm\)/)) {			#get RF PWR value
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/^\s+//g;
			@array_fa_pwr_0_tilt_2nd = split(/\s+/, $_[1]);
                                                                                             }
                   }

if ($div ne "4T4R"){									  
	  if (($split_each_line_txpwr =~ m/FA1 RSSI/) && ($split_each_line_txpwr =~ m/\(dBm\)/)) {			#get RF PWR value
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/^\s+//g;
			@array_fa_pwr_0_tilt_2nd = split(/\s+/, $_[1]);
                                                                                             }
                   }				   
																							 
																							 
									 }																									 
																							 
                                                                }



          
                                                      }     


}

if ($port2 eq "EQUIP"){
$ssh_lsm->print("TEST-TXPWR:0,8;");
$ssh_lsm->waitfor('NOTIFY TEST RESULT');
sleep 5;
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;
print FILE_M $Log;
print FILE_RSSI $Log;

@split_each_line_txpwr = split (/\n/,$Log);

foreach $split_each_line_txpwr(@split_each_line_txpwr){


$split_each_line_txpwr =~ s/Connect Board ID/BoardId/g;
$split_each_line_txpwr =~ s/Connect Port ID/PortId/g;
$split_each_line_txpwr =~ s/Tx RF Power/RF Pwr/g;
$split_each_line_txpwr =~ s/Fa0 Rssi/FA0 RSSI/g;


          if ($split_each_line_txpwr =~ m/BoardId\s+\=/) {
                    
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/\s+//g;
			$BoardId1 = $_[1];

							  }
          if ($split_each_line_txpwr =~ m/PortId\s+\=/) {
                    
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/\s+//g;
			$PortId1 = $_[1];

							  }
							  


	  if (($split_each_line_txpwr =~ m/FA0 RSSI/) && ($split_each_line_txpwr =~ m/\(dBm\)/)) {			#get RF PWR value
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/^\s+//g;
			@array_fa_pwr_1_tilt = split(/\s+/, $_[1]);
                                                                                         }

          if (($secondcar eq "true") || ($secondcar4T eq "true")){ 

		  	      if ($pkg =~ m/^3/) {
	  if (($split_each_line_txpwr =~ m/FA1 RSSI/) && ($split_each_line_txpwr =~ m/\(dBm\)/)) {			#get RF PWR value
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/^\s+//g;
			@array_fa_pwr_1_tilt_2nd = split(/\s+/, $_[1]);
			
                                                                                             }
																							 
									}

		  	      if ($pkg =~ m/^4/) {
				  
if ($div ne "8T8R"){								  
	  if (($split_each_line_txpwr =~ m/FA2 RSSI/) && ($split_each_line_txpwr =~ m/\(dBm\)/)) {			#get RF PWR value
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/^\s+//g;
			@array_fa_pwr_1_tilt_2nd = split(/\s+/, $_[1]);
			
                                                                                             }
                   }																							 
																							 
if ($div ne "4T4R"){								  
	  if (($split_each_line_txpwr =~ m/FA1 RSSI/) && ($split_each_line_txpwr =~ m/\(dBm\)/)) {			#get RF PWR value
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/^\s+//g;
			@array_fa_pwr_1_tilt_2nd = split(/\s+/, $_[1]);
			
                                                                                             }
                   }	

																							 
									}											
																							 
																							 
                                                                }


          
                                                      }     

}


if ($port3 eq "EQUIP"){

$ssh_lsm->print("TEST-TXPWR:0,10;");
$ssh_lsm->waitfor('NOTIFY TEST RESULT');
sleep 5;
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;
print FILE_M $Log;
print FILE_RSSI $Log;

@split_each_line_txpwr = split (/\n/,$Log);

foreach $split_each_line_txpwr(@split_each_line_txpwr){


$split_each_line_txpwr =~ s/Connect Board ID/BoardId/g;
$split_each_line_txpwr =~ s/Connect Port ID/PortId/g;
$split_each_line_txpwr =~ s/Tx RF Power/RF Pwr/g;
$split_each_line_txpwr =~ s/Fa0 Rssi/FA0 RSSI/g;


          if ($split_each_line_txpwr =~ m/BoardId\s+\=/) {
                    
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/\s+//g;
			$BoardId2 = $_[1];

							  }
          if ($split_each_line_txpwr =~ m/PortId\s+\=/) {
                    
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/\s+//g;
			$PortId2 = $_[1];

							  }
							  


	  if (($split_each_line_txpwr =~ m/FA0 RSSI/) && ($split_each_line_txpwr =~ m/\(dBm\)/)) {			#get RF PWR value
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/^\s+//g;
			@array_fa_pwr_2_tilt = split(/\s+/, $_[1]);
                                                                                         }

          if (($secondcar eq "true") || ($secondcar4T eq "true")){
		  
			      if ($pkg =~ m/^3/) {  
	  if (($split_each_line_txpwr =~ m/FA1 RSSI/) && ($split_each_line_txpwr =~ m/\(dBm\)/)) {			#get RF PWR value
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/^\s+//g;
			@array_fa_pwr_2_tilt_2nd = split(/\s+/, $_[1]);
                                                                                             }
									}

			      if ($pkg =~ m/^4/) {

if ($div ne "8T8R"){				  
	  if (($split_each_line_txpwr =~ m/FA2 RSSI/) && ($split_each_line_txpwr =~ m/\(dBm\)/)) {			#get RF PWR value
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/^\s+//g;
			@array_fa_pwr_2_tilt_2nd = split(/\s+/, $_[1]);
                                                                                             }
																							 
																							 
					}

if ($div ne "4T4R"){				  
	  if (($split_each_line_txpwr =~ m/FA1 RSSI/) && ($split_each_line_txpwr =~ m/\(dBm\)/)) {			#get RF PWR value
			$split_each_line_txpwr =~ s/^\s+//g;
			@_ = split(/\=/, $split_each_line_txpwr);
			$_[1] =~ s/^\s+//g;
			@array_fa_pwr_2_tilt_2nd = split(/\s+/, $_[1]);
                                                                                             }
																							 
																							 
					}					
																							 
																							 
																							 
									}									
																							 
																							 
                                                                }
																
																


          
                                                      }     

}

################### check RSSI again	
	
$k = 11;

$worksheet_RSSI->write($k, 0, $eNBName, $format_white);
$worksheet_RSSI->write($k, 1, $BoardId0, $format_white);
$worksheet_RSSI->write($k, 2, $PortId0, $format_white);

$n = 2;

if (@array_fa_pwr_0_tilt){
$Status1_tilt = "False";
foreach $_(@array_fa_pwr_0_tilt){
	      
$n++;

if ($_ < -101){
$worksheet_RSSI->write($k, $n, $_, $format_yellow);      
	
	    }

if (($_ <= -95) && ($_ >= -101)){
$worksheet_RSSI->write($k, $n, $_, $format_white); 

}

if (($_ <= -94) && ($_ > -95)){
$worksheet_RSSI->write($k, $n, $_, $format_yellow);
$Status1_tilt = "True";
}


if ($_ > -94){
$worksheet_RSSI->write($k, $n, $_, $format_red);
$Status1_tilt = "True";

}
          
                           }

if ($Status1_tilt eq "False"){                           
    $worksheet_RSSI->write($k, 11, 'CONDITIONAL PASS', $format_white);  
    print "\nPORT 6 RSSI STATUS: PASS\n";                         
} 

if ($Status1_tilt eq "True"){                           
    $worksheet_RSSI->write($k, 11, 'Fail', $format_white);
    print "\nPORT 6 RSSI STATUS: FAIL\n";                            
} 

                              	
}	




##### 2nd carrir

if (@array_fa_pwr_0_tilt_2nd){
$Status1_tilt = "False";

$k++;

$worksheet_RSSI->write($k, 0, $eNBName, $format_white);
$worksheet_RSSI->write($k, 1, $BoardId1, $format_white);
$worksheet_RSSI->write($k, 2, $PortId1, $format_white);

$n = 2;

foreach $_(@array_fa_pwr_0_tilt_2nd){
	      
$n++;

if ($_ < -101){
$worksheet_RSSI->write($k, $n, $_, $format_yellow);      
	
	    }

if (($_ <= -95) && ($_ >= -101)){
$worksheet_RSSI->write($k, $n, $_, $format_white); 

}

if (($_ <= -94) && ($_ > -95)){
$worksheet_RSSI->write($k, $n, $_, $format_yellow);
$Status1_tilt = "True";
}


if ($_ > -94){
$worksheet_RSSI->write($k, $n, $_, $format_red);
$Status1_tilt = "True";

}
          
                           }

if ($Status1_tilt eq "False"){                           
    $worksheet_RSSI->write($k, 11, 'CONDITIONAL PASS', $format_white);  
    print "\nPORT 6 RSSI STATUS: PASS\n";                         
} 

if ($Status1_tilt eq "True"){                           
    $worksheet_RSSI->write($k, 11, 'Fail', $format_white);
    print "\nPORT 6 RSSI STATUS: FAIL\n";                            
} 

                              	
}

	
if (@array_fa_pwr_1_tilt){
$Status2_tilt = "False";	
$k++;

$worksheet_RSSI->write($k, 0, $eNBName, $format_white);
$worksheet_RSSI->write($k, 1, $BoardId1, $format_white);
$worksheet_RSSI->write($k, 2, $PortId1, $format_white);

$n = 2;



foreach $_(@array_fa_pwr_1_tilt){
	
$n++;
if ($_ < -101){
$worksheet_RSSI->write($k, $n, $_, $format_yellow);       
	
	    }

if (($_ <= -95) && ($_ >= -101)){
$worksheet_RSSI->write($k, $n, $_, $format_white);      

}

if (($_ <= -94) && ($_ > -95)){
$worksheet_RSSI->write($k, $n, $_, $format_yellow);      
$Status2_tilt = "True";
}


if ($_ > -94){
$worksheet_RSSI->write($k, $n, $_, $format_red);
$Status2_tilt = "True";

}

          
                           }     	

if ($Status2_tilt eq "False"){                           
    $worksheet_RSSI->write($k, 11, 'CONDITIONAL PASS', $format_white);  
    print "\nPORT 8 RSSI STATUS: PASS\n";                         
} 

if ($Status2_tilt eq "True"){                           
    $worksheet_RSSI->write($k, 11, 'FAIL', $format_white); 
    print "\nPORT 8 RSSI STATUS: FAIL\n";                          
}
 	
}		
	

if (@array_fa_pwr_2_tilt){
$Status3_tilt = "False";
$k++;

$worksheet_RSSI->write($k, 0, $eNBName, $format_white);
$worksheet_RSSI->write($k, 1, $BoardId2, $format_white);
$worksheet_RSSI->write($k, 2, $PortId2, $format_white);

$n = 2;



foreach $_(@array_fa_pwr_2_tilt){
$n++;
if ($_ < -101){
$worksheet_RSSI->write($k, $n, $_, $format_yellow);
	
	    }

if (($_ <= -95) && ($_ >= -101)){
$worksheet_RSSI->write($k, $n, $_, $format_white);       

}

if (($_ <= -94) && ($_ > -95)){
$worksheet_RSSI->write($k, $n, $_, $format_yellow); 
$Status3_tilt = "True";
}


if ($_ > -94){
$worksheet_RSSI->write($k, $n, $_, $format_red);
$Status3_tilt = "True";

}

          
                           }      
if ($Status3_tilt eq "False"){                           
    $worksheet_RSSI->write($k, 11, 'CONDITIONAL PASS', $format_white);  
    print "\nPORT 10 RSSI STATUS: PASS\n";                          
} 

if ($Status3_tilt eq "True"){                           
    $worksheet_RSSI->write($k, 11, 'FAIL', $format_white);
    print "\nPORT 10 RSSI STATUS: FAIL\n";                            
}
}
	
if (($Status1_tilt eq "True") || ($Status2_tilt eq "True") || ($Status3_tilt eq "True")){
	&analyze_rssi;
	
	}	
if (($Status1_tilt eq "False") && ($Status2_tilt eq "False") && ($Status3_tilt eq "False")){
	   $worksheet_RSSI->write(18, 0, 'SITE STATUS', $format_white_bold);
	   $worksheet_RSSI->write(18, 1, 'PASS', $format_white); 
	
	}	
	    
    }
    else {
	   $worksheet_RSSI->write(18, 0, 'SITE STATUS', $format_white_bold);
	   $worksheet_RSSI->write(18, 1, 'PASS', $format_white); 
	  }  
autofit_columns($worksheet_RSSI);	
}



sub analyze_rssi {

my ($counter);
my ($Site_Status);


$counter = 0;
	
if (@array_fa_pwr_0){
   $counter++;	
	}	
if (@array_fa_pwr_1){
   $counter++;	
	}	
if (@array_fa_pwr_2){
   $counter++;	
	}	
##############################################################################################################
if ($counter eq "3"){
	
	if (($Status1_tilt eq "False") && ($Status2_tilt eq "False") && ($Status3_tilt eq "False")){
		$Site_Status = "Significant Improvement (Conditional Pass)";
		}
	$worksheet_RSSI->write(18, 0, 'SITE STATUS', $format_white_bold);
	$worksheet_RSSI->write(18, 1, $Site_Status, $format_white);			    	
	}
if ($counter eq "2"){
	
	if (($Status1_tilt eq "False") && ($Status2_tilt eq "False")){
		$Site_Status = "Significant Improvement (Conditional Pass)";
		}
	$worksheet_RSSI->write(18, 0, 'SITE STATUS', $format_white_bold);
        $worksheet_RSSI->write(18, 1, $Site_Status, $format_white);			    	
	}
if ($counter eq "1"){
	
	if ($Status1_tilt eq "False"){
		$Site_Status = "Significant Improvement (Conditional Pass)";
		}
		
	$worksheet_RSSI->write(18, 0, 'SITE STATUS', $format_white_bold);
	$worksheet_RSSI->write(18, 1, $Site_Status, $format_white);			    	
	}	
	
##############################################################################################################	
	



if ($Status1_tilt eq "True"){
	
my ($marginfound,$failfound);
$marginfound = "false";
$failfound = "false";	
my (@port0_result);

for (my $x=0; $x<=7;$x++){
	my $subtract = $array_fa_pwr_0_tilt[$x] - $array_fa_pwr_0[$x];
	my ($path);
	
        if (($array_fa_pwr_0_tilt[7] <= -90) && ($subtract >= 10 )){
	      $path = "SIGNIFICANT";
	    }	   	
        if (($array_fa_pwr_0_tilt[7] >= -90) || ($subtract < 10 )){
	    if ($subtract >= 3)	{
	      $path = "MARGINAL";
	      $marginfound = "true";
                                }
            if ($subtract <= 3)	{
	      $path = "FAIL";
	      $failfound = "true";
                                }  
                                
                                                  
                                
                                
	    }		
	push (@port0_result,$path);
	
	}
	
	
	if (($port0_result[0] eq "SIGNIFICANT") && ($port0_result[1] eq "SIGNIFICANT") && ($port0_result[2] eq "SIGNIFICANT") && ($port0_result[3] eq "SIGNIFICANT") && ($port0_result[4] eq "SIGNIFICANT") &&($port0_result[5] eq "SIGNIFICANT") && ($port0_result[6] eq "SIGNIFICANT") && ($port0_result[7] eq "SIGNIFICANT")){
		$Status1_tilt = "SIGNIFICANT";
		}
	if ($failfound eq "true"){
		$Status1_tilt = "FAILTILT";			  
		}
	if (($failfound ne "true") && ($marginfound eq "true")){
		$Status1_tilt = "MARGINTILT";			  
		}		
	
}	




if ($Status2_tilt eq "True"){
	
my ($marginfound,$failfound);
$marginfound = "false";
$failfound = "false";	
my (@port1_result);

for (my $x=0; $x<=7;$x++){
	my $subtract = $array_fa_pwr_1_tilt[$x] - $array_fa_pwr_1[$x];
	my ($path);
	
        if (($array_fa_pwr_1_tilt[7] <= -90) && ($subtract >= 10 )){
	      $path = "SIGNIFICANT";
	    }	   	
        if (($array_fa_pwr_1_tilt[7] >= -90) || ($subtract < 10 )){
	    if ($subtract >= 3)	{
	      $path = "MARGINAL";
	      $marginfound = "true";
                                }
            if ($subtract <= 3)	{
	      $path = "FAIL";
	      $failfound = "true";
                                }  
                                
                                                  
                                
                                
	    }		
	push (@port1_result,$path);
	
	}
	
	if (($port1_result[0] eq "SIGNIFICANT") && ($port1_result[1] eq "SIGNIFICANT") && ($port1_result[2] eq "SIGNIFICANT") && ($port1_result[3] eq "SIGNIFICANT") && ($port1_result[4] eq "SIGNIFICANT") &&($port1_result[5] eq "SIGNIFICANT") && ($port1_result[6] eq "SIGNIFICANT") && ($port1_result[7] eq "SIGNIFICANT")){
		$Status2_tilt = "SIGNIFICANT";
		}
	if ($failfound eq "true"){
		$Status2_tilt = "FAILTILT";			  
		}
	if (($failfound ne "true") && ($marginfound eq "true")){
		$Status2_tilt = "MARGINTILT";			  
		}		
	
}	

if ($Status3_tilt eq "True"){
	
my ($marginfound,$failfound);
$marginfound = "false";
$failfound = "false";	
my (@port2_result);

for (my $x=0; $x<=7;$x++){
	my $subtract = $array_fa_pwr_2_tilt[$x] - $array_fa_pwr_2[$x];
	my ($path);
	
        if (($array_fa_pwr_2_tilt[7] <= -90) && ($subtract >= 10 )){
	      $path = "SIGNIFICANT";
	    }	   	
        if (($array_fa_pwr_2_tilt[7] >= -90) || ($subtract < 10 )){
	    if ($subtract >= 3)	{
	      $path = "MARGINAL";
	      $marginfound = "true";
                                }
            if ($subtract <= 3)	{
	      $path = "FAIL";
	      $failfound = "true";
                                }  
                                
                                                  
                                
                                
	    }		
	push (@port2_result,$path);
	
	}
	
	
	if (($port2_result[0] eq "SIGNIFICANT") && ($port2_result[1] eq "SIGNIFICANT") && ($port2_result[2] eq "SIGNIFICANT") && ($port2_result[3] eq "SIGNIFICANT") && ($port2_result[4] eq "SIGNIFICANT") &&($port2_result[5] eq "SIGNIFICANT") && ($port2_result[6] eq "SIGNIFICANT") && ($port2_result[7] eq "SIGNIFICANT")){
		$Status3_tilt = "SIGNIFICANT";
		}
	if ($failfound eq "true"){
		$Status3_tilt = "FAILTILT";			  
		}
	if (($failfound ne "true") && ($marginfound eq "true")){
		$Status3_tilt = "MARGINTILT";			  
		}		
	
}

if ($counter eq "3"){

	if ((($Status1_tilt eq "False") || ($Status1_tilt eq "SIGNIFICANT")) && (($Status2_tilt eq "False") || ($Status2_tilt eq "SIGNIFICANT")) && (($Status3_tilt eq "False") || ($Status3_tilt eq "SIGNIFICANT"))){
		
		$worksheet_RSSI->write(18, 0, 'SITE STATUS', $format_white_bold);
	        $worksheet_RSSI->write(18, 1, 'Significant Improvement (Conditional Pass)', $format_white);
		}
	
	if (($Status1_tilt eq "FAILTILT") || ($Status2_tilt eq "FAILTILT") || ($Status3_tilt eq "FAILTILT")){
		
		$worksheet_RSSI->write(18, 0, 'SITE STATUS', $format_white_bold);
	        $worksheet_RSSI->write(18, 1, 'FAIL', $format_white);
	        &set_tilt_back;
		}
	if ((($Status1_tilt eq "False") || ($Status1_tilt eq "MARGINTILT")) || (($Status2_tilt eq "False") || ($Status2_tilt eq "MARGINTILT")) || (($Status3_tilt eq "False") || ($Status3_tilt eq "MARGINTILT"))){
		$Site_Status = "Marginal Improvement (Fail, interference)";
		&set_tilt_back;
		$worksheet_RSSI->write(18, 0, 'SITE STATUS', $format_white_bold);
	        $worksheet_RSSI->write(18, 1, 'Marginal Improvement (Fail, interference)', $format_white);
		}			    	
	}

if ($counter eq "2"){

	if ((($Status1_tilt eq "False") || ($Status1_tilt eq "SIGNIFICANT")) && (($Status2_tilt eq "False") || ($Status2_tilt eq "SIGNIFICANT"))){
		
		$worksheet_RSSI->write(18, 0, 'SITE STATUS', $format_white_bold);
	        $worksheet_RSSI->write(18, 1, 'Significant Improvement (Conditional Pass)', $format_white);
		}

	if (($Status1_tilt eq "FAILTILT") || ($Status2_tilt eq "FAILTILT")){
		
		$worksheet_RSSI->write(18, 0, 'SITE STATUS', $format_white_bold);
	        $worksheet_RSSI->write(18, 1, 'FAIL', $format_white);
	        &set_tilt_back;
		}
	if ((($Status1_tilt eq "False") || ($Status1_tilt eq "MARGINTILT")) || (($Status2_tilt eq "False") || ($Status2_tilt eq "MARGINTILT"))){
		$Site_Status = "Marginal Improvement (Fail, interference)";
		&set_tilt_back;
		$worksheet_RSSI->write(18, 0, 'SITE STATUS', $format_white_bold);
	        $worksheet_RSSI->write(18, 1, 'Marginal Improvement (Fail, interference)', $format_white);
		}			    	
	}

if ($counter eq "1"){

	if (($Status1_tilt eq "False") || ($Status1_tilt eq "SIGNIFICANT")){
		
		$worksheet_RSSI->write(18, 0, 'SITE STATUS', $format_white_bold);
	        $worksheet_RSSI->write(18, 1, 'Significant Improvement (Conditional Pass)', $format_white);
		}
	
	if ($Status1_tilt eq "FAILTILT"){
		
		$worksheet_RSSI->write(18, 0, 'SITE STATUS', $format_white_bold);
	        $worksheet_RSSI->write(18, 1, 'FAIL', $format_white);
	        &set_tilt_back;
		}
	if (($Status1_tilt eq "False") || ($Status1_tilt eq "MARGINTILT")){
		$Site_Status = "Marginal Improvement (Fail, interference)";
		&set_tilt_back;
		$worksheet_RSSI->write(18, 0, 'SITE STATUS', $format_white_bold);
	        $worksheet_RSSI->write(18, 1, 'Marginal Improvement (Fail, interference)', $format_white);
		}			    	
	}

autofit_columns($worksheet_RSSI);	
}


sub set_tilt_back{
	
     if ($port1 eq "EQUIP"){	      
     $ssh_lsm->waitfor("]");

     $ssh_lsm->print("CHG-RET-INF:CONNECT_BOARD_ID=0,CONNECT_PORT_ID=6,ALD_ID=0,ANT_ID_SUBUNIT_ID=1,TILT=$alphatilt;");
     #$ssh_lsm->waitfor('PASSWORD :');
     $ssh_lsm->waitfor('PASSWORD');		 
     $ssh_lsm->print("ROOT");
     #$ssh_lsm->waitfor(";");
     #$ssh_lsm->waitfor(";");
     #$ssh_lsm->waitfor(";");
     #my $Log = $ssh_lsm->waitfor(';');
	 $ssh_lsm->waitfor('RET INFORMATION CHANGED');
	 my $Log = $ssh_lsm->waitfor(';');
     print $Log;
     print FILE $Log;
     print FILE_M $Log;
     print FILE_RSSI $Log;	 
	 $ssh_lsm->waitfor('RET INFORMATION UPLOADED');
	 my $Log = $ssh_lsm->waitfor(';');
     print $Log;
     print FILE $Log;
     print FILE_M $Log;
     print FILE_RSSI $Log;

     }	
     if ($port2 eq "EQUIP"){
     $ssh_lsm->waitfor("]");
     
     $ssh_lsm->print("CHG-RET-INF:CONNECT_BOARD_ID=0,CONNECT_PORT_ID=8,ALD_ID=0,ANT_ID_SUBUNIT_ID=1,TILT=$betatilt;");
     #$ssh_lsm->waitfor('PASSWORD :');
	 $ssh_lsm->waitfor('PASSWORD');	
     $ssh_lsm->print("ROOT");
     #$ssh_lsm->waitfor(";");
     #$ssh_lsm->waitfor(";");
     #$ssh_lsm->waitfor(";");
     #my $Log = $ssh_lsm->waitfor(';');
	 $ssh_lsm->waitfor('RET INFORMATION CHANGED');
	 my $Log = $ssh_lsm->waitfor(';');
     print $Log;
     print FILE $Log;
     print FILE_M $Log;
     print FILE_RSSI $Log;	 
	 $ssh_lsm->waitfor('RET INFORMATION UPLOADED');
	 my $Log = $ssh_lsm->waitfor(';');
     print $Log;
     print FILE $Log;
     print FILE_M $Log;
     print FILE_RSSI $Log;

     }
     if ($port3 eq "EQUIP"){
     $ssh_lsm->waitfor("]");
     
     
     $ssh_lsm->print("CHG-RET-INF:CONNECT_BOARD_ID=0,CONNECT_PORT_ID=10,ALD_ID=0,ANT_ID_SUBUNIT_ID=1,TILT=$gammatilt;");
     #$ssh_lsm->waitfor('PASSWORD :');
     $ssh_lsm->waitfor('PASSWORD');	 
     $ssh_lsm->print("ROOT");
     #$ssh_lsm->waitfor(";");
     #$ssh_lsm->waitfor(";");
     #$ssh_lsm->waitfor(";");
     #my $Log = $ssh_lsm->waitfor(';');
	 $ssh_lsm->waitfor('RET INFORMATION CHANGED');
	 my $Log = $ssh_lsm->waitfor(';');
	 print $Log;
     print FILE $Log;
     print FILE_M $Log;
     print FILE_RSSI $Log;
	 $ssh_lsm->waitfor('RET INFORMATION UPLOADED');
	 my $Log = $ssh_lsm->waitfor(';');
     print $Log;
     print FILE $Log;
     print FILE_M $Log;
     print FILE_RSSI $Log;        
    	
	
	}  	
	
}






    sub autofit_columns {
    
        my $worksheet = shift;
        my $col       = 0;
    
        for my $width (@{$worksheet->{__col_widths}}) {
    
            $worksheet->set_column($col, $col, $width) if $width;
            $col++;
        }
    }


    sub store_string_widths {
    
        my $worksheet = shift;
        my $col       = $_[1];
        my $token     = $_[2];
    
        # Ignore some tokens that we aren't interested in.
        return if not defined $token;       # Ignore undefs.
        return if $token eq '';             # Ignore blank cells.
        return if ref $token eq 'ARRAY';    # Ignore array refs.
        return if $token =~ /^=/;           # Ignore formula
    
        # Ignore numbers
        return if $token =~ /^([+-]?)(?=\d|\.\d)\d*(\.\d*)?([Ee]([+-]?\d+))?$/;
    
        # Ignore various internal and external hyperlinks. In a real scenario
        # you may wish to track the length of the optional strings used with
        # urls.
        return if $token =~ m{^[fh]tt?ps?://};
        return if $token =~ m{^mailto:};
        return if $token =~ m{^(?:in|ex)ternal:};
    
    
        # We store the string width as data in the Worksheet object. We use
        # a double underscore key name to avoid conflicts with future names.
        #
        my $old_width    = $worksheet->{__col_widths}->[$col];
        my $string_width = string_width($token);
    
        if (not defined $old_width or $string_width > $old_width) {
            # You may wish to set a minimum column width as follows.
            #return undef if $string_width < 10;
    
            $worksheet->{__col_widths}->[$col] = $string_width;
        }
    
    
        # Return control to write();
        return undef;
    }
    
    
    ###############################################################################
    #
    # Very simple conversion between string length and string width for Arial 10.
    # See below for a more sophisticated method.
    #
    sub string_width {
    
        return 1 * length $_[0];
    }	
    
    
}


sub plmn{                         


# if ($testvalidate eq "true"){

unless(-d "C:\\3G_4G_TOOL_Scripts\\2.5\\ATP_2.5\\DUMMY_PLMN\\"){
	`mkdir C:\\3G_4G_TOOL_Scripts\\2.5\\ATP_2.5\\DUMMY_PLMN\\`;
	
	}

my ($port1pl,$port2pl,$port3pl);
open (FILE, ">C:\\3G_4G_TOOL_Scripts\\2.5\\ATP_2.5\\DUMMY_PLMN\\$cascade\_DUMMY_PLMN_$now.txt");


my $ssh_lsm = new Control::CLI(Use => 'SSH',
                        Prompt => ']',
			Errmode=> 'return',
                        Timeout=> '240');

my $connect = $ssh_lsm->connect(Host => $IP,
          Username => $user,
          Password => $pass,
        PrivateKey => '.ssh/id_dsa');

if ($connect) {		#start if connected

print "connectn\n\n\n\n";

$ssh_lsm->read(Blocking => 1);



$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName RTRV-PKG-VER;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;

my (@split_each_line_vlan,$split_each_line_vlan);
@split_each_line_vlan = split (/\n/,$Log);

foreach $split_each_line_vlan (@split_each_line_vlan){
          
          
          if ($split_each_line_vlan =~ m/^\s+\d+/){
                @_ = split (/\s+/,$split_each_line_vlan);
                
                
                    
                    my $STATUS = $_[4];
                    my $PKG_VER  = $_[2];
		    if ($STATUS eq "ACTIVE"){
		            $pkg  = $PKG_VER;

                    
                                            }                 
          
                                                   
                                                   }	
	       }
	       

$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName RTRV-CELL-CONF;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;

@split_each_line_cell = split (/\n/,$Log);
foreach $split_each_line_cell(@split_each_line_cell){
	
	$split_each_line_cell =~ s/^\s+//g;
	if ($split_each_line_cell =~ m/^0 /) {		
	      @_ = split(/\s+/, $split_each_line_cell);
	      $port1pl = $_[1];	      
		       
					     }
	if ($split_each_line_cell =~ m/^1 /) {		
	      @_ = split(/\s+/, $split_each_line_cell);
	      $port2pl = $_[1];	      
		       
					     }	
	if ($split_each_line_cell =~ m/^2 /) {		
	      @_ = split(/\s+/, $split_each_line_cell);
	      $port3pl = $_[1];	      
		       
					     }

						     }


$ssh_lsm->print("cd .ssh");
$ssh_lsm->print("rm known_hosts");
$ssh_lsm->print("cd ..");

print ("\n\n Connecting to DU \n\n");
					     
$ssh_lsm->cmd("ssh lteuser\@$eNBIP");
sleep 5;
$ssh_lsm->print('yes');
sleep 10;
my $Log = $ssh_lsm->waitfor('password:');
print "$Log\n";

$ssh_lsm->print("samsunglte");
$ssh_lsm->waitfor('LMA3');


$ssh_lsm->print("su -");
$ssh_lsm->waitfor('Password:');


$ssh_lsm->print("123qwe");
my $Log = $ssh_lsm->waitfor('LMA3');



if ($Log =~ m/failure/){

$ssh_lsm->print("su -");
$ssh_lsm->waitfor('Password:');


my $Log = $ssh_lsm->print("S\@msung1te");
#$ssh_lsm->waitfor('@LMA3');	#removed for 4.0
$ssh_lsm->waitfor('LMA3');

}


$ssh_lsm->print("cd /pkg");
$ssh_lsm->waitfor('/pkg');

$ssh_lsm->print("cd $pkg/ENB/r-01/bin");
$ssh_lsm->waitfor('/ENB/r-01/bin');


$ssh_lsm->print("pld.otm input 0x00220140[0].mcc=777");
$ssh_lsm->waitfor("/ENB/r-01/bin");
my $Log = $ssh_lsm->waitfor("/ENB/r-01/bin");
$ssh_lsm->waitfor("#");
print $Log; 


$ssh_lsm->print("pld.otm input 0x00220140[0].mnc=888");
$ssh_lsm->waitfor('/ENB/r-01/bin');
my $Log = $ssh_lsm->waitfor('/ENB/r-01/bin');
print $Log; 

$ssh_lsm->print("exit");
$ssh_lsm->waitfor('LMA3');

$ssh_lsm->print("exit");
$ssh_lsm->waitfor('] ');

$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-ENBPLMN-INFO:1,310,120,0;");
$ssh_lsm->waitfor("]");
$ssh_lsm->waitfor("]");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;

if ($port1pl eq "EQUIP"){
$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELLPLMN-INFO:0,0,use,reserved;");
$ssh_lsm->waitfor("]");
$ssh_lsm->waitfor("]");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;
$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELLPLMN-INFO:0,1,use,reserved;");
$ssh_lsm->waitfor("]");
$ssh_lsm->waitfor("]");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;


}

if ($port2pl eq "EQUIP"){
$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELLPLMN-INFO:1,0,use,reserved;");
$ssh_lsm->waitfor("]");
$ssh_lsm->waitfor("]");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;
$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELLPLMN-INFO:1,1,use,reserved;");
$ssh_lsm->waitfor("]");
$ssh_lsm->waitfor("]");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;


}


if ($port3pl eq "EQUIP"){
$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELLPLMN-INFO:2,0,use,reserved;");
$ssh_lsm->waitfor("]");
$ssh_lsm->waitfor("]");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;
$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELLPLMN-INFO:2,1,use,reserved;");
$ssh_lsm->waitfor("]");
$ssh_lsm->waitfor("]");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;


}



$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName RTRV-CELLPLMN-INFO");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;



$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName RTRV-ENBPLMN-INFO");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;
               
               
               
##### PKG1
# $ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName RTRV-CELL-CONF");
# $ssh_lsm->waitfor("]");
# $ssh_lsm->waitfor("]");
# my $Log = $ssh_lsm->waitfor(';');
# print $Log;
# print FILE $Log;

# @split_each_line_cell = split (/\n/,$Log);
# foreach $split_each_line_cell(@split_each_line_cell){
	
	# $split_each_line_cell =~ s/^\s+//g;
	# if ($split_each_line_cell =~ m/^0 /) {		
	      # @_ = split(/\s+/, $split_each_line_cell);
	      # $port1pl = $_[1];	      
		       
					     # }
	# if ($split_each_line_cell =~ m/^1 /) {		
	      # @_ = split(/\s+/, $split_each_line_cell);
	      # $port2pl = $_[1];	      
		       
					     # }	
	# if ($split_each_line_cell =~ m/^2 /) {		
	      # @_ = split(/\s+/, $split_each_line_cell);
	      # $port3pl = $_[1];	      
		       
					     # }

						     # }	


# $ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName RTRV-CELL-INFO");
# $ssh_lsm->waitfor("]");
# $ssh_lsm->waitfor("]");
# my $Log = $ssh_lsm->waitfor(';');
# print $Log;
# print FILE $Log;


# if ($port1pl eq "EQUIP"){
	
# # $ssh_lsm->waitfor("]");
# $ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-INFO:0,large,SAMSUNG_LTE,777,888,reserved,310,120,reserved");
# $ssh_lsm->waitfor("]");
# $ssh_lsm->waitfor("]");
# my $Log = $ssh_lsm->waitfor(';');
# print $Log;
# print FILE $Log;	
	
	
	# }

# if ($port2pl eq "EQUIP"){
	
# # $ssh_lsm->waitfor("]");
# $ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-INFO:1,large,SAMSUNG_LTE,777,888,reserved,310,120,reserved");
# $ssh_lsm->waitfor("]");
# $ssh_lsm->waitfor("]");
# my $Log = $ssh_lsm->waitfor(';');
# print $Log;
# print FILE $Log;	
	
	
	# }
	
# if ($port3pl eq "EQUIP"){
	
# # $ssh_lsm->waitfor("]");
# $ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-INFO:2,large,SAMSUNG_LTE,777,888,reserved,310,120,reserved");
# $ssh_lsm->waitfor("]");
# $ssh_lsm->waitfor("]");
# my $Log = $ssh_lsm->waitfor(';');
# print $Log;
# print FILE $Log;	
	
	
	# }	

# # $ssh_lsm->waitfor("]");
# $ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName RTRV-CELL-INFO");
# $ssh_lsm->waitfor("]");
# $ssh_lsm->waitfor("]");
# my $Log = $ssh_lsm->waitfor(';');
# print $Log;
# print FILE $Log;

# $ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName RTRV-NBR-EUTRAN");
# $ssh_lsm->waitfor("]");
# $ssh_lsm->waitfor("]");
# my $Log = $ssh_lsm->waitfor(';');
# print $Log;
# print FILE $Log;

# my (@split_each_line,$split_each_line);
# @split_each_line = split (/\n/,$Log);


# foreach $split_each_line (@split_each_line){
          
          # if ($split_each_line =~ m/^\s+\d+/){
			
			# @_ = split (/\s+/,$split_each_line);
			        
			        # my $cellnum = $_[1];
			        # my $relation  = $_[2];
                                # my $ENB_ID_nbr = $_[4];
                                
			        # if ($ENB_ID_nbr eq $enb_id){
					# $ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-NBR-EUTRAN:CELL_NUM=$cellnum,RELATION_IDX=$relation,ENB_MCC=310,ENB_MNC=120,MCC0=310,MNC0=120,MCC1=FFF,MNC1=FFF");
					# $ssh_lsm->waitfor("]");
					# $ssh_lsm->waitfor("]");
					# my $Log = $ssh_lsm->waitfor(';');
					# print $Log;
					# print FILE $Log;
					
					# }
					  
             

			                       # } 				                                          
					  # }


# $ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName RTRV-NBR-EUTRAN");
# $ssh_lsm->waitfor("]");
# $ssh_lsm->waitfor("]");
# my $Log = $ssh_lsm->waitfor(';');
# print $Log;
# print FILE $Log;


}

close FILE;
} 












sub retune{                         


# if ($testvalidate eq "true"){

unless(-d "C:\\3G_4G_TOOL_Scripts\\2.5\\RETUNE\\LOG\\"){
	`mkdir C:\\3G_4G_TOOL_Scripts\\2.5\\RETUNE\\LOG\\`;
	
	}

open (FILE, ">C:\\3G_4G_TOOL_Scripts\\2.5\\RETUNE\\LOG\\\\$cascade\_TDD_RETUNE_$now.txt");


my $ssh_lsm = new Control::CLI(Use => 'SSH',
                        Prompt => ']',
			Errmode=> 'return',
                        Timeout=> '240');

my $connect = $ssh_lsm->connect(Host => $IP,
          Username => $user,
          Password => $pass,
        PrivateKey => '.ssh/id_dsa');

if ($connect) {		#start if connected

print "Connected\n\n\n";
$ssh_lsm->read(Blocking => 1);



$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName RTRV-CELL-CONF;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;

$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName RTRV-CELL-IDLE;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;

$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName RTRV-EUTRA-FA;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;


$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName RTRV-RRH-CONF;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;


$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-CONF:0,locked;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;


$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-CONF:1,locked;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;


$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-CONF:2,locked;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;

$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-CONF:2,locked;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;

$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-IDLE:CELL_NUM=0,EARFCN_DL=$testfreq,EARFCN_UL=$testfreq;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;


$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-IDLE:CELL_NUM=1,EARFCN_DL=$testfreq,EARFCN_UL=$testfreq;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;
               
               
$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-IDLE:CELL_NUM=2,EARFCN_DL=$testfreq,EARFCN_UL=$testfreq;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;



$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-FA:CELL_NUM=0,FA_INDEX=0,EARFCN_UL=$testfreq,EARFCN_DL=$testfreq;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;


$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-FA:CELL_NUM=1,FA_INDEX=0,EARFCN_UL=$testfreq,EARFCN_DL=$testfreq;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;
               
               
$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-FA:CELL_NUM=2,FA_INDEX=0,EARFCN_UL=$testfreq,EARFCN_DL=$testfreq;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;



$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-RRH-CONF:CONNECT_BOARD_ID=0,CONNECT_PORT_ID=6,START_EARFCN1=$teststart;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;

$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-RRH-CONF:CONNECT_BOARD_ID=0,CONNECT_PORT_ID=8,START_EARFCN1=$teststart;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;

$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-RRH-CONF:CONNECT_BOARD_ID=0,CONNECT_PORT_ID=10,START_EARFCN1=$teststart;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;

$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName RTRV-CELL-CONF;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;

$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName RTRV-CELL-IDLE;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;

$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName RTRV-EUTRA-FA;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;


$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName RTRV-RRH-CONF;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;


$ssh_lsm->print('exit');

$ssh_lsm->disconnect;


}

close FILE;
}   	