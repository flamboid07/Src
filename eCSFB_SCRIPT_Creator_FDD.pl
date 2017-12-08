#!/usr/bin/perl
use POSIX;
use Net::SSH2;

use Control::CLI;
use Data::Dumper;

# my (@input,$input);
# @input = split(/,/,$ARGV[0]);

my (%hash_FA_ID_800, $hash_FA_ID_800);
%hash_FA_ID_800 = ();

my ($Cascade,$BTS_ID,$BTS_ID2,$BSM,$IP,$user,$pass);

my ($OTA_SID1,$OTA_NID1,$BSC_SID,$BSC_NID,$Alpha_PN1,$Beta_PN1,$Gamma_PN1,$reg_zone1,$eNBname,$ENB2,$ltm,$FA_ID1,$FA_INDEX_BSM,$opt,$pkg);
my ($OTA_SID2,$OTA_NID2,$Alpha_PN2,$Beta_PN2,$Gamma_PN2,$FA_ID2,$OTA_SID800,$OTA_NID800, $FA_ID_800);
my ($firstbts,$secondbts);
my (@FA_INDEX_BSM);
my($now);

my %hash_localtimes = (
'111.4.0.166' => '-24',
'111.4.0.198' => '-24',
'111.2.0.166' => '-24',
'111.10.0.166' => '-16',
'111.3.0.166' => '-24',
'111.3.0.198' => '-24',
'111.3.0.230' => '-24',
'111.9.0.166 ' => '-32',
'111.22.0.166' => '-20',
'111.23.0.166' => '-20',
'111.23.0.198' => '-20',
'111.1.0.68' => '-24',
'111.1.1.100' => '-24',
'111.15.0.166' => '-20',
'111.15.0.198' => '-20',
'111.24.0.166' => '-28',
'111.24.0.198' => '-28',
'111.25.0.166' => '-20',
'111.5.0.166' => '-20',
'111.21.0.166' => '-32',
'111.18.0.166' => '-20',
'111.18.0.198' => '-20',
'111.17.0.166' => '-20',
'111.17.0.198' => '-20',
'111.16.0.166' => '-20',
'111.26.0.198' => '-20',
'111.19.0.166' => '-24',
'111.19.0.198' => '-24',
'111.26.0.166' => '-24',
'111.26.0.198' => '-24',
'111.6.0.166' => '-32',
'111.27.0.166' => '-24',
'111.33.0.166' => '-20',
'111.14.0.166' => '-32',
'111.14.0.198' => '-32',
'111.28.0.166' => '-32',
'111.29.0.166' => '-20',
'111.11.0.166' => '-32',
'111.31.0.166' => '-28',
'111.31.0.198' => '-28',
'111.8.0.166' => '-32',
'111.7.0.166' => '-32',
'111.30.0.166' => '-20',
'111.12.0.166' => '-32',
'111.20.0.166' => '-24',
'111.13.0.166' => '-32',
'111.13.0.198' => '-32',
'111.34.0.166' => '-24',
'111.32.0.166' => '-20',
);


$now = strftime("%m%d%Y_%H_%M_%S", localtime);


my (@inputMulti,$inputMulti);
@inputMulti = split(/~/,$ARGV[0]);

my $validate = `C:\\3G_4G_TOOL_Scripts\\bin\\validate.exe`;
chomp ($validate);

$validate="true";


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
	
	
foreach $inputMulti (@inputMulti){


my (@input);
@input = split(/,/,$inputMulti);    
                                   
                                   
$Cascade = $input[0];
$BTS_ID1 = $input[1];
$IP = $input[2];
$ltm = $input[3];
$ENB1 = $input[4];
$opt = $input[5];
$eNBname = $input[6];
$pkg = $input[7];

$user = "cdmaone";
$pass = "cdmaone";


#print ($IP);
#print ($hash_localtimes{$IP});
# sleep 20;
#exit;

# if ($IP ne "111.15.0.198"){
# $pass = "cdmaone";	
	
# }	

# if ($IP eq "111.15.0.198"){
# $pass = "cdmaone1";	
	
# }

if ($opt ne "7"){
	
 open (FILE, ">C:\\3G_4G_TOOL_Scripts\\ECSFB_FDD\\BSM_LOG\\$Cascade\_eCSFB_BSM_LOGS_$now.txt");			
 
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

     
     

if ($BTS_ID1 ne ""){


# if ($IP eq "111.27.0.166"){

# $ssh->print("cmdx 1 RTRV-BTS_SUBSYSTEM-CONF:BTS=$BTS_ID;");
# }
# if ($IP ne "111.27.0.166"){
$ssh->print("cmdx 1 RTRV-BTS_SUBSYSTEM-CONF:BTS=$BTS_ID1~$BTS_ID1,EXPORT_CSV=NO;");	
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
			    if ($fa[6] eq "CELLULAR"){
			    	$hash_FA_ID_800{$fa[3]} = $fa[7];

						      }								  
				
					     }
				
			
				}


		
					       }



					   }








$FA_INDEX_BSM = $FA_INDEX_BSM[0];




$ssh->print("cmdx 1 RTRV-BTS_FA-CONF:BTS=$BTS_ID1~$BTS_ID1,FA_INDEX=$FA_INDEX_BSM~$FA_INDEX_BSM;");
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
						$FA_ID1 = $_;
						
						
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
				$OTA_SID1 = $_;

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
				$OTA_NID1 = $_;

					     }
				} 
                                               }
                                               

					}
					
		}			



