package main;
#line 1 "script/eCSFB_AUDIT_FDD.pl"
#!/usr/bin/perl
use POSIX;
use Net::SSH2;

use Control::CLI;
use Data::Dumper;

my (@input,$input);
@input = split(/,/,$ARGV[0]);

my ($Cascade,$BTS_ID,$BSM,$IP,$user,$pass,$LSM_IP,$LSM_User,$LSM_Pass,$secondBTS,$FA_INDEX_BSM,$reg_zone);
my (@FA_INDEX_BSM);
my ($FA_ID,$OTA_SID,$OTA_NID,$BSC_SID,$BSC_NID,$Alpha_PN,$Beta_PN,$Gamma_PN,$STATUS800,$OTA_SID800,$OTA_NID800);
my (@bsm_data,$bsm_data);

my($now);

$now = strftime("%m%d%Y_%H_%M_%S", localtime);

my (@inputMulti,$inputMulti);
@inputMulti = split(/~/,$ARGV[0]);

foreach $inputMulti (@inputMulti){


my (@input);
@input = split(/,/,$inputMulti);  

$Cascade = $input[0];
$BTS_ID = $input[1];
$IP = $input[2];
$eNB_Name = $input[3];
$LSM_IP = $input[4];
$LSM_User = $input[5];
$LSM_Pass = $input[6];
$ltm = $input[7];


$user = "cdmaone";
$pass = "cdmaone";


# $LSM_User = "nacread01";
# $LSM_Pass = "hmbrgr.246";

# if ($IP ne "111.15.0.198"){
# $pass = "cdmaone";	
	
# }	

# if ($IP eq "111.15.0.198"){
# $pass = "cdmaone1";	
	
# }

my $validate = "true"; #`C:\\3G_4G_TOOL_Scripts\\bin\\validate.exe`;
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
		
 open (FILE, ">C:\\3G_4G_TOOL_Scripts\\ECSFB_FDD\\BSM_LOG\\$Cascade\_$BTS_ID\_eCSFB_BSM_LOGS_$now.txt");			
 
my $ssh = new Control::CLI(Use => 'SSH',
                        Prompt => ']',
			Errmode=> 'return',
                        Timeout=> '240');

my $connect = $ssh->connect(Host => $IP,
          Username => $user,
          Password => $pass,
        PrivateKey => '.ssh/id_dsa');

if ($connect) {		

$ssh->print("cd");
$ssh->waitfor('/home1/cdmaone]');


# if ($IP eq "111.27.0.166"){

# $ssh->print("cmdx 1 RTRV-BTS_SUBSYSTEM-CONF:BTS=$BTS_ID;");
# }
# if ($IP ne "111.27.0.166"){
$ssh->print("cmdx 1 RTRV-BTS_SUBSYSTEM-CONF:BTS=$BTS_ID~$BTS_ID,EXPORT_CSV=NO;");	
# }

$ssh->waitfor(';');
my $LOG = $ssh->waitfor('COMPLETED');	
print $LOG;
print FILE $LOG;


my (@split_each_line,$split_each_line);

@split_each_line = split (/\n/,$LOG);


foreach $split_each_line (@split_each_line){
	
	
	if ($split_each_line =~ m/\s+[FA DATA]/) {
		
		@_ = split (/\n/,$split_each_line);
		my (@fa, $fa);
		foreach $_ (@_){

			if ($_ =~ m/^\s+\d+/){
				
			    @fa	= split (/\s+/,$_);
			    if (($fa[5] eq "SERVICE_1X") && ($fa[1] ne "2")){

			    	push (@FA_INDEX_BSM,$fa[1]);

						      }	
				
					     }
				
			
				}


		
					       }



					   }








$FA_INDEX_BSM = $FA_INDEX_BSM[0];

$ssh->print("cmdx 1 RTRV-BTS_FA-CONF:BTS=$BTS_ID~$BTS_ID,FA_INDEX=$FA_INDEX_BSM~$FA_INDEX_BSM;");



# $ssh->print("cmdx 1 RTRV-BTS_FA-CONF:BTS=$BTS_ID~$BTS_ID,FA_INDEX=0~0;");
$ssh->waitfor(';');
my $LOG = $ssh->waitfor('COMPLETED');	
print $LOG;
print FILE $LOG;

my (@split_each_line,$split_each_line);

@split_each_line = split (/\n/,$LOG);


foreach $split_each_line (@split_each_line){
          
	if ($split_each_line =~ m/\s+STATUS/) {
		$split_each_line =~ s/\s+\:\s+/\:/g; 
		$split_each_line =~ s/^\s+//g; 
		@_ = split(/\s+/, $split_each_line);
		foreach $_ (@_) {         
			if ($split_each_line =~ m/\s+FA_ID/) {
				$split_each_line =~ s/\s+\:\s+/\:/g; 
				$split_each_line =~ s/^\s+//g; 
				@_ = split(/\s+/, $split_each_line);
				foreach $_ (@_) {
					if ($_ =~m/FA_ID/) {
						$_ =~ s/FA_ID://g;
						$FA_ID = $_;
						
						
							  }
						} 
						          } 
				}
						}

	if ($split_each_line =~ m/\s+OTA_SID/) {
		$split_each_line =~ s/\s+\:\s+/\:/g; 
		$split_each_line =~ s/^\s+//g; 
		@_ = split(/\s+/, $split_each_line);
		foreach $_ (@_) {
			if ($_ =~m/OTA_SID/) {
				$_ =~ s/OTA_SID://g;
				$OTA_SID = $_;

					     }
				} 
                                               }


	if ($split_each_line =~ m/\s+OTA_NID/) {
		$split_each_line =~ s/\s+\:\s+/\:/g; 
		$split_each_line =~ s/^\s+//g; 
		@_ = split(/\s+/, $split_each_line);
		foreach $_ (@_) {
			if ($_ =~m/OTA_NID/) {
				$_ =~ s/OTA_NID://g;
				$OTA_NID = $_;

					     }
				} 
                                               }
                                               

}


$ssh->print("cmdx 1 RTRV-BTS_FA-CONF:BTS=$BTS_ID~$BTS_ID,FA_INDEX=2~2;");
$ssh->waitfor(';');
my $LOG = $ssh->waitfor('COMPLETED');	
print $LOG;
print FILE $LOG;

my (@split_each_line,$split_each_line);

@split_each_line = split (/\n/,$LOG);


foreach $split_each_line (@split_each_line){


	if ($split_each_line =~ m/\s+STATUS/) {
		$split_each_line =~ s/\s+\:\s+/\:/g; 
		$split_each_line =~ s/^\s+//g; 
		@_ = split(/\s+/, $split_each_line);
		foreach $_ (@_) {
			if ($_ =~m/STATUS/) {
				$_ =~ s/STATUS://g;
				$STATUS800 = $_;

					     }
				} 
                                               }



         

	if ($split_each_line =~ m/\s+OTA_SID/) {
		$split_each_line =~ s/\s+\:\s+/\:/g; 
		$split_each_line =~ s/^\s+//g; 
		@_ = split(/\s+/, $split_each_line);
		foreach $_ (@_) {
			if ($_ =~m/OTA_SID/) {
				$_ =~ s/OTA_SID://g;
				$OTA_SID800 = $_;

					     }
				} 
                                               }


	if ($split_each_line =~ m/\s+OTA_NID/) {
		$split_each_line =~ s/\s+\:\s+/\:/g; 
		$split_each_line =~ s/^\s+//g; 
		@_ = split(/\s+/, $split_each_line);
		foreach $_ (@_) {
			if ($_ =~m/OTA_NID/) {
				$_ =~ s/OTA_NID://g;
				$OTA_NID800 = $_;

					     }
				} 
                                               }
                                               

					}
					
					




if (($IP ne "111.2.0.166") && ($IP ne "111.19.0.166")){


$ssh->print("cmdx 1 RTRV-BSC_SID_NID_MAP_INDEX-DATA:NETWORK_INDEX=0~0;");
$ssh->waitfor(';');
my $LOG = $ssh->waitfor('COMPLETED');	
print $LOG;
print FILE $LOG;


my (@split_each_line,$split_each_line);

@split_each_line = split (/\n/,$LOG);
                                     
foreach $split_each_line (@split_each_line){
          
	if ($split_each_line =~ m/\s+USED_FLAG/) {
		$split_each_line =~ s/\s+\:\s+/\:/g; 
		$split_each_line =~ s/^\s+//g;  
		@_ = split(/\s+/, $split_each_line);
		
			if ($_[1] =~ m/SID/){
				$_[1] =~ s/SID://g;
				$BSC_SID = $_[1];
								
				
			     }	
			if ($_[2] =~ m/^NID/){
				$_[2] =~ s/NID://g;
				$BSC_NID = $_[2];				
				
			     }	 		
						
  		
		
                                    
					      }
					   }		
}


if ($IP eq "111.2.0.166"){
	$BSC_SID = "4384";
	$BSC_NID = "123";
	
}

if ($IP eq "111.19.0.166"){
	$BSC_SID = "4155";
	$BSC_NID = "242";	
	
}		



if (($OTA_SID eq "") || ($OTA_SID eq "0")){
	
	$OTA_SID = $BSC_SID;
					}

if (($OTA_NID eq "") || ($OTA_NID eq "0")){
	
	$OTA_NID = $BSC_NID;
					}

if (($OTA_SID800 eq "") || ($OTA_SID800 eq "0")){
	
	$OTA_SID800 = $BSC_SID;
					}

if (($OTA_NID800 eq "") || ($OTA_NID800 eq "0")){
	
	$OTA_NID800 = $BSC_NID;
					}


if ($FA_ID ne ""){
$FA_ID = $FA_ID * 25;
}

$ssh->print("cmdx 1 RTRV-BTS_SECTOR-CONF:BTS=$BTS_ID~$BTS_ID,SECTOR=0~0;");
$ssh->waitfor(';');
my $LOG = $ssh->waitfor('COMPLETED');	
print $LOG;
print FILE $LOG;



my (@split_each_line,$split_each_line);

@split_each_line = split (/\n/,$LOG);
                                     
foreach $split_each_line (@split_each_line){
          
	if ($split_each_line =~ m/\s+PILOT_OFFSET/) {
		$split_each_line =~ s/\s+\:\s+/\:/g; 
		$split_each_line =~ s/^\s+//g;  
		@_ = split(/\s+/, $split_each_line);
		
			if ($_[0] =~ m/PILOT_OFFSET/){
				$_[0] =~ s/PILOT_OFFSET://g;
				$Alpha_PN = $_[0];
								
				
			     }		

					      }
					   }		



$ssh->print("cmdx 1 RTRV-BTS_SECTOR-CONF:BTS=$BTS_ID~$BTS_ID,SECTOR=1~1;");
$ssh->waitfor(';');
my $LOG = $ssh->waitfor('COMPLETED');	
print $LOG;
print FILE $LOG;



my (@split_each_line,$split_each_line);

@split_each_line = split (/\n/,$LOG);
                                     
foreach $split_each_line (@split_each_line){
          
	if ($split_each_line =~ m/\s+PILOT_OFFSET/) {
		$split_each_line =~ s/\s+\:\s+/\:/g; 
		$split_each_line =~ s/^\s+//g;  
		@_ = split(/\s+/, $split_each_line);
		
			if ($_[0] =~ m/PILOT_OFFSET/){
				$_[0] =~ s/PILOT_OFFSET://g;
				$Beta_PN = $_[0];
								
				
			     }		

					      }
					   }
					   
					   
$ssh->print("cmdx 1 RTRV-BTS_SECTOR-CONF:BTS=$BTS_ID~$BTS_ID,SECTOR=2~2;");
$ssh->waitfor(';');
my $LOG = $ssh->waitfor('COMPLETED');	
print $LOG;
print FILE $LOG;



my (@split_each_line,$split_each_line);

@split_each_line = split (/\n/,$LOG);
                                     
foreach $split_each_line (@split_each_line){
          
	if ($split_each_line =~ m/\s+PILOT_OFFSET/) {
		$split_each_line =~ s/\s+\:\s+/\:/g; 
		$split_each_line =~ s/^\s+//g;  
		@_ = split(/\s+/, $split_each_line);
		
			if ($_[0] =~ m/PILOT_OFFSET/){
				$_[0] =~ s/PILOT_OFFSET://g;
				$Gamma_PN = $_[0];
								
				
			     }		

					      }
					   }


$ssh->print("cmdx 1 RTRV-BTS_PARA:BTS=$BTS_ID~$BTS_ID;");
$ssh->waitfor(';');
my $LOG = $ssh->waitfor('COMPLETED');	
print $LOG;
print FILE $LOG;



my (@split_each_line,$split_each_line);

@split_each_line = split (/\n/,$LOG);
                                     
foreach $split_each_line (@split_each_line){
          
	if ($split_each_line =~ m/\s+MAX_SLOT_CYCLE_INDEX/) {
		$split_each_line =~ s/\s+\:\s+/\:/g; 
		$split_each_line =~ s/^\s+//g;  
		@_ = split(/\s+/, $split_each_line);
		
				foreach $_ (@_) {
					if ($_ =~m/REG_ZONE/) {
						$_ =~ s/REG_ZONE://g;
						$reg_zone = $_;
						
						
							  }
						} 	

					      }
					   }
					   					   

$ssh->print('exit');

$ssh->disconnect;
	      
	      
close FILE;

}


my (@lsmBCLS,@lsmECSFB,@lsmFREQ,@lsmMOBIL,@lsmOVL,@lsmPREG,@lsmPREGS,@lsmACBAR,@lsmPRD,@lsmNBR,@lsmLTIME);
	

open (FILELSM, ">C:\\3G_4G_TOOL_Scripts\\ECSFB_FDD\\AUDIT_LOG\\$Cascade\_LSM_NV_eCSFB_AUDIT_$now.txt");		

		
		
my $ssh_lsm = new Control::CLI(Use => 'SSH',
                        Prompt => ']',
			Errmode=> 'return',
                        Timeout=> '240');

my $connect = $ssh_lsm->connect(Host => $LSM_IP,
          Username => $LSM_User,
          Password => $LSM_Pass,
        PrivateKey => '.ssh/id_dsa');

if ($connect) {		#start if connected

$ssh_lsm->read(Blocking => 1);
# $ssh_lsm->print("cd /home/lsm/");
# $ssh_lsm->waitfor("lsm]");
# $ssh_lsm->print("su - lsm");
# $ssh_lsm->waitfor("Password:");
# $ssh_lsm->print("root123");

# begin modified #

$ssh_lsm->print("source /home/lsm/.profile");
$ssh_lsm->waitfor(']');
my $profile = $ssh_lsm->waitfor(']');
#print ("$profile\n");

sleep 1;

$ssh_lsm->print("INFO.sh;");
$ssh_lsm->waitfor(';');
my $info = $ssh_lsm->waitfor(']');
$info =~ s/\[.*//g;
print ("$info\n");


my ($database_name);

if (($info =~ m/4.0/)||($info =~ m/5.0/)) {
$database_name = "mc_db";
                                 }
else {
$database_name = "mc_db";
     }


#print ("$database_name\n");

print ("\n\nPLEASE WAIT......\n\n");

$ssh_lsm->print("/db/mysql/app/bin/mysql -ulsm -plsm $database_name");
my $sql_start = $ssh_lsm->waitfor('mysql>');


$ssh_lsm->print("select ems_alias,sys_alias,type,version,rel_ver from cm_v_level3_lsm where sys_alias = 'eNB_$enode_num';");
my $cm_v_level3_lsm_CMD = $ssh_lsm->waitfor('mysql>');
#print ("$cm_v_level3_lsm_CMD\n");

my @cm_v_level3_lsm_each_line = split(/\n/,$cm_v_level3_lsm_CMD);

foreach $cm_v_level3_lsm_each_line (@cm_v_level3_lsm_each_line) {		#START FOREACH LINE OF cm_v_level3_lsm_CMD
$cm_v_level3_lsm_each_line =~ s/^\|\s+//g;
$cm_v_level3_lsm_each_line =~ s/\|\s+$//g;
$cm_v_level3_lsm_each_line =~ s/\s+$//g;
$cm_v_level3_lsm_each_line =~ s/\s+\|\s+/\t/g;
$cm_v_level3_lsm_each_line =~ s/\r+//g;

if (($cm_v_level3_lsm_each_line =~ m/eNB_/) && ($cm_v_level3_lsm_each_line !~ m/\=/)) {				#START IF NOT ^ems_alias
@_ = split(/\t/,$cm_v_level3_lsm_each_line);
$eNB_NAME = $_[0];
$eNB_ID = $_[1];
$eNB_ID =~ s/eNB_//g;
$eNB_TYPE = $_[2];
$eNB_VERSION = $_[3];
$eNB_CUR_REL_VER = $_[4];

$VERSION = "$eNB_VERSION";
$VERSION =~ s/^v//g;

$hash_ENODEB_INFO{$casdcade}{$bts_id}{eNB_NAME} = "$eNB_NAME";
$hash_ENODEB_INFO{$casdcade}{$bts_id}{eNB_ID} = "$eNB_ID";
$hash_ENODEB_INFO{$casdcade}{$bts_id}{eNB_TYPE} = "$eNB_TYPE";
$hash_ENODEB_INFO{$casdcade}{$bts_id}{eNB_VERSION} = "$eNB_VERSION";
$hash_ENODEB_INFO{$casdcade}{$bts_id}{eNB_CUR_REL_VER} = "$eNB_CUR_REL_VER";


#print ("$eNB_NAME $eNB_ID $eNB_TYPE $eNB_VERSION $eNB_CUR_REL_VER\n");
                                                                                     }				#END IF NOT ^ems_alias
                                                                }		#END FOREACH LINE OF cm_v_level3_lsm_CMD



$ssh_lsm->print("select cs.ne_name,cs.cellNum,cs.status,cs.administrativeState,cs.sectorId from cm_t_r01000006_$VERSION cs, cm_v_level3_lsm l3 where cs.status=1 and l3.sys_alias=cs.ne_name and l3.version = 'v$VERSION' and cs.ne_name='eNB\_$eNB_ID';");
$CELL_1 = $ssh_lsm->waitfor('mysql>');
#print ("$CELL_1\n");


############################
#  START SPLIT CELL_1 DATA #
############################
my (@array_CELL_1, $array_CELL_1);
@array_CELL_1 = split(/\n/, $CELL_1);

foreach $array_CELL_1 (@array_CELL_1) {
$array_CELL_1 =~ s/^\|\s+//g;
$array_CELL_1 =~ s/\|\s+$//g;
$array_CELL_1 =~ s/\s+$//g;
$array_CELL_1 =~ s/\s+\|\s+/\t/g;
$array_CELL_1 =~ s/\r+//g;

if (($array_CELL_1 !~ m/rows\s+in\s+set/) && ($array_CELL_1 !~ m/ne_name/)) {
@_ = split(/\t+/, $array_CELL_1);
if ($_[0] =~ m/eNB/) {
my $enodeb_id = "$_[0]";
$enodeb_id =~ s/eNB\_//g;
$enodeb_id =~ s/\s+//g;
$enodeb_id =~ s/\r+//g;

my $cell_num = "$_[1]";
$cell_num =~ s/\s+//g;
$cell_num =~ s/\r+//g;

my $sectorid = "$_[4]";
$sectorid =~ s/\s+//g;
$sectorid =~ s/\r+//g;

$CELL_INFO{$enodeb_id}{$cell_num}{CELL} = $cell_num;
$CELL_INFO{$enodeb_id}{$cell_num}{SECTOR} = $sectorid;
$CELL_INFO{$enodeb_id}{$cell_num}{VERSION} = $VERSION;

                     }

                                                                            }

                                      }



############################
#   END SPLIT CELL_1 DATA  #
############################

$ssh_lsm->print("exit");
my $sql_exit = $ssh_lsm->waitfor(']');
#print ("$sql_exit\n\n");


$ssh_lsm->print("pwd");
$ssh_lsm->waitfor('/home/');

# end modified #



$ssh_lsm->waitfor("]");
$ssh_lsm->print("cmd $eNB_Name RTRV-C1XRTT-BCLS;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILELSM $Log;
       

my (@split_each_line,$split_each_line);
@split_each_line = split (/\n/,$Log);

foreach $split_each_line (@split_each_line){
          
          
          if ($split_each_line =~ m/^\s+\d+/){
			
			$split_each_line =~ s/^\s+//g;
			$split_each_line =~ s/\s+/,/g;
			chop($split_each_line);
			push(@lsmBCLS,$split_each_line);
			
			                   }		
       }
               
$ssh_lsm->waitfor("]");
$ssh_lsm->print("cmd $eNB_Name RTRV-C1XRTT-ECSFB;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILELSM $Log;               


my (@split_each_line,$split_each_line);
@split_each_line = split (/\n/,$Log);

foreach $split_each_line (@split_each_line){
          
          
          if ($split_each_line =~ m/^\s+\d+/){
			
			$split_each_line =~ s/^\s+//g;
			$split_each_line =~ s/\s+/,/g;
			chop($split_each_line);
			push(@lsmECSFB,$split_each_line);
			
			                   }		
       }




$ssh_lsm->waitfor("]");
$ssh_lsm->print("cmd $eNB_Name RTRV-C1XRTT-FREQ;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILELSM $Log; 

my (@split_each_line,$split_each_line);
@split_each_line = split (/\n/,$Log);

foreach $split_each_line (@split_each_line){
          
          
          if ($split_each_line =~ m/^\s+\d+/){
			
			$split_each_line =~ s/^\s+//g;
			$split_each_line =~ s/\s+/,/g;
			chop($split_each_line);
			push(@lsmFREQ,$split_each_line);
			
			                   }		
       }



$ssh_lsm->waitfor("]");
$ssh_lsm->print("cmd $eNB_Name RTRV-C1XRTT-MOBIL;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILELSM $Log; 

my (@split_each_line,$split_each_line);
@split_each_line = split (/\n/,$Log);

foreach $split_each_line (@split_each_line){
          
          
          if ($split_each_line =~ m/^\s+\d+/){
			
			$split_each_line =~ s/^\s+//g;
			$split_each_line =~ s/\s+/,/g;
			chop($split_each_line);
			push(@lsmMOBIL,$split_each_line);
			
			                   }		
       }


$ssh_lsm->waitfor("]");
$ssh_lsm->print("cmd $eNB_Name RTRV-C1XRTT-OVL;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILELSM $Log; 

my (@split_each_line,$split_each_line);
@split_each_line = split (/\n/,$Log);

foreach $split_each_line (@split_each_line){
          
          
          if ($split_each_line =~ m/^\s+\d+/){
			
			$split_each_line =~ s/^\s+//g;
			$split_each_line =~ s/\s+/,/g;
			chop($split_each_line);
			push(@lsmOVL,$split_each_line);
			
			                   }		
       }


$ssh_lsm->waitfor("]");
$ssh_lsm->print("cmd $eNB_Name RTRV-C1XRTT-PREG;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILELSM $Log; 

my (@split_each_line,$split_each_line);
@split_each_line = split (/\n/,$Log);

foreach $split_each_line (@split_each_line){
          
          
          if ($split_each_line =~ m/^\s+\d+/){
			
			$split_each_line =~ s/^\s+//g;
			$split_each_line =~ s/\s+/,/g;
			chop($split_each_line);
			push(@lsmPREG,$split_each_line);
			
			                   }		
       }



$ssh_lsm->waitfor("]");
$ssh_lsm->print("cmd $eNB_Name RTRV-C1XRTT-PREGSECTOR;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILELSM $Log; 


my (@split_each_line,$split_each_line);
@split_each_line = split (/\n/,$Log);


foreach $split_each_line (@split_each_line){
          
          
          if ($split_each_line =~ m/^\s+\d+/){
			
			$split_each_line =~ s/^\s+//g;
			$split_each_line =~ s/\s+/,/g;
			chop($split_each_line);
			push(@lsmPREGS,$split_each_line);
			
			                   }		
       }

$ssh_lsm->waitfor("]");
$ssh_lsm->print("cmd $eNB_Name RTRV-C1XRTT-PRD;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILELSM $Log; 


my (@split_each_line,$split_each_line);
@split_each_line = split (/\n/,$Log);


foreach $split_each_line (@split_each_line){
          
          
          if ($split_each_line =~ m/^\s+\d+/){
			
			$split_each_line =~ s/^\s+//g;
			$split_each_line =~ s/\s+/,/g;
			chop($split_each_line);
			push(@lsmPRD,$split_each_line);
			
			                   }		
       }


$ssh_lsm->waitfor("]");
$ssh_lsm->print("cmd $eNB_Name RTRV-NBR-C1XRTT;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILELSM $Log; 


my (@split_each_line,$split_each_line);
@split_each_line = split (/\n/,$Log);

foreach $split_each_line (@split_each_line){
          
          
          if ($split_each_line =~ m/^\s+\d+/){
			
			$split_each_line =~ s/^\s+//g;
			$split_each_line =~ s/\s+/,/g;
			chop($split_each_line);
			push(@lsmNBR,$split_each_line);
			
			                   }		
       }





			                   
			                   					



$ssh_lsm->print('exit');

$ssh_lsm->disconnect;

	      }  
	      

close FILELSM;



open (HTMLFILE, ">C:\\3G_4G_TOOL_Scripts\\ECSFB_FDD\\AUDIT_REPORT\\$Cascade\_$eNB_Name\_ECSFB_AUDIT_$now\.html");
print (HTMLFILE "<table width=100% cellspacing=0 cellpadding=5 border=0>\n");
print (HTMLFILE "<tr><td align=center><font size=+3>$Cascade $eNB_Name ECSFB AUDIT REPORT $now </font></td></tr>\n");
print (HTMLFILE "</table>\n");


print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=11 bgcolor=#EEEEEE><b>C1XRTT-BCLS</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>BC_INDEX</th><th align=center>STATUS</th><th align=center>BAND_CLASS</th><th align=center>CELL_RESELECTION_PRIORITY</th><th align=center>THRESH_XHIGH</th><th align=center>THRESH_XLOW</th></tr>\n");			      


foreach $_(@lsmBCLS){

@_ = split (/,/,$_);



if ($_[0] eq "0"){

print (HTMLFILE "<td align=center>$_[0]</td>\n");

if ($_[1] eq "EQUIP"){
print (HTMLFILE "<td align=center>$_[1]</td>\n");	
	
	}
if ($_[1] ne "EQUIP"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");		
	}

if ($_[2] eq "bc1"){
print (HTMLFILE "<td align=center>$_[2]</td>\n");	
	
	}
if ($_[2] ne "bc1"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[2]</td>\n");		
	}
	
if ($_[3] eq "0"){
print (HTMLFILE "<td align=center>$_[3]</td>\n");	
	
	}
if ($_[3] ne "0"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[3]</td>\n");		
	}	

if ($_[4] eq "0"){
print (HTMLFILE "<td align=center>$_[4]</td>\n");	
	
	}
if ($_[4] ne "0"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[4]</td>\n");		
	}	

if ($_[5] eq "0"){
print (HTMLFILE "<td align=center>$_[5]</td>\n");	
	
	}
if ($_[5] ne "0"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[5]</td>\n");		
	}	
		
	
print (HTMLFILE "</tr>");
}		                        
}


print (HTMLFILE "</table>\n");		   
	


print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=11 bgcolor=#EEEEEE><b>C1XRTT-ECSFB</b></td></tr>\n");
#print (HTMLFILE "<tr><td colspan=27 bgcolor=#EEEEEE><b>C1XRTT-ECSFB</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>CELL_NUM</th><th align=center>CARRIER_INDEX</th><th align=center>NUM1_X_PN</th><th align=center>PILOT_STRENGTH_THRESHOLD</th><th align=center>STATUS_AFTER_HO_FAILURE</th></tr>\n");			      


foreach $_(@lsmECSFB){

@_ = split (/,/,$_);


if (($_[1] eq "0") && (($_[0] <= "5") || (($_[0] <= "17") && ($_[0] >= "15")) )) {


print (HTMLFILE "<td align=center>$_[0]</td>\n");	
print (HTMLFILE "<td align=center>$_[1]</td>\n");

if ($_[2] eq "1"){
print (HTMLFILE "<td align=center>$_[2]</td>\n");	
	
}		
if ($_[2] ne "1"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[2]</td>\n");	
	
}
if ($_[3] eq "24"){
print (HTMLFILE "<td align=center>$_[3]</td>\n");	
	
}		
if ($_[3] ne "24"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[3]</td>\n");	
	
}
if ($_[4] eq "0"){
print (HTMLFILE "<td align=center>$_[4]</td>\n");	
	
}		
if ($_[4] ne "0"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[4]</td>\n");	
	
}
print (HTMLFILE "</tr>");
}		                        
}


print (HTMLFILE "</table>\n");	


print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
#print (HTMLFILE "<tr><td colspan=11 bgcolor=#EEEEEE><b>C1XRTT-FREQ</b></td></tr>\n");
print (HTMLFILE "<tr><td colspan=27 bgcolor=#EEEEEE><b>C1XRTT-FREQ</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>CELL_NUM</th><th align=center>CARRIER_INDEX</th><th align=center>STATUS</th><th align=center>BAND_CLASS</th><th align=center>ARFCN</th><th align=center>OFFSET_FREQ</th><th align=center>MCC0</th><th align=center>MNC0</th><th align=center>PREFERENCE0</th><th align=center>MCC1</th><th align=center>MNC1</th><th align=center>PREFERENCE1</th><th align=center>MCC2</th><th align=center>MNC2</th><th align=center>PREFERENCE2</th><th align=center>MCC3</th><th align=center>MNC3</th><th align=center>PREFERENCE3</th><th align=center>MCC4</th><th align=center>MNC4</th><th align=center>PREFERENCE4</th><th align=center>MCC5</th><th align=center>MNC5</th><th align=center>PREFERENCE5</th><th align=center>ANR_UE_SEARCH_RATE</th><th align=center>HANDOVER_TYPE</th><th align=center>MOBILITY_PREFERENCE</th></tr>\n");			      


foreach $_(@lsmFREQ){

@_ = split (/,/,$_);

# if carrier_index = 0 and ((cell <=11 OR [cell <=17) & Cell >=15])
if (($_[1] eq "0") && (($_[0] <= "11") || (($_[0] <= "17") && ($_[0] >= "15")) )) {


print (HTMLFILE "<td align=center>$_[0]</td>\n");	
print (HTMLFILE "<td align=center>$_[1]</td>\n");

if ($_[2] eq "EQUIP"){
print (HTMLFILE "<td align=center>$_[2]</td>\n");	
	
}		
if ($_[2] ne "EQUIP"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[2]</td>\n");		
}

# band = bc1 and cell <=5
# band = bc10 and (cell <=17 & cell >=15)

#if ((($_[3] eq "bc1") && ($_[0] <=5)) || (($_[3] eq "bc10") && ((($_[0] <=17) && ($_[0] >=15))))){
if ((($_[3] eq "bc1") && ($_[0] <=8)) || (($_[3] eq "bc10") && ((($_[0] <=17) && ($_[0] >=15))))){
print (HTMLFILE "<td align=center>$_[3]</td>\n");	
	
}		
#if ((($_[3] ne "bc1") && ($_[0] <=5)) || (($_[3] ne "bc10") && ((($_[0] <=17) && ($_[0] >=15))))){
if ((($_[3] ne "bc1") && ($_[0] <=8)) || (($_[3] ne "bc10") && ((($_[0] <=17) && ($_[0] >=15))))){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[3]</td>\n");		
}


#if ((($_[4] eq "$FA_ID") && ($_[0] <=5)) || (($_[4] eq "476") && ((($_[0] <=17) && ($_[0] >=15))))){
if ((($_[4] eq "$FA_ID") && ($_[0] <=8)) || (($_[4] eq "476") && ((($_[0] <=17) && ($_[0] >=15))))){
print (HTMLFILE "<td align=center>$_[4]</td>\n");	
	
}		
#if ((($_[4] ne "$FA_ID") && ($_[0] <=5)) || (($_[4] ne "476") && ((($_[0] <=17) && ($_[0] >=15))))){
if ((($_[4] ne "$FA_ID") && ($_[0] <=8)) || (($_[4] ne "476") && ((($_[0] <=17) && ($_[0] >=15))))){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[4]</td>\n");		
}


if ($_[5] eq "0"){
print (HTMLFILE "<td align=center>$_[5]</td>\n");	
	
}	
if ($_[5] ne "0"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[5]</td>\n");	
	
}


if ($_[6] eq "310"){
print (HTMLFILE "<td align=center>$_[6]</td>\n");	
	
}	
if ($_[6] ne "310"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[6]</td>\n");	
	
}

if ($_[7] eq "120"){
print (HTMLFILE "<td align=center>$_[7]</td>\n");	
	
}	
if ($_[7] ne "120"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[7]</td>\n");	
	
}


if ($_[8] eq "preferred_prefer"){
print (HTMLFILE "<td align=center>$_[8]</td>\n");	
	
}	
if ($_[8] ne "preferred_prefer"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[8]</td>\n");	
	
}


if ($_[10] eq "FFF"){
print (HTMLFILE "<td align=center>$_[10]</td>\n");	
	
}	
if ($_[10] ne "FFF"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[10]</td>\n");	
	
}

if ($_[11] eq "FFF"){
print (HTMLFILE "<td align=center>$_[11]</td>\n");	
	
}	
if ($_[11] ne "FFF"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[11]</td>\n");	
	
}


if ($_[12] eq "not_allowed_prefer"){
print (HTMLFILE "<td align=center>$_[12]</td>\n");	
	
}	
if ($_[12] ne "not_allowed_prefer"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[12]</td>\n");	
	
}


if ($_[14] eq "FFF"){
print (HTMLFILE "<td align=center>$_[14]</td>\n");	
	
}	
if ($_[14] ne "FFF"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[14]</td>\n");	
	
}

if ($_[15] eq "FFF"){
print (HTMLFILE "<td align=center>$_[15]</td>\n");	
	
}	
if ($_[15] ne "FFF"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[15]</td>\n");	
	
}


if ($_[16] eq "not_allowed_prefer"){
print (HTMLFILE "<td align=center>$_[16]</td>\n");	
	
}	
if ($_[16] ne "not_allowed_prefer"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[16]</td>\n");	
	
}


if ($_[18] eq "FFF"){
print (HTMLFILE "<td align=center>$_[18]</td>\n");	
	
}	
if ($_[18] ne "FFF"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[18]</td>\n");	
	
}

if ($_[19] eq "FFF"){
print (HTMLFILE "<td align=center>$_[19]</td>\n");	
	
}	
if ($_[19] ne "FFF"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[19]</td>\n");	
	
}


if ($_[20] eq "not_allowed_prefer"){
print (HTMLFILE "<td align=center>$_[20]</td>\n");	
	
}	
if ($_[20] ne "not_allowed_prefer"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[20]</td>\n");	
	
}


if ($_[22] eq "FFF"){
print (HTMLFILE "<td align=center>$_[22]</td>\n");	
	
}	
if ($_[22] ne "FFF"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[22]</td>\n");	
	
}

if ($_[23] eq "FFF"){
print (HTMLFILE "<td align=center>$_[23]</td>\n");	
	
}	
if ($_[23] ne "FFF"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[23]</td>\n");	
	
}


if ($_[24] eq "not_allowed_prefer"){
print (HTMLFILE "<td align=center>$_[24]</td>\n");	
	
}	
if ($_[24] ne "not_allowed_prefer"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[24]</td>\n");	
	
}

if ($_[26] eq "FFF"){
print (HTMLFILE "<td align=center>$_[26]</td>\n");	
	
}	
if ($_[26] ne "FFF"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[26]</td>\n");	
	
}

if ($_[27] eq "FFF"){
print (HTMLFILE "<td align=center>$_[27]</td>\n");	
	
}	
if ($_[27] ne "FFF"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[27]</td>\n");	
	
}


if ($_[28] eq "not_allowed_prefer"){
print (HTMLFILE "<td align=center>$_[28]</td>\n");	
	
}	
if ($_[28] ne "not_allowed_prefer"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[28]</td>\n");	
	
}


if ($_[30] eq "100.0"){
print (HTMLFILE "<td align=center>$_[30]</td>\n");	
	
}	
if ($_[30] ne "100.0"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[30]</td>\n");	
	
}

if ($_[31] eq "EventB2"){
print (HTMLFILE "<td align=center>$_[31]</td>\n");	
	
}	
if ($_[31] ne "EventB2"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[31]</td>\n");	
	
}

#if ($_[32] eq "ci_None"){
if ($_[32] eq "None"){
print (HTMLFILE "<td align=center>$_[32]</td>\n");	
	
}	
#if ($_[32] ne "ci_None"){
if ($_[32] ne "None"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[32]</td>\n");	
	
}


print (HTMLFILE "</tr>");
}		                        
}


print (HTMLFILE "</table>\n");		   
                              		  
                              		  
                              		  	   
print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=11 bgcolor=#EEEEEE><b>C1XRTT-OVL</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>CELL_NUM</th><th align=center>T_RESELECTION_1XRTT</th><th align=center>T_RESELECTION_SF_USAGE_1XRTT</th><th align=center>T_RESELECTION_SF_MEDIUM_1XRTT</th><th align=center>T_RESELECTION_SF_HIGH_1XRTT</th><th align=center>USAGE_LONGCODESTATE_1XRTT</th></tr>\n");			      


foreach $_(@lsmOVL){

@_ = split (/,/,$_);


if (($_[0] <= "11") ||  (($_[0] <= "17") && ($_[0] >= "15"))){


print (HTMLFILE "<td align=center>$_[0]</td>\n");	

if ($_[1] eq "0"){
print (HTMLFILE "<td align=center>$_[1]</td>\n");	
	
}		
if ($_[1] ne "0"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");	
	
}

print (HTMLFILE "<td align=center>$_[2]</td>\n");

# if ($_[2] eq "use"){
# print (HTMLFILE "<td align=center>$_[2]</td>\n");	
	
# }		
# if ($_[2] ne "use"){
# print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[2]</td>\n");	
	
# }
if ($_[3] eq "oDot25"){
print (HTMLFILE "<td align=center>$_[3]</td>\n");	
	
}		
if ($_[3] ne "oDot25"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[3]</td>\n");	
	
}


if ($_[4] eq "oDot25"){
print (HTMLFILE "<td align=center>$_[4]</td>\n");	
	
}		
if ($_[4] ne "oDot25"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[4]</td>\n");	
	
}

if ($_[5] eq "use"){
print (HTMLFILE "<td align=center>$_[5]</td>\n");	
	
}		
if ($_[5] ne "use"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[5]</td>\n");	
	
}
print (HTMLFILE "</tr>");
}		                        
}

print (HTMLFILE "</table>\n");	
	
	
	
	
print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=11 bgcolor=#EEEEEE><b>C1XRTT-PRD</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>CELL_NUM</th><th align=center>PURPOSE</th><th align=center>ACTIVE_STATE</th><th align=center>MAX_REPORT_CELL</th><th align=center>REPORT_INTERVAL</th><th align=center>REPORT_AMOUNT</th></tr>\n");			      


foreach $_(@lsmPRD){

@_ = split (/,/,$_);


if ((($_[0] <= "11") || (($_[0] <= "17") && ($_[0] >= "15"))) && ($_[1] eq "StrongestCells")) {


print (HTMLFILE "<td align=center>$_[0]</td>\n");	
print (HTMLFILE "<td align=center>$_[1]</td>\n");

if ($_[2] eq "Active"){
print (HTMLFILE "<td align=center>$_[2]</td>\n");	
	
}		
if ($_[2] ne "Active"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[2]</td>\n");	
	
}
if ($_[3] eq "1"){
print (HTMLFILE "<td align=center>$_[3]</td>\n");	
	
}		
if ($_[3] ne "1"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[3]</td>\n");	
	
}
if ($_[4] eq "240ms"){
print (HTMLFILE "<td align=center>$_[4]</td>\n");	
	
}		
if ($_[4] ne "240ms"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[4]</td>\n");	
	
}

if ($_[5] eq "2"){
print (HTMLFILE "<td align=center>$_[5]</td>\n");	
	
}		
if ($_[5] ne "2"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[5]</td>\n");	
	
}

print (HTMLFILE "</tr>");
}		                        
}

print (HTMLFILE "</table>\n");	


print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=11 bgcolor=#EEEEEE><b>C1XRTT-PREG</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>CELL_NUM</th><th align=center>CSFB_PRE_REG_USAGE</th><th align=center>SID</th><th align=center>NID</th><th align=center>MULTIPLE_SID</th><th align=center>MULTIPLE_NID</th><th align=center>HOME_REG</th><th align=center>FOREIGN_SID_REG</th><th align=center>FOREIGN_NID_REG</th><th align=center>PARAMETER_REG</th><th align=center>POWER_UP_REG</th><th align=center>REGISTRATION_PERIOD</th><th align=center>REGISTRATION_ZONE</th><th align=center>TOTAL_ZONE</th><th align=center>ZONE_TIMER</th><th align=center>POWER_DOWN_REG_IND</th></tr>\n");			      


foreach $_(@lsmPREG){

@_ = split (/,/,$_);


if (($_[0] <= "11") ||  (($_[0] <= "17") && ($_[0] >= "15"))){


print (HTMLFILE "<td align=center>$_[0]</td>\n");	

if ($_[1] eq "use"){
print (HTMLFILE "<td align=center>$_[1]</td>\n");	
	
}		
if ($_[1] ne "use"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");	
	
}

#if ((($_[2] eq "$OTA_SID") && ($_[0] <=5)) || (($_[2] eq "$OTA_SID800") && ((($_[0] <=17) && ($_[0] >=15))))){
if ((($_[2] eq "$OTA_SID") && ($_[0] <=8)) || (($_[2] eq "$OTA_SID800") && ((($_[0] <=17) && ($_[0] >=15))))){
print (HTMLFILE "<td align=center>$_[2]</td>\n");	
	
}		
#if ((($_[2] ne "$OTA_SID") && ($_[0] <=5)) || (($_[2] ne "$OTA_SID800") && ((($_[0] <=17) && ($_[0] >=15))))){
if ((($_[2] ne "$OTA_SID") && ($_[0] <=8)) || (($_[2] ne "$OTA_SID800") && ((($_[0] <=17) && ($_[0] >=15))))){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[2]</td>\n");	
	
}
#if ((($_[3] eq "$OTA_NID") && ($_[0] <=5)) || (($_[3] eq "$OTA_NID800") && ((($_[0] <=17) && ($_[0] >=15))))){
if ((($_[3] eq "$OTA_NID") && ($_[0] <=8)) || (($_[3] eq "$OTA_NID800") && ((($_[0] <=17) && ($_[0] >=15))))){
print (HTMLFILE "<td align=center>$_[3]</td>\n");	
	
}		
#if ((($_[3] ne "$OTA_NID") && ($_[0] <=5)) || (($_[3] ne "$OTA_NID800") && ((($_[0] <=17) && ($_[0] >=15))))){
if ((($_[3] ne "$OTA_NID") && ($_[0] <=8)) || (($_[3] ne "$OTA_NID800") && ((($_[0] <=17) && ($_[0] >=15))))){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[3]</td>\n");	
	
}
if ($_[4] eq "True"){
print (HTMLFILE "<td align=center>$_[4]</td>\n");	
	
}		
if ($_[4] ne "True"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[4]</td>\n");	
	
}

if ($_[5] eq "True"){
print (HTMLFILE "<td align=center>$_[5]</td>\n");	
	
}		
if ($_[5] ne "True"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[5]</td>\n");	
	
}

if ($_[6] eq "True"){
print (HTMLFILE "<td align=center>$_[6]</td>\n");	
	
}		
if ($_[6] ne "True"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[6]</td>\n");	
	
}

if ($_[7] eq "True"){
print (HTMLFILE "<td align=center>$_[7]</td>\n");	
	
}		
if ($_[7] ne "True"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[7]</td>\n");	
	
}

if ($_[8] eq "True"){
print (HTMLFILE "<td align=center>$_[8]</td>\n");	
	
}		
if ($_[8] ne "True"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[8]</td>\n");	
	
}

if ($_[9] eq "False"){
print (HTMLFILE "<td align=center>$_[9]</td>\n");	
	
}		
if ($_[9] ne "False"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[9]</td>\n");	
	
}

if ($_[10] eq "True"){
print (HTMLFILE "<td align=center>$_[10]</td>\n");	
	
}		
if ($_[10] ne "True"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[10]</td>\n");	
	
}

if ($_[11] eq "58"){
print (HTMLFILE "<td align=center>$_[11]</td>\n");	
	
}		
if ($_[11] ne "58"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[11]</td>\n");	
	
}

if ($_[12] eq "$reg_zone"){
print (HTMLFILE "<td align=center>$_[12]</td>\n");	
	
}		
if ($_[12] ne "$reg_zone"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[12]</td>\n");	
	
}

if ($_[13] eq "7"){
print (HTMLFILE "<td align=center>$_[13]</td>\n");	
	
}		
if ($_[13] ne "7"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[13]</td>\n");	
	
}


if ($_[14] eq "ci_min1"){
print (HTMLFILE "<td align=center>$_[14]</td>\n");	
	
}		
if ($_[14] ne "ci_min1"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[14]</td>\n");	
	
}


if ($_[15] eq "True"){
print (HTMLFILE "<td align=center>$_[15]</td>\n");	
	
}		
if ($_[15] ne "True"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[15]</td>\n");	
	
}

print (HTMLFILE "</tr>");
}		                        
}

print (HTMLFILE "</table>\n");	



print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=5 bgcolor=#EEEEEE><b>C1XRTT-PREGSECTOR</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>CELL_NUM</th><th align=center>MARKET_ID</th><th align=center>SWITCH_NUM</th><th align=center>TARGET_CELL_ID</th><th align=center>SECTOR_NUM</th></tr>\n");			      


foreach $_(@lsmPREGS){

@_ = split (/,/,$_);

# cell <= 11
# cell <= 17 and cell >=15
if (($_[0] <= "11") ||  (($_[0] <= "17") && ($_[0] >= "15"))){

print (HTMLFILE "<tr>");
print (HTMLFILE "<td align=center>$_[0]</td>\n");	


if ($_[1] eq "$BSC_SID"){
print (HTMLFILE "<td align=center>$_[1]</td>\n");	
	
}		
if ($_[1] ne "$BSC_SID"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");	
	
}
if ($_[2] eq "$BSC_NID"){
print (HTMLFILE "<td align=center>$_[2]</td>\n");	
	
}		
if ($_[2] ne "$BSC_NID"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[2]</td>\n");	
	
}
if ($_[3] eq "$BTS_ID"){
print (HTMLFILE "<td align=center>$_[3]</td>\n");	
	
}		
if ($_[3] ne "$BTS_ID"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[3]</td>\n");	
	
}

#if ((($_[4] eq "1") && ($_[0] eq "0")) || (($_[4] eq "2") && ($_[0] eq "1")) || (($_[4] eq "3") && ($_[0] eq "2")) || (($_[4] eq "1") && ($_[0] eq "3")) || (($_[4] eq "2") && ($_[0] eq "4")) || (($_[4] eq "3") && ($_[0] eq "5")) || (($_[4] eq "1") && ($_[0] eq "15")) || (($_[4] eq "2") && ($_[0] eq "16")) || (($_[4] eq "3") && ($_[0] eq "17"))){
if ((($_[4] eq "1") && ($_[0] eq "0")) || (($_[4] eq "2") && ($_[0] eq "1")) || (($_[4] eq "3") && ($_[0] eq "2")) || (($_[4] eq "1") && ($_[0] eq "3")) || (($_[4] eq "2") && ($_[0] eq "4")) || (($_[4] eq "3") && ($_[0] eq "5")) || (($_[4] eq "1") && ($_[0] eq "6")) || (($_[4] eq "2") && ($_[0] eq "7")) || (($_[4] eq "3") && ($_[0] eq "8")) || (($_[4] eq "1") && ($_[0] eq "15")) || (($_[4] eq "2") && ($_[0] eq "16")) || (($_[4] eq "3") && ($_[0] eq "17"))){
print (HTMLFILE "<td align=center>$_[4]</td>\n");	
	
}		
#if ((($_[4] ne "1") && ($_[0] eq "0")) || (($_[4] ne "2") && ($_[0] eq "1")) || (($_[4] ne "3") && ($_[0] eq "2")) || (($_[4] ne "1") && ($_[0] eq "3")) || (($_[4] ne "2") && ($_[0] eq "4")) || (($_[4] ne "3") && ($_[0] eq "5")) || (($_[4] ne "1") && ($_[0] eq "15")) || (($_[4] ne "2") && ($_[0] eq "16")) || (($_[4] ne "3") && ($_[0] eq "17"))){
if ((($_[4] ne "1") && ($_[0] eq "0")) || (($_[4] ne "2") && ($_[0] eq "1")) || (($_[4] ne "3") && ($_[0] eq "2")) || (($_[4] ne "1") && ($_[0] eq "3")) || (($_[4] ne "2") && ($_[0] eq "4")) || (($_[4] ne "3") && ($_[0] eq "5")) || (($_[4] ne "1") && ($_[0] eq "6")) || (($_[4] ne "2") && ($_[0] eq "7")) || (($_[4] ne "3") && ($_[0] eq "8")) || (($_[4] ne "1") && ($_[0] eq "15")) || (($_[4] ne "2") && ($_[0] eq "16")) || (($_[4] ne "3") && ($_[0] eq "17"))){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[4]</td>\n");	
	
}

print (HTMLFILE "</tr>");
}		                        
}

print (HTMLFILE "</table>\n");	



print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=11 bgcolor=#EEEEEE><b>C1XRTT-MOBIL</b></td></tr>\n");
#print (HTMLFILE "<tr><th align=center>CELL_NUM</th><th align=center>S_ID</th><th align=center>N_ID</th><th align=center>MULT_SIDS</th><th align=center>MULT_NIDS</th><th align=center>REG_ZONE</th><th align=center>TOTAL_ZONES</th><th align=center>ZONE_TIMER</th><th align=center>PACKET_ZONE_ID</th><th align=center>P_ZIDHYST_PARAM_INCLUDED</th><th align=center>P_ZHYST_ENABLED</th><th align=center>P_ZHYST_INFO_INCL</th><th align=center>P_ZHYST_LIST_LEN</th><th align=center>P_ZHYST_ACT_TIMER</th><th align=center>P_ZHYST_TIMER_MUL</th><th align=center>PZ_HYST_TIMER_EXP</th><th align=center>P_REV</th><th align=center>MIN_PREV</th><th align=center>NEG_SLOT_CYCLE_INDEX_SUP</th><th align=center>ENCRYPT_MODE</th><th align=center>ENC_SUPPORTED</th><th align=center>SIG_ENCRYPT_SUP</th><th align=center>MSG_INTEGRITY_SUP</th><th align=center>SIG_INTEGRITY_SUPINCL</th><th align=center>SIG_INTEGRITY_SUP</th><th align=center>AUTH</th><th align=center>MAX_NUM_ALT_SO</th><th align=center>USE_SYNC_ID</th><th align=center>MS_INIT_POS_LOC_SUP_IND</th><th align=center>MOB_QOS</th><th align=center>BAND_CLASS_INFO_REQ</th><th align=center>BAND_CLASS</th><th align=center>BYPASS_REG_IND</th><th align=center>ALT_BAND_CLASS</th><th align=center>MAX_ADD_SERV_INSTANCE</th><th align=center>HOME_REG</th><th align=center>FOR_SIDREG</th><th align=center>FOR_NIDREG</th><th align=center>POWER_UP_REG</th><th align=center>POWER_DOWN_REG</th><th align=center>PARAMETER_REG</th><th align=center>REG_PRD</th><th align=center>REG_DIST</th><th align=center>PREF_MSIDTYPE</th><th align=center>EXT_PREF_MSIDTYPE</th><th align=center>MEID_REQD</th><th align=center>MCC</th><th align=center>IMSI1112</th><th align=center>IMSI_TSUPPORTED</th><th align=center>RECONNECT_MSG_IND</th><th align=center>RER_MODE_SUPPORTED</th><th align=center>TKZ_MODE_SUPPORTED</th><th align=center>TKZ_ID</th><th align=center>PILOT_REPORT</th><th align=center>SDB_SUPPORTED</th><th align=center>AUTO_FCSOALLOWED</th><th align=center>SDB_IN_RCNMIND</th><th align=center>FPC_FCH_INCLUDED</th><th align=center>FPC_FCH_INIT_SETPT_RC3</th><th align=center>FPC_FCH_INIT_SETPT_RC4</th><th align=center>FPC_FCH_INIT_SETPT_RC5</th><th align=center>FPC_FCH_INIT_SETPT_RC11</th><th align=center>FPC_FCH_INIT_SETPT_RC12</th><th align=center>T_ADD</th><th align=center>PILOT_INC</th><th align=center>RAND_CDMA2000_INCLUDED</th><th align=center>RAND_CDMA2000</th><th align=center>LTM_OFF</th><th align=center>DAYLT</th><th align=center>G_CSNAL2_ACK_TIMER</th><th align=center>G_CSNASEQ_CONTEXT_TIMER</th></tr>\n");			      
print (HTMLFILE "<tr><th align=center>CELL_NUM</th><th align=center>S_ID</th><th align=center>N_ID</th><th align=center>MULT_SIDS</th><th align=center>MULT_NIDS</th><th align=center>REG_ZONE</th><th align=center>TOTAL_ZONES</th><th align=center>ZONE_TIMER</th><th align=center>PACKET_ZONE_ID</th><th align=center>P_ZIDHYST_PARAM_INCLUDED</th><th align=center>P_ZHYST_ENABLED</th><th align=center>P_ZHYST_INFO_INCL</th><th align=center>P_ZHYST_LIST_LEN</th><th align=center>P_ZHYST_ACT_TIMER</th><th align=center>P_ZHYST_TIMER_MUL</th><th align=center>PZ_HYST_TIMER_EXP</th><th align=center>P_REV</th><th align=center>MIN_PREV</th><th align=center>NEG_SLOT_CYCLE_INDEX_SUP</th><th align=center>ENCRYPT_MODE</th><th align=center>ENC_SUPPORTED</th><th align=center>SIG_ENCRYPT_SUP</th><th align=center>MSG_INTEGRITY_SUP</th><th align=center>SIG_INTEGRITY_SUPINCL</th><th align=center>SIG_INTEGRITY_SUP</th><th align=center>AUTH</th><th align=center>MAX_NUM_ALT_SO</th><th align=center>USE_SYNC_ID</th><th align=center>MS_INIT_POS_LOC_SUP_IND</th><th align=center>MOB_QOS</th><th align=center>BAND_CLASS_INFO_REQ</th><th align=center>BAND_CLASS</th><th align=center>BYPASS_REG_IND</th><th align=center>ALT_BAND_CLASS</th><th align=center>MAX_ADD_SERV_INSTANCE</th><th align=center>HOME_REG</th><th align=center>FOR_SIDREG</th><th align=center>FOR_NIDREG</th><th align=center>POWER_UP_REG</th><th align=center>POWER_DOWN_REG</th><th align=center>PARAMETER_REG</th><th align=center>REG_PRD</th><th align=center>REG_DIST</th><th align=center>PREF_MSIDTYPE</th><th align=center>EXT_PREF_MSIDTYPE</th><th align=center>MEID_REQD</th><th align=center>MCC</th><th align=center>IMSI1112</th><th align=center>IMSI_TSUPPORTED</th><th align=center>RECONNECT_MSG_IND</th><th align=center>RER_MODE_SUPPORTED</th><th align=center>TKZ_MODE_SUPPORTED</th><th align=center>TKZ_ID</th><th align=center>PILOT_REPORT</th><th align=center>SDB_SUPPORTED</th><th align=center>AUTO_FCSOALLOWED</th><th align=center>SDB_IN_RCNMIND</th><th align=center>FPC_FCH_INCLUDED</th><th align=center>FPC_FCH_INIT_SETPT_RC3</th><th align=center>FPC_FCH_INIT_SETPT_RC4</th><th align=center>FPC_FCH_INIT_SETPT_RC5</th><th align=center>FPC_FCH_INIT_SETPT_RC11</th><th align=center>FPC_FCH_INIT_SETPT_RC12</th><th align=center>T_ADD</th><th align=center>PILOT_INC</th><th align=center>RAND_CDMA2000_INCLUDED</th><th align=center>RAND_CDMA2000</th><th align=center>G_CSNAL2_ACK_TIMER</th><th align=center>G_CSNASEQ_CONTEXT_TIMER</th></tr>\n");			      


foreach $_(@lsmMOBIL){

@_ = split (/,/,$_);
if (($_[0] <= "5") ||  (($_[0] <= "17") && ($_[0] >= "15"))){

print (HTMLFILE "<td align=center>$_[0]</td>\n");



if ((($_[1] eq "$OTA_SID") && ($_[0] <=5)) || (($_[1] eq "$OTA_SID800") && ((($_[0] <=17) && ($_[0] >=15))))){
print (HTMLFILE "<td align=center>$_[1]</td>\n");	
	
}		
if ((($_[1] ne "$OTA_SID") && ($_[0] <=5)) || (($_[1] ne "$OTA_SID800") && ((($_[0] <=17) && ($_[0] >=15))))){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[1]</td>\n");	
	
}

if ((($_[2] eq "$OTA_NID") && ($_[0] <=5)) || (($_[2] eq "$OTA_NID800") && ((($_[0] <=17) && ($_[0] >=15))))){
print (HTMLFILE "<td align=center>$_[2]</td>\n");	
	
}		
if ((($_[2] ne "$OTA_NID") && ($_[0] <=5)) || (($_[2] ne "$OTA_NID800") && ((($_[0] <=17) && ($_[0] >=15))))){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[2]</td>\n");	
	
}


if ($_[3] eq "1"){
print (HTMLFILE "<td align=center>$_[3]</td>\n");	
	
}		
if ($_[3] ne "1"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[3]</td>\n");	
	
}

if ($_[4] eq "1"){
print (HTMLFILE "<td align=center>$_[4]</td>\n");	
	
}		
if ($_[4] ne "1"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[4]</td>\n");	
	
}

if ($_[5] eq "$reg_zone"){
print (HTMLFILE "<td align=center>$_[5]</td>\n");	
	
}		
if ($_[5] ne "$reg_zone"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[5]</td>\n");	
	
}


if ($_[6] eq "7"){
print (HTMLFILE "<td align=center>$_[6]</td>\n");	
	
}		
if ($_[6] ne "7"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[6]</td>\n");	
	
}

if ($_[7] eq "0"){
print (HTMLFILE "<td align=center>$_[7]</td>\n");	
	
}		
if ($_[7] ne "0"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[7]</td>\n");	
	
}


if ($_[8] eq "-1"){
print (HTMLFILE "<td align=center>$_[8]</td>\n");	
	
}		
if ($_[8] ne "-1"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[8]</td>\n");	
	
}

if ($_[9] eq "0"){
print (HTMLFILE "<td align=center>$_[9]</td>\n");	
	
}		
if ($_[9] ne "0"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[9]</td>\n");	
	
}


if ($_[10] eq "0"){
print (HTMLFILE "<td align=center>$_[10]</td>\n");	
	
}		
if ($_[10] ne "0"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[10]</td>\n");	
	
}

if ($_[11] eq "0"){
print (HTMLFILE "<td align=center>$_[11]</td>\n");	
	
}		
if ($_[11] ne "0"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[11]</td>\n");	
	
}

if ($_[12] eq "0"){
print (HTMLFILE "<td align=center>$_[12]</td>\n");	
	
}		
if ($_[12] ne "0"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[12]</td>\n");	
	
}

if ($_[13] eq "0"){
print (HTMLFILE "<td align=center>$_[13]</td>\n");	
	
}		
if ($_[13] ne "0"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[13]</td>\n");	
	
}

if ($_[14] eq "0"){
print (HTMLFILE "<td align=center>$_[14]</td>\n");	
	
}		
if ($_[14] ne "0"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[14]</td>\n");	
	
}

if ($_[15] eq "0"){
print (HTMLFILE "<td align=center>$_[15]</td>\n");	
	
}		
if ($_[15] ne "0"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[15]</td>\n");	
	
}

if ($_[16] eq "6"){
print (HTMLFILE "<td align=center>$_[16]</td>\n");	
	
}		
if ($_[16] ne "6"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[16]</td>\n");	
	
}

if ($_[17] eq "1"){
print (HTMLFILE "<td align=center>$_[17]</td>\n");	
	
}		
if ($_[17] ne "1"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[17]</td>\n");	
	
}

if ($_[18] eq "-1"){
print (HTMLFILE "<td align=center>$_[18]</td>\n");	
	
}		
if ($_[18] ne "-1"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[18]</td>\n");	
	
}

if ($_[19] eq "-1"){
print (HTMLFILE "<td align=center>$_[19]</td>\n");	
	
}		
if ($_[19] ne "-1"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[19]</td>\n");	
	
}

if ($_[20] eq "-1"){
print (HTMLFILE "<td align=center>$_[20]</td>\n");	
	
}		
if ($_[20] ne "-1"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[20]</td>\n");	
	
}

if ($_[21] eq "-1"){
print (HTMLFILE "<td align=center>$_[21]</td>\n");	
	
}		
if ($_[21] ne "-1"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[21]</td>\n");	
	
}

if ($_[22] eq "-1"){
print (HTMLFILE "<td align=center>$_[22]</td>\n");	
	
}		
if ($_[22] ne "-1"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[22]</td>\n");	
	
}

if ($_[23] eq "-1"){
print (HTMLFILE "<td align=center>$_[23]</td>\n");	
	
}		
if ($_[23] ne "-1"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[23]</td>\n");	
	
}

if ($_[24] eq "-1"){
print (HTMLFILE "<td align=center>$_[24]</td>\n");	
	
}		
if ($_[24] ne "-1"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[24]</td>\n");	
	
}

if ($_[25] eq "1"){
print (HTMLFILE "<td align=center>$_[25]</td>\n");	
	
}		
if ($_[25] ne "1"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[25]</td>\n");	
	
}

if ($_[26] eq "2"){
print (HTMLFILE "<td align=center>$_[26]</td>\n");	
	
}		
if ($_[26] ne "2"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[26]</td>\n");	
	
}

if ($_[27] eq "-1"){
print (HTMLFILE "<td align=center>$_[27]</td>\n");	
	
}		
if ($_[27] ne "-1"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[27]</td>\n");	
	
}

if ($_[28] eq "-1"){
print (HTMLFILE "<td align=center>$_[28]</td>\n");	
	
}		
if ($_[28] ne "-1"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[28]</td>\n");	
	
}

if ($_[29] eq "-1"){
print (HTMLFILE "<td align=center>$_[29]</td>\n");	
	
}		
if ($_[29] ne "-1"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[29]</td>\n");	
	
}
if ($_[30] eq "-1"){
print (HTMLFILE "<td align=center>$_[30]</td>\n");	
	
}		
if ($_[30] ne "-1"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[30]</td>\n");	
	
}

if ($_[31] eq "3"){
print (HTMLFILE "<td align=center>$_[31]</td>\n");	
	
}		
if ($_[31] ne "3"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[31]</td>\n");	
	
}

if ($_[32] eq "-1"){
print (HTMLFILE "<td align=center>$_[32]</td>\n");	
	
}		
if ($_[32] ne "-1"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[32]</td>\n");	
	
}

if ($_[33] eq "-1"){
print (HTMLFILE "<td align=center>$_[33]</td>\n");	
	
}		
if ($_[33] ne "-1"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[33]</td>\n");	
	
}

if ($_[34] eq "-1"){
print (HTMLFILE "<td align=center>$_[34]</td>\n");	
	
}		
if ($_[34] ne "-1"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[34]</td>\n");	
	
}

if ($_[35] eq "1"){
print (HTMLFILE "<td align=center>$_[35]</td>\n");	
	
}		
if ($_[35] ne "1"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[35]</td>\n");	
	
}
if ($_[36] eq "1"){
print (HTMLFILE "<td align=center>$_[36]</td>\n");	
	
}		
if ($_[36] ne "1"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[36]</td>\n");	
	
}
if ($_[37] eq "1"){
print (HTMLFILE "<td align=center>$_[37]</td>\n");	
	
}		
if ($_[37] ne "1"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[37]</td>\n");	
	
}

if ($_[38] eq "1"){
print (HTMLFILE "<td align=center>$_[38]</td>\n");	
	
}		
if ($_[38] ne "1"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[38]</td>\n");	
	
}

if ($_[39] eq "1"){
print (HTMLFILE "<td align=center>$_[39]</td>\n");	
	
}		
if ($_[39] ne "1"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[39]</td>\n");	
	
}

if ($_[40] eq "0"){
print (HTMLFILE "<td align=center>$_[40]</td>\n");	
	
}		
if ($_[40] ne "0"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[40]</td>\n");	
	
}

if ($_[41] eq "58"){
print (HTMLFILE "<td align=center>$_[41]</td>\n");	
	
}		
if ($_[41] ne "58"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[41]</td>\n");	
	
}

if ($_[42] eq "-1"){
print (HTMLFILE "<td align=center>$_[42]</td>\n");	
	
}		
if ($_[42] ne "-1"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[42]</td>\n");	
	
}

if ($_[43] eq "3"){
print (HTMLFILE "<td align=center>$_[43]</td>\n");	
	
}		
if ($_[43] ne "3"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[43]</td>\n");	
	
}


if ($_[44] eq "-1"){
print (HTMLFILE "<td align=center>$_[44]</td>\n");	
	
}		
if ($_[44] ne "-1"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[44]</td>\n");	
	
}


if ($_[45] eq "-1"){
print (HTMLFILE "<td align=center>$_[45]</td>\n");	
	
}		
if ($_[45] ne "-1"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[45]</td>\n");	
	
}


if ($_[46] eq "310"){
print (HTMLFILE "<td align=center>$_[46]</td>\n");	
	
}		
if ($_[46] ne "310"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[46]</td>\n");	
	
}

if ($_[47] eq "0"){
print (HTMLFILE "<td align=center>$_[47]</td>\n");	
	
}		
if ($_[47] ne "0"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[47]</td>\n");	
	
}

if ($_[48] eq "0"){
print (HTMLFILE "<td align=center>$_[48]</td>\n");	
	
}		
if ($_[48] ne "0"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[48]</td>\n");	
	
}

if ($_[49] eq "-1"){
print (HTMLFILE "<td align=center>$_[49]</td>\n");	
	
}		
if ($_[49] ne "-1"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[49]</td>\n");	
	
}

if ($_[50] eq "-1"){
print (HTMLFILE "<td align=center>$_[50]</td>\n");	
	
}		
if ($_[50] ne "-1"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[50]</td>\n");	
	
}

if ($_[51] eq "-1"){
print (HTMLFILE "<td align=center>$_[51]</td>\n");	
	
}		
if ($_[51] ne "-1"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[51]</td>\n");	
	
}

if ($_[52] eq "-1"){
print (HTMLFILE "<td align=center>$_[52]</td>\n");	
	
}		
if ($_[52] ne "-1"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[52]</td>\n");	
	
}

if ($_[52] eq "-1"){
print (HTMLFILE "<td align=center>$_[53]</td>\n");	
	
}		
if ($_[53] ne "-1"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[53]</td>\n");	
	
}

if ($_[54] eq "-1"){
print (HTMLFILE "<td align=center>$_[54]</td>\n");	
	
}		
if ($_[54] ne "-1"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[54]</td>\n");	
	
}

if ($_[55] eq "-1"){
print (HTMLFILE "<td align=center>$_[55]</td>\n");	
	
}		
if ($_[55] ne "-1"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[55]</td>\n");	
	
}

if ($_[56] eq "-1"){
print (HTMLFILE "<td align=center>$_[56]</td>\n");	
	
}		
if ($_[56] ne "-1"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[56]</td>\n");	
	
}

if ($_[57] eq "1"){
print (HTMLFILE "<td align=center>$_[57]</td>\n");	
	
}		
if ($_[57] ne "1"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[57]</td>\n");	
	
}

if ($_[58] eq "56"){
print (HTMLFILE "<td align=center>$_[58]</td>\n");	
	
}		
if ($_[58] ne "56"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[58]</td>\n");	
	
}

if ($_[59] eq "64"){
print (HTMLFILE "<td align=center>$_[59]</td>\n");	
	
}		
if ($_[59] ne "64"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[59]</td>\n");	
	
}

if ($_[60] eq "56"){
print (HTMLFILE "<td align=center>$_[60]</td>\n");	
	
}		
if ($_[60] ne "56"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[60]</td>\n");	
	
}

if ($_[61] eq "56"){
print (HTMLFILE "<td align=center>$_[61]</td>\n");	
	
}		
if ($_[61] ne "56"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[61]</td>\n");	
	
}

if ($_[62] eq "0"){
print (HTMLFILE "<td align=center>$_[62]</td>\n");	
	
}		
if ($_[62] ne "0"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[62]</td>\n");	
	
}

#if ($_[63] eq "-1"){ #T_ADD
if ($_[63] eq "28"){ #T_ADD
print (HTMLFILE "<td align=center>$_[63]</td>\n");	
	
}		
if ($_[63] ne "28"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[63]</td>\n");	
	
}

if ($_[64] eq "3"){
print (HTMLFILE "<td align=center>$_[64]</td>\n");	
	
}		
if ($_[64] ne "3"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[64]</td>\n");	
	
}


if ($_[65] eq "0"){
print (HTMLFILE "<td align=center>$_[65]</td>\n");	
	
}		
if ($_[65] ne "0"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[65]</td>\n");	
	
}

if ($_[66] eq "0"){
print (HTMLFILE "<td align=center>$_[66]</td>\n");	
	
}		
if ($_[66] ne "0"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[66]</td>\n");	
	
}
#### adddd

#if ($_[67] eq $ltm){
#print (HTMLFILE "<td align=center>$_[67]</td>\n");	
#	
#}		
#if ($_[67] ne $ltm){
#print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[67]</td>\n");	
#	
#}
#
#if ($_[68] eq "1"){
#print (HTMLFILE "<td align=center>$_[68]</td>\n");	
#	
#}		
#if ($_[68] ne "1"){
#print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[68]</td>\n");	
#	
#}
#

if ($_[67] eq "10"){
print (HTMLFILE "<td align=center>$_[67]</td>\n");	
	
}		
if ($_[67] ne "10"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[67]</td>\n");	
	
}

if ($_[68] eq "30"){
print (HTMLFILE "<td align=center>$_[68]</td>\n");	
	
}		
if ($_[68] ne "30"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[68]</td>\n");	
	
}


print (HTMLFILE "</tr>");
}
}		                        

print (HTMLFILE "</table>\n");



print (HTMLFILE "<br><br><table width=100% cellspacing=0 cellpadding=5 border=1 bordercolor=#000000>\n");
print (HTMLFILE "<tr><td colspan=15 bgcolor=#EEEEEE><b>C1XRTT-NBR</b></td></tr>\n");
print (HTMLFILE "<tr><th align=center>CELL_NUM</th><th align=center>RELATION_IDX</th><th align=center>STATUS</th><th align=center>MARKET_ID</th><th align=center>SWITCH_NUM</th><th align=center>TARGET_CELL_ID</th><th align=center>SECTOR_NUM</th><th align=center>BAND_CLASS</th><th align=center>ARFCN</th><th align=center>PN_OFFSET</th><th align=center>IS_REMOVE_ALLOWED</th><th align=center>IS_HOALLOWED</th><th align=center>OWNER_TYPE</th><th align=center>CURRENT_RANK</th><th align=center>PREVIOUS_RANK</th></tr>\n");		

foreach $_(@lsmNBR){

@_ = split (/,/,$_);
                   
                   
print (HTMLFILE "<td align=center>$_[0]</td>\n");
print (HTMLFILE "<td align=center>$_[1]</td>\n");

if ($_[2] eq "EQUIP"){
print (HTMLFILE "<td align=center>$_[2]</td>\n");	
	
}		
if ($_[2] ne "EQUIP"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[2]</td>\n");	
	
}	      


if ($_[3] eq "$BSC_SID"){
print (HTMLFILE "<td align=center>$_[3]</td>\n");	
	
}		
if ($_[3] ne "$BSC_SID"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[3]</td>\n");	
	
}

if ($_[4] eq "$BSC_NID"){
print (HTMLFILE "<td align=center>$_[4]</td>\n");	
	
}		
if ($_[4] ne "$BSC_NID"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[4]</td>\n");	
	
}

if ($_[5] ne "0") {
print (HTMLFILE "<td align=center>$_[5]</td>\n");
                  }
else {
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[5]</td>\n");
     }	  

print (HTMLFILE "<td align=center>$_[6]</td>\n");

if (($_[8] eq "476") && ($_[7] eq "bc10")){
print (HTMLFILE "<td align=center>$_[7]</td>\n");
}
if (($_[8] ne "476") && ($_[7] eq "bc1")){
print (HTMLFILE "<td align=center>$_[7]</td>\n");
}

if (($_[8] eq "476") && ($_[7] ne "bc10")){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[7]</td>\n");	
	}
if (($_[8] ne "476") && ($_[7] ne "bc1")){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[7]</td>\n");	
	}
	
	
print (HTMLFILE "<td align=center>$_[8]</td>\n");	
print (HTMLFILE "<td align=center>$_[9]</td>\n");	


if ($_[10] eq "True"){
print (HTMLFILE "<td align=center>$_[10]</td>\n");	
	
}		
if ($_[10] ne "True"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[10]</td>\n");	
	
}

if ($_[11] eq "True"){
print (HTMLFILE "<td align=center>$_[11]</td>\n");	
	
}		
if ($_[11] ne "True"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[11]</td>\n");	
	
}


if ($_[12] eq "CreatedByUserCommand"){
print (HTMLFILE "<td align=center>$_[12]</td>\n");	
	
}		
if ($_[12] ne "CreatedByUserCommand"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[12]</td>\n");	
	
}


if ($_[13] eq "0.0"){
print (HTMLFILE "<td align=center>$_[13]</td>\n");	
	
}		
if ($_[13] ne "0.0"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[13]</td>\n");	
	
}

if ($_[14] eq "0.0"){
print (HTMLFILE "<td align=center>$_[14]</td>\n");	
	
}		
if ($_[14] ne "0.0"){
print (HTMLFILE "<td bgcolor=#FF0000 align=center>$_[14]</td>\n");	
	
}

print (HTMLFILE "</tr>");
}
		                        

print (HTMLFILE "</table>\n");

}