$ssh->print("cmdx 1 RTRV-BTS_FA-CONF:BTS=$BTS_ID1~$BTS_ID1,FA_INDEX=2~2;");
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
								
			if ($_ =~m/FA_ID/) {
				$_ =~ s/FA_ID://g;
				$FA_ID_800 = $hash_FA_ID_800{$_};
						
						
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
					
					


# if ($secondbts ne ""){

# if (($IP ne "111.2.0.166") && ($IP ne "111.32.0.166") && ($IP ne "111.23.0.166") && ($IP ne "111.23.0.198") && ($IP ne "111.23.0.198") && ($IP ne "111.1.0.68") && ($IP ne "111.0.19.166") && ($IP ne "111.0.6.166") && ($IP ne "111.19.0.166") && ($IP ne "111.6.0.166") && ($IP ne "111.13.0.166") && ($IP ne "111.25.0.166") && ($IP ne "111.24.0.198") && ($IP ne "111.33.0.166") && ($IP ne "111.5.0.166") && ($IP ne "111.18.0.166") && ($IP ne "111.17.0.166") && ($IP ne "111.14.0.166") && ($IP ne "111.30.0.166") && ($IP ne "111.9.0.166") && ($IP ne "111.15.0.166") && ($IP ne "111.14.0.198") && ($IP ne "111.16.0.166") && ($IP ne "111.19.1.166") && ($IP ne "111.26.0.166") && ($IP ne "111.24.0.166")){

# $ssh->print("cmdx 1 RTRV-BTS_SUBSYSTEM-CONF:BTS=$secondbts;");
# }
# if (($IP eq "111.2.0.166") || ($IP eq "111.32.0.166") || ($IP eq "111.23.0.166") || ($IP eq "111.23.0.198") || ($IP eq "111.23.0.198") || ($IP eq "111.1.0.68") || ($IP eq "111.0.19.166") || ($IP eq "111.0.6.166") || ($IP eq "111.19.0.166") || ($IP eq "111.6.0.166")|| ($IP eq "111.13.0.166") || ($IP eq "111.25.0.166") || ($IP eq "111.24.0.198") || ($IP eq "111.33.0.166") || ($IP eq "111.5.0.166") || ($IP eq "111.18.0.166") || ($IP eq "111.17.0.166") || ($IP eq "111.14.0.166") || ($IP eq "111.30.0.166") || ($IP eq "111.9.0.166") || ($IP eq "111.15.0.166") || ($IP eq "111.14.0.198")  || ($IP eq "111.16.0.166") || ($IP eq "111.19.1.166") || ($IP eq "111.26.0.166") || ($IP eq "111.24.0.166")){

	
# $ssh->print("cmdx 1 RTRV-BTS_SUBSYSTEM-CONF:BTS=$secondbts~$secondbts,EXPORT_CSV=NO;");	


# }

# $ssh->waitfor(';');
# my $LOG = $ssh->waitfor('COMPLETED');	
# print $LOG;
# print FILE $LOG;



# my (@split_each_line,$split_each_line);

# @split_each_line = split (/\n/,$LOG);


# foreach $split_each_line (@split_each_line){
	
	
	# if ($split_each_line =~ m/\s+[FA DATA]/) {
		
		# @_ = split (/\n/,$split_each_line);
		# my (@fa, $fa);
		# foreach $_ (@_){

			# if ($_ =~ m/^\s+\d+/){
				
			    # @fa	= split (/\s+/,$_);
			    # if (($fa[5] eq "SERVICE_1X") && ($fa[1] ne "2")){
			    	# push (@FA_INDEX_BSM,$fa[1]);

						      # }	
				
					     # }
				
			
				# }


		
					       # }



					   # }








# $FA_INDEX_BSM = $FA_INDEX_BSM[0];




# $ssh->print("cmdx 1 RTRV-BTS_FA-CONF:BTS=$secondbts~$secondbts,FA_INDEX=$FA_INDEX_BSM~$FA_INDEX_BSM;");
# $ssh->waitfor(';');
# my $LOG = $ssh->waitfor('COMPLETED');	
# print $LOG;
# print FILE $LOG;

# my (@split_each_line,$split_each_line);

# @split_each_line = split (/\n/,$LOG);


# foreach $split_each_line (@split_each_line){


	# if ($split_each_line =~ m/\s+STATUS/) {
		# $split_each_line =~ s/\s+\:\s+/\:/g; 
		# $split_each_line =~ s/^\s+//g; 
		# @_ = split(/\s+/, $split_each_line);
		# foreach $_ (@_) {         
			# if ($split_each_line =~ m/\s+FA_ID/) {
				# $split_each_line =~ s/\s+\:\s+/\:/g; 
				# $split_each_line =~ s/^\s+//g; 
				# @_ = split(/\s+/, $split_each_line);
				# foreach $_ (@_) {
					# if ($_ =~m/FA_ID/) {
						# $_ =~ s/FA_ID://g;
						# $FA_ID2 = $_;
						
						
							  # }
						# } 
						          # } 
				# }
						# }  

	# if ($split_each_line =~ m/\s+OTA_SID/) {
		# $split_each_line =~ s/\s+\:\s+/\:/g; 
		# $split_each_line =~ s/^\s+//g; 
		# @_ = split(/\s+/, $split_each_line);
		# foreach $_ (@_) {
			# if ($_ =~m/OTA_SID/) {
				# $_ =~ s/OTA_SID://g;
				# $OTA_SID2 = $_;

					     # }
				# } 
                                               # }


	# if ($split_each_line =~ m/\s+OTA_NID/) {
		# $split_each_line =~ s/\s+\:\s+/\:/g; 
		# $split_each_line =~ s/^\s+//g; 
		# @_ = split(/\s+/, $split_each_line);
		# foreach $_ (@_) {
			# if ($_ =~m/OTA_NID/) {
				# $_ =~ s/OTA_NID://g;
				# $OTA_NID2 = $_;

					     # }
				# } 
                                               # }
                                               

					# }
					
		# }




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



if (($OTA_SID1 eq "") || ($OTA_SID1 eq "0")){
	
	$OTA_SID1 = $BSC_SID;
					}

if (($OTA_NID1 eq "") || ($OTA_NID1 eq "0")){
	
	$OTA_NID1 = $BSC_NID;
					}


if (($OTA_SID800 eq "") || ($OTA_SID800 eq "0")){
	
	$OTA_SID800 = $BSC_SID;
					}

if (($OTA_NID800 eq "") || ($OTA_NID800 eq "0")){
	
	$OTA_NID800 = $BSC_NID;
					}


# if (($OTA_SID2 eq "") || ($OTA_SID2 eq "0")){
	
	# $OTA_SID2 = $BSC_SID;
					# }

# if (($OTA_NID2 eq "") || ($OTA_NID2 eq "0")){
	
	# $OTA_NID2 = $BSC_NID;
					# }
					


if ($BTS_ID1 ne ""){
$ssh->print("cmdx 1 RTRV-BTS_SECTOR-CONF:BTS=$BTS_ID1~$BTS_ID1,SECTOR=0~0;");
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
				$Alpha_PN1 = $_[0];
								
				
			     }		

					      }
					   }		



$ssh->print("cmdx 1 RTRV-BTS_SECTOR-CONF:BTS=$BTS_ID1~$BTS_ID1,SECTOR=1~1;");
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
				$Beta_PN1 = $_[0];
								
				
			     }		

					      }
					   }
					   
					   
$ssh->print("cmdx 1 RTRV-BTS_SECTOR-CONF:BTS=$BTS_ID1~$BTS_ID1,SECTOR=2~2;");
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
				$Gamma_PN1 = $_[0];
								
				
			     }		

					      }
					   }
					   
					   
					   
					   
					   
}





# if ($secondbts ne ""){
# $ssh->print("cmdx 1 RTRV-BTS_SECTOR-CONF:BTS=$secondbts~$secondbts,SECTOR=0~0;");
# $ssh->waitfor(';');
# my $LOG = $ssh->waitfor('COMPLETED');	
# print $LOG;
# print FILE $LOG;



# my (@split_each_line,$split_each_line);

# @split_each_line = split (/\n/,$LOG);
                                     
# foreach $split_each_line (@split_each_line){
          
	# if ($split_each_line =~ m/\s+PILOT_OFFSET/) {
		# $split_each_line =~ s/\s+\:\s+/\:/g; 
		# $split_each_line =~ s/^\s+//g;  
		# @_ = split(/\s+/, $split_each_line);
		
			# if ($_[0] =~ m/PILOT_OFFSET/){
				# $_[0] =~ s/PILOT_OFFSET://g;
				# $Alpha_PN2 = $_[0];
								
				
			     # }		

					      # }
					   # }		



# $ssh->print("cmdx 1 RTRV-BTS_SECTOR-CONF:BTS=$secondbts~$secondbts,SECTOR=1~1;");
# $ssh->waitfor(';');
# my $LOG = $ssh->waitfor('COMPLETED');	
# print $LOG;
# print FILE $LOG;



# my (@split_each_line,$split_each_line);

# @split_each_line = split (/\n/,$LOG);
                                     
# foreach $split_each_line (@split_each_line){
          
	# if ($split_each_line =~ m/\s+PILOT_OFFSET/) {
		# $split_each_line =~ s/\s+\:\s+/\:/g; 
		# $split_each_line =~ s/^\s+//g;  
		# @_ = split(/\s+/, $split_each_line);
		
			# if ($_[0] =~ m/PILOT_OFFSET/){
				# $_[0] =~ s/PILOT_OFFSET://g;
				# $Beta_PN2 = $_[0];
								
				
			     # }		

					      # }
					   # }
					   
					   
# $ssh->print("cmdx 1 RTRV-BTS_SECTOR-CONF:BTS=$secondbts~$secondbts,SECTOR=2~2;");
# $ssh->waitfor(';');
# my $LOG = $ssh->waitfor('COMPLETED');	
# print $LOG;
# print FILE $LOG;



# my (@split_each_line,$split_each_line);

# @split_each_line = split (/\n/,$LOG);
                                     
# foreach $split_each_line (@split_each_line){
          
	# if ($split_each_line =~ m/\s+PILOT_OFFSET/) {
		# $split_each_line =~ s/\s+\:\s+/\:/g; 
		# $split_each_line =~ s/^\s+//g;  
		# @_ = split(/\s+/, $split_each_line);
		
			# if ($_[0] =~ m/PILOT_OFFSET/){
				# $_[0] =~ s/PILOT_OFFSET://g;
				# $Gamma_PN2 = $_[0];
								
				
			     # }		

					      # }
					   # }
# }





##########3 Reg zone

$ssh->print("cmdx 1 RTRV-BTS_PARA:BTS=$BTS_ID1~$BTS_ID1;");
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
	      }
	      
close FILE;

}


if ($opt eq "7"){

### GP
open (SCRIPTFILE, ">C:\\3G_4G_TOOL_Scripts\\ECSFB_FDD\\SCRIPT\\$Cascade\_$eNB_Name\_eCSFB_GP_$now.vbs");
	


print SCRIPTFILE "Sub Main\n";             
print SCRIPTFILE "xsh.Session.LogFilePath =\"C:\\3G_4G_TOOL_Scripts\\ECSFB_FDD\\SCRIPT_LOG\\$Cascade\_$eNB_Name\_eCSFB_GP_Log_$now.txt\"\n";  
print SCRIPTFILE "xsh.Session.StartLog\n";

print SCRIPTFILE "xsh.Screen.send \". /home/lsm/.profile\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-ECSFB:0,0,5,28,1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-ECSFB:1,0,5,28,1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-ECSFB:2,0,5,28,1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-ECSFB:15,0,5,28,1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-ECSFB:16,0,5,28,1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-ECSFB:17,0,5,28,1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-ECSFB:3,0,5,28,1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-ECSFB:4,0,5,28,1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-ECSFB:5,0,5,28,1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:0,,,1,1,,7,0,-1,0,0,0,0,0,0,0,6,1,-1,-1,-1,-1,-1,-1,-1,1,2,-1,-1,-1,-1,3,-1,-1,-1,1,1,1,1,1,0,58,-1,3,-1,-1,310,0,0,-1,-1,-1,-1,-1,-1,-1,-1,1,56,64,56,56,0,-1,3,0,,,,10,30;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:1,,,1,1,,7,0,-1,0,0,0,0,0,0,0,6,1,-1,-1,-1,-1,-1,-1,-1,1,2,-1,-1,-1,-1,3,-1,-1,-1,1,1,1,1,1,0,58,-1,3,-1,-1,310,0,0,-1,-1,-1,-1,-1,-1,-1,-1,1,56,64,56,56,0,-1,3,0,,,,10,30;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:2,,,1,1,,7,0,-1,0,0,0,0,0,0,0,6,1,-1,-1,-1,-1,-1,-1,-1,1,2,-1,-1,-1,-1,3,-1,-1,-1,1,1,1,1,1,0,58,-1,3,-1,-1,310,0,0,-1,-1,-1,-1,-1,-1,-1,-1,1,56,64,56,56,0,-1,3,0,,,,10,30;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:15,,,1,1,,7,0,-1,0,0,0,0,0,0,0,6,1,-1,-1,-1,-1,-1,-1,-1,1,2,-1,-1,-1,-1,3,-1,-1,-1,1,1,1,1,1,0,58,-1,3,-1,-1,310,0,0,-1,-1,-1,-1,-1,-1,-1,-1,1,56,64,56,56,0,-1,3,0,,,,10,30;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:16,,,1,1,,7,0,-1,0,0,0,0,0,0,0,6,1,-1,-1,-1,-1,-1,-1,-1,1,2,-1,-1,-1,-1,3,-1,-1,-1,1,1,1,1,1,0,58,-1,3,-1,-1,310,0,0,-1,-1,-1,-1,-1,-1,-1,-1,1,56,64,56,56,0,-1,3,0,,,,10,30;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:17,,,1,1,,7,0,-1,0,0,0,0,0,0,0,6,1,-1,-1,-1,-1,-1,-1,-1,1,2,-1,-1,-1,-1,3,-1,-1,-1,1,1,1,1,1,0,58,-1,3,-1,-1,310,0,0,-1,-1,-1,-1,-1,-1,-1,-1,1,56,64,56,56,0,-1,3,0,,,,10,30;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:3,,,1,1,,7,0,-1,0,0,0,0,0,0,0,6,1,-1,-1,-1,-1,-1,-1,-1,1,2,-1,-1,-1,-1,3,-1,-1,-1,1,1,1,1,1,0,58,-1,3,-1,-1,310,0,0,-1,-1,-1,-1,-1,-1,-1,-1,1,56,64,56,56,0,-1,3,0,,,,10,30;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:4,,,1,1,,7,0,-1,0,0,0,0,0,0,0,6,1,-1,-1,-1,-1,-1,-1,-1,1,2,-1,-1,-1,-1,3,-1,-1,-1,1,1,1,1,1,0,58,-1,3,-1,-1,310,0,0,-1,-1,-1,-1,-1,-1,-1,-1,1,56,64,56,56,0,-1,3,0,,,,10,30;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:5,,,1,1,,7,0,-1,0,0,0,0,0,0,0,6,1,-1,-1,-1,-1,-1,-1,-1,1,2,-1,-1,-1,-1,3,-1,-1,-1,1,1,1,1,1,0,58,-1,3,-1,-1,310,0,0,-1,-1,-1,-1,-1,-1,-1,-1,1,56,64,56,56,0,-1,3,0,,,,10,30;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PRD:0,StrongestCells,Active,1,240ms,2nd;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PRD:1,StrongestCells,Active,1,240ms,2nd;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PRD:2,StrongestCells,Active,1,240ms,2nd;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PRD:3,StrongestCells,Active,1,240ms,2nd;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PRD:4,StrongestCells,Active,1,240ms,2nd;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PRD:5,StrongestCells,Active,1,240ms,2nd;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PRD:15,StrongestCells,Active,1,240ms,2nd;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PRD:16,StrongestCells,Active,1,240ms,2nd;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PRD:17,StrongestCells,Active,1,240ms,2nd;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREG:0,,,,True,True,True,True,True,False,True,58,,7,ci_min1,True;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREG:1,,,,True,True,True,True,True,False,True,58,,7,ci_min1,True;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREG:2,,,,True,True,True,True,True,False,True,58,,7,ci_min1,True;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREG:15,,,,True,True,True,True,True,False,True,58,,7,ci_min1,True;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREG:16,,,,True,True,True,True,True,False,True,58,,7,ci_min1,True;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREG:17,,,,True,True,True,True,True,False,True,58,,7,ci_min1,True;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREG:3,,,,True,True,True,True,True,False,True,58,,7,ci_min1,True;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREG:4,,,,True,True,True,True,True,False,True,58,,7,ci_min1,True;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREG:5,,,,True,True,True,True,True,False,True,58,,7,ci_min1,True;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-FREQ:0,0,,,,,310,120,preferred_prefer;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-FREQ:1,0,,,,,310,120,preferred_prefer;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-FREQ:2,0,,,,,310,120,preferred_prefer;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-FREQ:3,0,,,,,310,120,preferred_prefer;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-FREQ:4,0,,,,,310,120,preferred_prefer;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-FREQ:5,0,,,,,310,120,preferred_prefer;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-FREQ:15,0,,,,,310,120,preferred_prefer;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-FREQ:16,0,,,,,310,120,preferred_prefer;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-FREQ:17,0,,,,,310,120,preferred_prefer;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-BCLS:0,EQUIP,bc1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";


print SCRIPTFILE "xsh.Session.StopLog\n";
print SCRIPTFILE "End Sub\n";

print "\n\nSCRIPT is now loaded to C:\\3G_4G_TOOL_Scripts\\ECSFB_FDD\\SCRIPT\n\n\n";

sleep 4;

}


if ($opt ne "7"){

if (($FA_ID1 eq "") && ($BTS_ID1 ne "") ){
	
	print "\n\n FA is not EQUIP for $BTS_ID1. PLEASE CHECK BSM GUI AND MAKE SURE 1900 is COMMERCIAL\n\n\n";

 }



if (($FA_ID1 ne "") && ($BTS_ID1 ne "")){
	
$FA_ID1 = $FA_ID1 * 25;	


if ($opt eq "1"){ #1900 only
open (SCRIPTFILE, ">C:\\3G_4G_TOOL_Scripts\\ECSFB_FDD\\SCRIPT\\$Cascade\_$eNBname\_eCSFB_NBR_SCRIPT_1900_ONLY_$now.vbs");

}
if ($opt eq "2"){# 2nd 1900 only

open (SCRIPTFILE, ">C:\\3G_4G_TOOL_Scripts\\ECSFB_FDD\\SCRIPT\\$Cascade\_$eNBname\_eCSFB_NBR_SCRIPT_2nd_1900_ONLY_$now.vbs");
}

if ($opt eq "3"){#  800 only

open (SCRIPTFILE, ">C:\\3G_4G_TOOL_Scripts\\ECSFB_FDD\\SCRIPT\\$Cascade\_$eNBname\_eCSFB_NBR_SCRIPT_800_ONLY_$now.vbs");
  
}

if ($opt eq "4"){ # 1900 and 2nd 1900
open (SCRIPTFILE, ">C:\\3G_4G_TOOL_Scripts\\ECSFB_FDD\\SCRIPT\\$Cascade\_$eNBname\_eCSFB_NBR_SCRIPT_1900_2nd1900_$now.vbs");
  
}

if ($opt eq "5"){ # 1900 and 800
open (SCRIPTFILE, ">C:\\3G_4G_TOOL_Scripts\\ECSFB_FDD\\SCRIPT\\$Cascade\_$eNBname\_eCSFB_NBR_SCRIPT_1900_800_$now.vbs");
}

if ($opt eq "6"){ # all
open (SCRIPTFILE, ">C:\\3G_4G_TOOL_Scripts\\ECSFB_FDD\\SCRIPT\\$Cascade\_$eNBname\_eCSFB_NBR_SCRIPT_1900_2nd1900_800_$now.vbs");

}


print SCRIPTFILE "Sub Main\n";             
if ($opt eq "1"){ #1900 only
print SCRIPTFILE "xsh.Session.LogFilePath =\"C:\\3G_4G_TOOL_Scripts\\ECSFB_FDD\\SCRIPT_LOG\\$Cascade\_$eNBname\_eCSFB_NBR_1900_ONLY_Log_$now.txt\"\n"; 

}
if ($opt eq "2"){# 2nd 1900 only

print SCRIPTFILE "xsh.Session.LogFilePath =\"C:\\3G_4G_TOOL_Scripts\\ECSFB_FDD\\SCRIPT_LOG\\$Cascade\_$eNBname\_eCSFB_NBR_2nd_1900_Log_$now.txt\"\n"; 
}

if ($opt eq "3"){#  800 only

print SCRIPTFILE "xsh.Session.LogFilePath =\"C:\\3G_4G_TOOL_Scripts\\ECSFB_FDD\\SCRIPT_LOG\\$Cascade\_$eNBname\_eCSFB_NBR_800_ONLY_Log_$now.txt\"\n"; 
  
}

if ($opt eq "4"){ # 1900 and 2nd 1900
print SCRIPTFILE "xsh.Session.LogFilePath =\"C:\\3G_4G_TOOL_Scripts\\ECSFB_FDD\\SCRIPT_LOG\\$Cascade\_$eNBname\_eCSFB_NBR_1900_2nd1900_ONLY_Log_$now.txt\"\n"; 
  
}

if ($opt eq "5"){ # 1900 and 800
print SCRIPTFILE "xsh.Session.LogFilePath =\"C:\\3G_4G_TOOL_Scripts\\ECSFB_FDD\\SCRIPT_LOG\\$Cascade\_$eNBname\_eCSFB_NBR_1900_800_Log_$now.txt\"\n"; 
}

if ($opt eq "6"){ # all
print SCRIPTFILE "xsh.Session.LogFilePath =\"C:\\3G_4G_TOOL_Scripts\\ECSFB_FDD\\SCRIPT_LOG\\$Cascade\_$eNBname\_eCSFB_NBR_1900_2nd1900_800_Log_$now.txt\"\n"; 

}
print SCRIPTFILE "xsh.Session.StartLog\n";

if ($opt eq "1"){ #1900 only

print SCRIPTFILE "xsh.Screen.send \". /home/lsm/.profile\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-ECSFB:0,0,5,28,1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";    

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-ECSFB:1,0,5,28,1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";    


print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-ECSFB:2,0,5,28,1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";    
}
if ($opt eq "2"){# 2nd 1900 only

print SCRIPTFILE "xsh.Screen.send \". /home/lsm/.profile\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-ECSFB:3,0,5,28,1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";    

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-ECSFB:4,0,5,28,1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";    


print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-ECSFB:5,0,5,28,1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";    
}

if ($opt eq "3"){#  800 only

print SCRIPTFILE "xsh.Screen.send \". /home/lsm/.profile\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-ECSFB:15,0,5,28,1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";    

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-ECSFB:16,0,5,28,1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";    


print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-ECSFB:17,0,5,28,1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";     
}

if ($opt eq "4"){ # 1900 and 2nd 1900

print SCRIPTFILE "xsh.Screen.send \". /home/lsm/.profile\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-ECSFB:0,0,5,28,1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";    

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-ECSFB:1,0,5,28,1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";    


print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-ECSFB:2,0,5,28,1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";  

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-ECSFB:3,0,5,28,1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";    

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-ECSFB:4,0,5,28,1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";    


print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-ECSFB:5,0,5,28,1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";    
}

if ($opt eq "5"){ # 1900 and 800

print SCRIPTFILE "xsh.Screen.send \". /home/lsm/.profile\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-ECSFB:0,0,5,28,1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";    

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-ECSFB:1,0,5,28,1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";    


print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-ECSFB:2,0,5,28,1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";  

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-ECSFB:15,0,5,28,1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";    

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-ECSFB:16,0,5,28,1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";    


print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-ECSFB:17,0,5,28,1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";    
}

if ($opt eq "6"){ # all

print SCRIPTFILE "xsh.Screen.send \". /home/lsm/.profile\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-ECSFB:0,0,5,28,1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";    

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-ECSFB:1,0,5,28,1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";    


print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-ECSFB:2,0,5,28,1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";  

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-ECSFB:3,0,5,28,1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";    

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-ECSFB:4,0,5,28,1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";    


print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-ECSFB:5,0,5,28,1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";  

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-ECSFB:15,0,5,28,1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";    

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-ECSFB:16,0,5,28,1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";    


print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-ECSFB:17,0,5,28,1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";    
}

if ($opt eq "1"){ #1900 only
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-FREQ:0,0,EQUIP,bc1,$FA_ID1,0,310,120,preferred_prefer;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";  

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-FREQ:1,0,EQUIP,bc1,$FA_ID1,0,310,120,preferred_prefer;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";


print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-FREQ:2,0,EQUIP,bc1,$FA_ID1,0,310,120,preferred_prefer;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
}

if ($opt eq "2"){# 2nd 1900 only
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-FREQ:3,0,EQUIP,bc1,$FA_ID1,0,310,120,preferred_prefer;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";  

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-FREQ:4,0,EQUIP,bc1,$FA_ID1,0,310,120,preferred_prefer;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";


print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-FREQ:5,0,EQUIP,bc1,$FA_ID1,0,310,120,preferred_prefer;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
}

if ($opt eq "3"){# 800 only
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-FREQ:15,0,EQUIP,bc10,$FA_ID_800,0,310,120,preferred_prefer;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";  

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-FREQ:16,0,EQUIP,bc10,$FA_ID_800,0,310,120,preferred_prefer;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";


print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-FREQ:17,0,EQUIP,bc10,$FA_ID_800,0,310,120,preferred_prefer;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
}

if ($opt eq "4"){ # 1900 and 2nd 1900

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-FREQ:0,0,EQUIP,bc1,$FA_ID1,0,310,120,preferred_prefer;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";  

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-FREQ:1,0,EQUIP,bc1,$FA_ID1,0,310,120,preferred_prefer;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";


print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-FREQ:2,0,EQUIP,bc1,$FA_ID1,0,310,120,preferred_prefer;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-FREQ:3,0,EQUIP,bc1,$FA_ID1,0,310,120,preferred_prefer;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";  

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-FREQ:4,0,EQUIP,bc1,$FA_ID1,0,310,120,preferred_prefer;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";


print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-FREQ:5,0,EQUIP,bc1,$FA_ID1,0,310,120,preferred_prefer;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";


}

if ($opt eq "5"){ # 1900 and 800

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-FREQ:0,0,EQUIP,bc1,$FA_ID1,0,310,120,preferred_prefer;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";  

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-FREQ:1,0,EQUIP,bc1,$FA_ID1,0,310,120,preferred_prefer;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";


print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-FREQ:2,0,EQUIP,bc1,$FA_ID1,0,310,120,preferred_prefer;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-FREQ:15,0,EQUIP,bc10,$FA_ID_800,0,310,120,preferred_prefer;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";  

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-FREQ:16,0,EQUIP,bc10,$FA_ID_800,0,310,120,preferred_prefer;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";


print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-FREQ:17,0,EQUIP,bc10,$FA_ID_800,0,310,120,preferred_prefer;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

}


if ($opt eq "6"){ # all


print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-FREQ:0,0,EQUIP,bc1,$FA_ID1,0,310,120,preferred_prefer;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";  

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-FREQ:1,0,EQUIP,bc1,$FA_ID1,0,310,120,preferred_prefer;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";


print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-FREQ:2,0,EQUIP,bc1,$FA_ID1,0,310,120,preferred_prefer;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-FREQ:3,0,EQUIP,bc1,$FA_ID1,0,310,120,preferred_prefer;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";  

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-FREQ:4,0,EQUIP,bc1,$FA_ID1,0,310,120,preferred_prefer;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";


print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-FREQ:5,0,EQUIP,bc1,$FA_ID1,0,310,120,preferred_prefer;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-FREQ:15,0,EQUIP,bc10,$FA_ID_800,0,310,120,preferred_prefer;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";  

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-FREQ:16,0,EQUIP,bc10,$FA_ID_800,0,310,120,preferred_prefer;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";


print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-FREQ:17,0,EQUIP,bc10,$FA_ID_800,0,310,120,preferred_prefer;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

}


if ($opt eq "1"){ #1900 only
if ($pkg eq "1") {	#start if $pkg eq 1
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=0,S_ID=$OTA_SID1,N_ID=$OTA_NID1,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone,LTM_OFF=$ltm,DAYLT=1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=1,S_ID=$OTA_SID1,N_ID=$OTA_NID1,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone,LTM_OFF=$ltm,DAYLT=1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=2,S_ID=$OTA_SID1,N_ID=$OTA_NID1,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone,LTM_OFF=$ltm,DAYLT=1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
                }	#end if $pkg eq 1
if ($pkg eq "2") {	#start if $pkg eq 2
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=0,S_ID=$OTA_SID1,N_ID=$OTA_NID1,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=1,S_ID=$OTA_SID1,N_ID=$OTA_NID1,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=2,S_ID=$OTA_SID1,N_ID=$OTA_NID1,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
                }	#end if $pkg eq 2				
}

if ($opt eq "2"){ #2nd 1900 only
if ($pkg eq "1") {	#start if $pkg eq 1
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=3,S_ID=$OTA_SID1,N_ID=$OTA_NID1,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone,LTM_OFF=$ltm,DAYLT=1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=4,S_ID=$OTA_SID1,N_ID=$OTA_NID1,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone,LTM_OFF=$ltm,DAYLT=1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=5,S_ID=$OTA_SID1,N_ID=$OTA_NID1,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone,LTM_OFF=$ltm,DAYLT=1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
                }	#end if $pkg eq 1
if ($pkg eq "2") {	#start if $pkg eq 2
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=3,S_ID=$OTA_SID1,N_ID=$OTA_NID1,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=4,S_ID=$OTA_SID1,N_ID=$OTA_NID1,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=5,S_ID=$OTA_SID1,N_ID=$OTA_NID1,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
                }	#end if $pkg eq 2	
}

if ($opt eq "3"){ #800 only
if ($pkg eq "1") {	#start if $pkg eq 1
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=15,S_ID=$OTA_SID800,N_ID=$OTA_NID800,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone,LTM_OFF=$ltm,DAYLT=1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=16,S_ID=$OTA_SID800,N_ID=$OTA_NID800,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone,LTM_OFF=$ltm,DAYLT=1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=17,S_ID=$OTA_SID800,N_ID=$OTA_NID800,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone,LTM_OFF=$ltm,DAYLT=1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
                }	#end if $pkg eq 1
if ($pkg eq "2") {	#start if $pkg eq 2
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=15,S_ID=$OTA_SID800,N_ID=$OTA_NID800,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=16,S_ID=$OTA_SID800,N_ID=$OTA_NID800,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=17,S_ID=$OTA_SID800,N_ID=$OTA_NID800,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
                }	#end if $pkg eq 2
}


if ($opt eq "4"){ # 1900 and 2nd 1900
if ($pkg eq "1") {	#start if $pkg eq 1
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=0,S_ID=$OTA_SID1,N_ID=$OTA_NID1,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone,LTM_OFF=$ltm,DAYLT=1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=1,S_ID=$OTA_SID1,N_ID=$OTA_NID1,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone,LTM_OFF=$ltm,DAYLT=1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=2,S_ID=$OTA_SID1,N_ID=$OTA_NID1,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone,LTM_OFF=$ltm,DAYLT=1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";


print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=3,S_ID=$OTA_SID1,N_ID=$OTA_NID1,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone,LTM_OFF=$ltm,DAYLT=1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=4,S_ID=$OTA_SID1,N_ID=$OTA_NID1,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone,LTM_OFF=$ltm,DAYLT=1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=5,S_ID=$OTA_SID1,N_ID=$OTA_NID1,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone,LTM_OFF=$ltm,DAYLT=1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
                }	#end if $pkg eq 1
if ($pkg eq "2") {	#start if $pkg eq 2
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=0,S_ID=$OTA_SID1,N_ID=$OTA_NID1,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=1,S_ID=$OTA_SID1,N_ID=$OTA_NID1,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=2,S_ID=$OTA_SID1,N_ID=$OTA_NID1,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";


print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=3,S_ID=$OTA_SID1,N_ID=$OTA_NID1,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=4,S_ID=$OTA_SID1,N_ID=$OTA_NID1,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=5,S_ID=$OTA_SID1,N_ID=$OTA_NID1,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
                 }	#end if $pkg eq 2
}

if ($opt eq "5"){ # 1900 and 800
if ($pkg eq "1") {	#start if $pkg eq 1
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=0,S_ID=$OTA_SID1,N_ID=$OTA_NID1,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone,LTM_OFF=$ltm,DAYLT=1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=1,S_ID=$OTA_SID1,N_ID=$OTA_NID1,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone,LTM_OFF=$ltm,DAYLT=1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=2,S_ID=$OTA_SID1,N_ID=$OTA_NID1,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone,LTM_OFF=$ltm,DAYLT=1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=15,S_ID=$OTA_SID800,N_ID=$OTA_NID800,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone,LTM_OFF=$ltm,DAYLT=1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=16,S_ID=$OTA_SID800,N_ID=$OTA_NID800,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone,LTM_OFF=$ltm,DAYLT=1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=17,S_ID=$OTA_SID800,N_ID=$OTA_NID800,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone,LTM_OFF=$ltm,DAYLT=1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
                }	#end if $pkg eq 1
if ($pkg eq "2") {	#start if $pkg eq 2
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=0,S_ID=$OTA_SID1,N_ID=$OTA_NID1,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=1,S_ID=$OTA_SID1,N_ID=$OTA_NID1,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=2,S_ID=$OTA_SID1,N_ID=$OTA_NID1,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=15,S_ID=$OTA_SID800,N_ID=$OTA_NID800,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=16,S_ID=$OTA_SID800,N_ID=$OTA_NID800,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=17,S_ID=$OTA_SID800,N_ID=$OTA_NID800,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
                 }	#end if $pkg eq 2
}


if ($opt eq "6"){ # all
if ($pkg eq "1") {	#start if $pkg eq 1
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=0,S_ID=$OTA_SID1,N_ID=$OTA_NID1,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone,LTM_OFF=$ltm,DAYLT=1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=1,S_ID=$OTA_SID1,N_ID=$OTA_NID1,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone,LTM_OFF=$ltm,DAYLT=1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=2,S_ID=$OTA_SID1,N_ID=$OTA_NID1,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone,LTM_OFF=$ltm,DAYLT=1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=3,S_ID=$OTA_SID1,N_ID=$OTA_NID1,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone,LTM_OFF=$ltm,DAYLT=1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=4,S_ID=$OTA_SID1,N_ID=$OTA_NID1,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone,LTM_OFF=$ltm,DAYLT=1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=5,S_ID=$OTA_SID1,N_ID=$OTA_NID1,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone,LTM_OFF=$ltm,DAYLT=1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=15,S_ID=$OTA_SID800,N_ID=$OTA_NID800,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone,LTM_OFF=$ltm,DAYLT=1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=16,S_ID=$OTA_SID800,N_ID=$OTA_NID800,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone,LTM_OFF=$ltm,DAYLT=1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=17,S_ID=$OTA_SID800,N_ID=$OTA_NID800,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone,LTM_OFF=$ltm,DAYLT=1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
                }	#end if $pkg eq 1
if ($pkg eq "2") {	#start if $pkg eq 2
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=0,S_ID=$OTA_SID1,N_ID=$OTA_NID1,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=1,S_ID=$OTA_SID1,N_ID=$OTA_NID1,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=2,S_ID=$OTA_SID1,N_ID=$OTA_NID1,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=3,S_ID=$OTA_SID1,N_ID=$OTA_NID1,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=4,S_ID=$OTA_SID1,N_ID=$OTA_NID1,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=5,S_ID=$OTA_SID1,N_ID=$OTA_NID1,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=15,S_ID=$OTA_SID800,N_ID=$OTA_NID800,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=16,S_ID=$OTA_SID800,N_ID=$OTA_NID800,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-MOBIL:CELL_NUM=17,S_ID=$OTA_SID800,N_ID=$OTA_NID800,MULT_SIDS=1,MULT_NIDS=1,REG_ZONE=$reg_zone;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
                 }	#end if $pkg eq 2
}


if ($opt eq "1"){ #1900 only
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREG:0,use,$OTA_SID1,$OTA_NID1,True,True,True,True,True,False,True,58,$reg_zone,7,ci_min1,True;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREG:1,use,$OTA_SID1,$OTA_NID1,True,True,True,True,True,False,True,58,$reg_zone,7,ci_min1,True;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREG:2,use,$OTA_SID1,$OTA_NID1,True,True,True,True,True,False,True,58,$reg_zone,7,ci_min1,True;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
}

if ($opt eq "2"){ # 2nd 1900 only
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREG:3,use,$OTA_SID1,$OTA_NID1,True,True,True,True,True,False,True,58,$reg_zone,7,ci_min1,True;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREG:4,use,$OTA_SID1,$OTA_NID1,True,True,True,True,True,False,True,58,$reg_zone,7,ci_min1,True;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREG:5,use,$OTA_SID1,$OTA_NID1,True,True,True,True,True,False,True,58,$reg_zone,7,ci_min1,True;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
}

if ($opt eq "3"){ # 800 only
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREG:15,use,$OTA_SID800,$OTA_NID800,True,True,True,True,True,False,True,58,$reg_zone,7,ci_min1,True;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREG:16,use,$OTA_SID800,$OTA_NID800,True,True,True,True,True,False,True,58,$reg_zone,7,ci_min1,True;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREG:17,use,$OTA_SID800,$OTA_NID800,True,True,True,True,True,False,True,58,$reg_zone,7,ci_min1,True;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
}

if ($opt eq "4"){ # 1900 and 2nd 1900

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREG:0,use,$OTA_SID1,$OTA_NID1,True,True,True,True,True,False,True,58,$reg_zone,7,ci_min1,True;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREG:1,use,$OTA_SID1,$OTA_NID1,True,True,True,True,True,False,True,58,$reg_zone,7,ci_min1,True;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREG:2,use,$OTA_SID1,$OTA_NID1,True,True,True,True,True,False,True,58,$reg_zone,7,ci_min1,True;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";


print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREG:3,use,$OTA_SID1,$OTA_NID1,True,True,True,True,True,False,True,58,$reg_zone,7,ci_min1,True;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREG:4,use,$OTA_SID1,$OTA_NID1,True,True,True,True,True,False,True,58,$reg_zone,7,ci_min1,True;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREG:5,use,$OTA_SID1,$OTA_NID1,True,True,True,True,True,False,True,58,$reg_zone,7,ci_min1,True;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

}


if ($opt eq "5"){ # 1900 and 800

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREG:0,use,$OTA_SID1,$OTA_NID1,True,True,True,True,True,False,True,58,$reg_zone,7,ci_min1,True;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREG:1,use,$OTA_SID1,$OTA_NID1,True,True,True,True,True,False,True,58,$reg_zone,7,ci_min1,True;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREG:2,use,$OTA_SID1,$OTA_NID1,True,True,True,True,True,False,True,58,$reg_zone,7,ci_min1,True;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREG:15,use,$OTA_SID800,$OTA_NID800,True,True,True,True,True,False,True,58,$reg_zone,7,ci_min1,True;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREG:16,use,$OTA_SID800,$OTA_NID800,True,True,True,True,True,False,True,58,$reg_zone,7,ci_min1,True;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREG:17,use,$OTA_SID800,$OTA_NID800,True,True,True,True,True,False,True,58,$reg_zone,7,ci_min1,True;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

}

if ($opt eq "6"){ # all

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREG:0,use,$OTA_SID1,$OTA_NID1,True,True,True,True,True,False,True,58,$reg_zone,7,ci_min1,True;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREG:1,use,$OTA_SID1,$OTA_NID1,True,True,True,True,True,False,True,58,$reg_zone,7,ci_min1,True;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREG:2,use,$OTA_SID1,$OTA_NID1,True,True,True,True,True,False,True,58,$reg_zone,7,ci_min1,True;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREG:3,use,$OTA_SID1,$OTA_NID1,True,True,True,True,True,False,True,58,$reg_zone,7,ci_min1,True;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREG:4,use,$OTA_SID1,$OTA_NID1,True,True,True,True,True,False,True,58,$reg_zone,7,ci_min1,True;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREG:5,use,$OTA_SID1,$OTA_NID1,True,True,True,True,True,False,True,58,$reg_zone,7,ci_min1,True;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREG:15,use,$OTA_SID800,$OTA_NID800,True,True,True,True,True,False,True,58,$reg_zone,7,ci_min1,True;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREG:16,use,$OTA_SID800,$OTA_NID800,True,True,True,True,True,False,True,58,$reg_zone,7,ci_min1,True;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREG:17,use,$OTA_SID800,$OTA_NID800,True,True,True,True,True,False,True,58,$reg_zone,7,ci_min1,True;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

}






if ($opt eq "1"){ #1900 only


print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREGSECTOR:0,$BSC_SID,$BSC_NID,$BTS_ID1,1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";


print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREGSECTOR:1,$BSC_SID,$BSC_NID,$BTS_ID1,2;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";


print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREGSECTOR:2,$BSC_SID,$BSC_NID,$BTS_ID1,3;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

}

if ($opt eq "2"){ # 2nd 1900 only


print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREGSECTOR:3,$BSC_SID,$BSC_NID,$BTS_ID1,1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";


print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREGSECTOR:4,$BSC_SID,$BSC_NID,$BTS_ID1,2;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";


print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREGSECTOR:5,$BSC_SID,$BSC_NID,$BTS_ID1,3;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

}

if ($opt eq "3"){ # 800 only

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREGSECTOR:15,$BSC_SID,$BSC_NID,$BTS_ID1,1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";


print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREGSECTOR:16,$BSC_SID,$BSC_NID,$BTS_ID1,2;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";


print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREGSECTOR:17,$BSC_SID,$BSC_NID,$BTS_ID1,3;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";


}

if ($opt eq "4"){ # 1900 and 2nd 1900

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREGSECTOR:0,$BSC_SID,$BSC_NID,$BTS_ID1,1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";


print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREGSECTOR:1,$BSC_SID,$BSC_NID,$BTS_ID1,2;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";


print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREGSECTOR:2,$BSC_SID,$BSC_NID,$BTS_ID1,3;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREGSECTOR:3,$BSC_SID,$BSC_NID,$BTS_ID1,1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";


print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREGSECTOR:4,$BSC_SID,$BSC_NID,$BTS_ID1,2;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";


print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREGSECTOR:5,$BSC_SID,$BSC_NID,$BTS_ID1,3;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";



}


if ($opt eq "5"){ # 1900 and 800

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREGSECTOR:0,$BSC_SID,$BSC_NID,$BTS_ID1,1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";


print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREGSECTOR:1,$BSC_SID,$BSC_NID,$BTS_ID1,2;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";


print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREGSECTOR:2,$BSC_SID,$BSC_NID,$BTS_ID1,3;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREGSECTOR:15,$BSC_SID,$BSC_NID,$BTS_ID1,1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREGSECTOR:16,$BSC_SID,$BSC_NID,$BTS_ID1,2;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";


print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREGSECTOR:17,$BSC_SID,$BSC_NID,$BTS_ID1,3;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

}

if ($opt eq "6"){ # all

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREGSECTOR:0,$BSC_SID,$BSC_NID,$BTS_ID1,1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";


print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREGSECTOR:1,$BSC_SID,$BSC_NID,$BTS_ID1,2;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";


print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREGSECTOR:2,$BSC_SID,$BSC_NID,$BTS_ID1,3;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";


print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREGSECTOR:3,$BSC_SID,$BSC_NID,$BTS_ID1,1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";


print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREGSECTOR:4,$BSC_SID,$BSC_NID,$BTS_ID1,2;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";


print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREGSECTOR:5,$BSC_SID,$BSC_NID,$BTS_ID1,3;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREGSECTOR:15,$BSC_SID,$BSC_NID,$BTS_ID1,1;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
                                            
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREGSECTOR:16,$BSC_SID,$BSC_NID,$BTS_ID1,2;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";


print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-C1XRTT-PREGSECTOR:17,$BSC_SID,$BSC_NID,$BTS_ID1,3;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";



}



if ($opt eq "1"){ #1900 only

#added 11/1/16 cw
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-LTIME-INF:DAYLIGHT_SAVE_TIME_INCLUDED=True,LOCAL_TIME_OFF=$hash_localtimes{$IP};\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";

# end added 11/1/16 cw

if ($Alpha_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:0,0,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,1,bc1,$FA_ID1,$Alpha_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Beta_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:0,1,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,2,bc1,$FA_ID1,$Beta_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Gamma_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:0,2,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,3,bc1,$FA_ID1,$Gamma_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Alpha_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:1,0,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,1,bc1,$FA_ID1,$Alpha_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Beta_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:1,1,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,2,bc1,$FA_ID1,$Beta_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Gamma_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:1,2,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,3,bc1,$FA_ID1,$Gamma_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Alpha_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:2,0,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,1,bc1,$FA_ID1,$Alpha_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Beta_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:2,1,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,2,bc1,$FA_ID1,$Beta_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Gamma_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:2,2,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,3,bc1,$FA_ID1,$Gamma_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
}

if ($opt eq "2"){ # 2nd 1900 only
if ($Alpha_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:3,0,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,1,bc1,$FA_ID1,$Alpha_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Beta_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:3,1,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,2,bc1,$FA_ID1,$Beta_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Gamma_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:3,2,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,3,bc1,$FA_ID1,$Gamma_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Alpha_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:4,0,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,1,bc1,$FA_ID1,$Alpha_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Beta_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:4,1,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,2,bc1,$FA_ID1,$Beta_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Gamma_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:4,2,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,3,bc1,$FA_ID1,$Gamma_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Alpha_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:5,0,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,1,bc1,$FA_ID1,$Alpha_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Beta_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:5,1,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,2,bc1,$FA_ID1,$Beta_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Gamma_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:5,2,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,3,bc1,$FA_ID1,$Gamma_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
}

if ($opt eq "3"){ # 800 only
if ($Alpha_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:15,0,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,1,bc10,$FA_ID_800,$Alpha_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Beta_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:15,1,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,2,bc10,$FA_ID_800,$Beta_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Gamma_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:15,2,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,3,bc10,$FA_ID_800,$Gamma_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Alpha_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:16,0,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,1,bc10,$FA_ID_800,$Alpha_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Beta_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:16,1,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,2,bc10,$FA_ID_800,$Beta_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Gamma_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:16,2,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,3,bc10,$FA_ID_800,$Gamma_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Alpha_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:17,0,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,1,bc10,$FA_ID_800,$Alpha_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Beta_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:17,1,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,2,bc10,$FA_ID_800,$Beta_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Gamma_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:17,2,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,3,bc10,$FA_ID_800,$Gamma_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}

}

if ($opt eq "4"){ # 1900 and 2nd 1900


#added 11/1/16 cw
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-LTIME-INF:DAYLIGHT_SAVE_TIME_INCLUDED=True,LOCAL_TIME_OFF=$hash_localtimes{$IP};\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";

# end added 11/1/16 cw

if ($Alpha_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:0,0,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,1,bc1,$FA_ID1,$Alpha_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Beta_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:0,1,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,2,bc1,$FA_ID1,$Beta_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Gamma_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:0,2,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,3,bc1,$FA_ID1,$Gamma_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Alpha_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:1,0,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,1,bc1,$FA_ID1,$Alpha_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Beta_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:1,1,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,2,bc1,$FA_ID1,$Beta_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Gamma_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:1,2,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,3,bc1,$FA_ID1,$Gamma_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Alpha_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:2,0,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,1,bc1,$FA_ID1,$Alpha_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Beta_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:2,1,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,2,bc1,$FA_ID1,$Beta_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Gamma_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:2,2,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,3,bc1,$FA_ID1,$Gamma_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}



if ($Alpha_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:3,0,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,1,bc1,$FA_ID1,$Alpha_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Beta_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:3,1,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,2,bc1,$FA_ID1,$Beta_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Gamma_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:3,2,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,3,bc1,$FA_ID1,$Gamma_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Alpha_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:4,0,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,1,bc1,$FA_ID1,$Alpha_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Beta_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:4,1,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,2,bc1,$FA_ID1,$Beta_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Gamma_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:4,2,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,3,bc1,$FA_ID1,$Gamma_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Alpha_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:5,0,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,1,bc1,$FA_ID1,$Alpha_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Beta_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:5,1,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,2,bc1,$FA_ID1,$Beta_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Gamma_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:5,2,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,3,bc1,$FA_ID1,$Gamma_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}


}


if ($opt eq "5"){ # 1900 and 800

if ($Alpha_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:0,0,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,1,bc1,$FA_ID1,$Alpha_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Beta_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:0,1,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,2,bc1,$FA_ID1,$Beta_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Gamma_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:0,2,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,3,bc1,$FA_ID1,$Gamma_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Alpha_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:1,0,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,1,bc1,$FA_ID1,$Alpha_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Beta_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:1,1,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,2,bc1,$FA_ID1,$Beta_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Gamma_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:1,2,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,3,bc1,$FA_ID1,$Gamma_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Alpha_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:2,0,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,1,bc1,$FA_ID1,$Alpha_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Beta_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:2,1,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,2,bc1,$FA_ID1,$Beta_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Gamma_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:2,2,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,3,bc1,$FA_ID1,$Gamma_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}





if ($Alpha_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:15,0,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,1,bc10,$FA_ID_800,$Alpha_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Beta_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:15,1,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,2,bc10,$FA_ID_800,$Beta_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Gamma_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:15,2,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,3,bc10,$FA_ID_800,$Gamma_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Alpha_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:16,0,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,1,bc10,$FA_ID_800,$Alpha_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Beta_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:16,1,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,2,bc10,$FA_ID_800,$Beta_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Gamma_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:16,2,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,3,bc10,$FA_ID_800,$Gamma_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Alpha_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:17,0,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,1,bc10,$FA_ID_800,$Alpha_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Beta_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:17,1,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,2,bc10,$FA_ID_800,$Beta_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Gamma_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:17,2,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,3,bc10,$FA_ID_800,$Gamma_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}


}

if ($opt eq "6"){ # all

#added 11/1/16 cw
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CHG-LTIME-INF:DAYLIGHT_SAVE_TIME_INCLUDED=True,LOCAL_TIME_OFF=$hash_localtimes{$IP};\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

# end added 11/1/16 cw

if ($Alpha_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:0,0,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,1,bc1,$FA_ID1,$Alpha_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Beta_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:0,1,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,2,bc1,$FA_ID1,$Beta_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Gamma_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:0,2,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,3,bc1,$FA_ID1,$Gamma_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Alpha_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:1,0,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,1,bc1,$FA_ID1,$Alpha_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Beta_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:1,1,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,2,bc1,$FA_ID1,$Beta_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Gamma_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:1,2,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,3,bc1,$FA_ID1,$Gamma_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Alpha_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:2,0,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,1,bc1,$FA_ID1,$Alpha_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Beta_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:2,1,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,2,bc1,$FA_ID1,$Beta_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Gamma_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:2,2,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,3,bc1,$FA_ID1,$Gamma_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}

if ($Alpha_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:3,0,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,1,bc1,$FA_ID1,$Alpha_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Beta_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:3,1,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,2,bc1,$FA_ID1,$Beta_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Gamma_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:3,2,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,3,bc1,$FA_ID1,$Gamma_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Alpha_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:4,0,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,1,bc1,$FA_ID1,$Alpha_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Beta_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:4,1,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,2,bc1,$FA_ID1,$Beta_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
}
if ($Gamma_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:4,2,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,3,bc1,$FA_ID1,$Gamma_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Alpha_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:5,0,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,1,bc1,$FA_ID1,$Alpha_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Beta_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:5,1,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,2,bc1,$FA_ID1,$Beta_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Gamma_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:5,2,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,3,bc1,$FA_ID1,$Gamma_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}



if ($Alpha_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:15,0,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,1,bc10,$FA_ID_800,$Alpha_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Beta_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:15,1,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,2,bc10,$FA_ID_800,$Beta_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Gamma_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:15,2,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,3,bc10,$FA_ID_800,$Gamma_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";
}
if ($Alpha_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:16,0,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,1,bc10,$FA_ID_800,$Alpha_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Beta_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:16,1,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,2,bc10,$FA_ID_800,$Beta_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Gamma_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:16,2,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,3,bc10,$FA_ID_800,$Gamma_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Alpha_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:17,0,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,1,bc10,$FA_ID_800,$Alpha_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Beta_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:17,1,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,2,bc10,$FA_ID_800,$Beta_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}
if ($Gamma_PN1 ne ""){
print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 CRTE-NBR-C1XRTT:17,2,EQUIP,$BSC_SID,$BSC_NID,$BTS_ID1,3,bc10,$FA_ID_800,$Gamma_PN1,True,True,CreatedByUserCommand;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 5000\n";
}


}








print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 RTRV-C1XRTT-ECSFB;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 RTRV-C1XRTT-FREQ;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";


print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 RTRV-C1XRTT-MOBIL;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";


print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 RTRV-C1XRTT-OVL;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";


print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 RTRV-C1XRTT-PREG;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";


print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 RTRV-C1XRTT-PREGSECTOR;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";


print SCRIPTFILE "xsh.Screen.send \"cmd_sys enb_$ENB1 RTRV-NBR-C1XRTT;\"\n";
print SCRIPTFILE "xsh.Screen.Send VbCr\n";
print SCRIPTFILE "xsh.Session.Sleep 3000\n";

print SCRIPTFILE "xsh.Session.StopLog\n";
print SCRIPTFILE "End Sub\n";


close SCRIPTFILE;

print "\n\nSCRIPT is now loaded to C:\\3G_4G_TOOL_Scripts\\ECSFB_FDD\\SCRIPT\n\n\n";
sleep 4;

}

}

}
