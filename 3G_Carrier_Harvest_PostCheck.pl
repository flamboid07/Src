#!/usr/bin/perl
use FindBin qw($Bin);
use lib "$Bin/../lib";
use POSIX;
use Net::SSH2;

use Control::CLI;

#$Bin from FindBin will give path to directory from where alarm script was invoked

$Bin =~ s/\//\\/g;

use Data::Dumper;

##############
# Start TIME #
##############
($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) =localtime(time);

my $day = strftime "%a", localtime;	#day
$day =~ s/\s+//g;
my $month = strftime "%b", localtime;	#month
$month =~ s/\s+//g;
my $month_num = ($mon + 1);		#month number
my $year = strftime "%Y", localtime;	#year
$year =~ s/\s+//g;

my $hour = strftime "%H", localtime;	#time hour
$hour =~ s/\s+//g;
my $minute = strftime "%M", localtime;	#time minute
$minute =~ s/\s+//g;
my $second = strftime "%S", localtime;	#time seconds
$second =~ s/\s+//g;

#print ("$day $month $month_num $mday $year $hour:$minute:$second\n");


##############
#  End TIME  #
##############

print ("#########################################\n");
print ("# RAN COMMISSIONING 3G Carrier Harvest PostCheck TOOL #\n");
print ("#########################################\n");

##################################
# START VALUES FROM SASHA'S TOOL #
##################################
my (%hash_cascade_bts_input, $hash_cascade_bts_input);
%hash_cascade_bts_input = ();


my (@input, $input);
if ($ARGV[0] =~ m/\~/) {
@input = split(/~/,$ARGV[0]);
print ($ARGV[0]);
print ("\n");
foreach $input (@input) {
if ($input) {
@_ = split(/,/,$input);
$hash_cascade_bts_input{$_[0]}{$_[1]}{BSM_IP} = "$_[3]";
$hash_cascade_bts_input{$_[0]}{$_[1]}{BSM} = "$_[2]";
$hash_cascade_bts_input{$_[0]}{$_[1]}{USER} = "$_[4]";
$hash_cascade_bts_input{$_[0]}{$_[1]}{PASS} = "$_[5]";

            }
                        }

                       }

else {
print ($ARGV[0]);
print ("\n");
@_ = split(/,/,$ARGV[0]);
$hash_cascade_bts_input{$_[0]}{$_[1]}{BSM_IP} = "$_[3]";
$hash_cascade_bts_input{$_[0]}{$_[1]}{BSM} = "$_[2]";
$hash_cascade_bts_input{$_[0]}{$_[1]}{USER} = "$_[4]";
$hash_cascade_bts_input{$_[0]}{$_[1]}{PASS} = "$_[5]";
     }




##################################
#  END VALUES FROM SASHA'S TOOL  #
##################################

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

#print Dumper(\%hash_cascade_bts_input);

my $completed = "COMPLETED";


foreach my $cascade (sort keys %hash_cascade_bts_input) {	

print ("$Cascade\n");			#start foreach cascade
foreach my $bts_id (sort {$a<=>$b} keys %{$hash_cascade_bts_input{$cascade}}) {		#start foreach bts
print ("$bts_id\n");
open (FILE, ">$Bin\\DATA_COLLECTED\\$cascade\_$bts_id\_3G_Carrier_Harvest_PostCheck_LOGS\_$month_num\_$mday\_$year\_$hour\_$minute\_$second\.txt");

my $ip = "$hash_cascade_bts_input{$cascade}{$bts_id}{BSM_IP}";
my $bsm = "$hash_cascade_bts_input{$cascade}{$bts_id}{BSM}";

my ($bsm_user, $bsm_pass);

my $bsm_ip_address = "$ip";

if ($bsm_ip_address eq "111.15.0.198") {		#DETROIT_BSM2
$bsm_user = "cdmaone";
$bsm_pass = "cdmaone";
                                       }

else {
$bsm_user = "cdmaone";
$bsm_pass = "cdmaone";
     }

my $ssh = new Control::CLI(Use => 'SSH',
                        Prompt => ']',
			Errmode=> 'return',
                        Timeout=> '240');
						
print ("Cascasde  - $cascade\n");
print ("BTS_ID  - $bts_id\n");
print ("BSM IP - $ip\n");
print ("BSM User - $bsm_user\n");
print ("BSM Pass - $bsm_pass\n");

my $connect = $ssh->connect(Host => $bsm_ip_address,
          Username => $bsm_user,
          Password => $bsm_pass,
        PrivateKey => '.ssh/id_dsa');


if ($connect) {		#start if connected

print ("Connected to BSM\n");

$ssh->read(Blocking => 1);




$ssh->print("cd");
my $cd = $ssh->waitfor('/home1/cdmaone]');

#####################################
#   START RTRV-ALM-INH:SUBSYSTEM=BTS   #
#####################################
$ssh->print("cmdx 1 RTRV-ALM-INH:SUBSYSTEM=BTS,BTS=$bts_id~$bts_id:3");
$ssh->waitfor(';');
my $RTRV_ALM_INH = $ssh->waitfor('COMPLETED');
$RTRV_ALM_INH =~ s/cmdx 1\s+//g;
print ("$RTRV_ALM_INH,$completed\n\n");
print (FILE "$RTRV_ALM_INH,$completed\n\n");
#####################################
#    END RTRV-ALM-INH:SUBSYSTEM=BTS    #
#####################################

#####################################
#   START RTRV-BTS_RRH_TXATT-DATA   #
#####################################
$ssh->print("cmdx 1 RTRV-BTS_RRH_TXATT-DATA:BTS=$bts_id~$bts_id,BCP=0~1,PORT=0~5,CASCADE=0~0,FA_INDEX=0~14"); #3
$ssh->waitfor(';');
my $RTRV_BTS_RRH_TXATT_DATA = $ssh->waitfor('COMPLETED');
$RTRV_BTS_RRH_TXATT_DATA =~ s/cmdx 1\s+//g;
print ("$RTRV_BTS_RRH_TXATT_DATA,$completed\n\n");
print (FILE "$RTRV_BTS_RRH_TXATT_DATA,$completed\n\n");
#####################################
#    END RTRV-BTS_RRH_TXATT-DATA    #
#####################################

#####################################
#   START RTRV-ALM-LIST:SUBSYSTEM=BTS   #
#####################################
$ssh->print("cmdx 1 RTRV-ALM-LIST:SUBSYSTEM=BTS,BTS=$bts_id~$bts_id,OUTPUT=DETAIL"); #3
$ssh->waitfor(';');
my $RTRV_ALM_LIST = $ssh->waitfor('COMPLETED');
$RTRV_ALM_LIST =~ s/cmdx 1\s+//g;
print ("$RTRV_ALM_LIST,$completed\n\n");
print (FILE "$RTRV_ALM_LIST,$completed\n\n");
#####################################
#    END RTRV-ALM-LIST:SUBSYSTEM=BTS    #
#####################################

#####################################
#   START RTRV-BTS_FA-CONF:BTS   #
#####################################
$ssh->print("cmdx 1 RTRV-BTS_FA-CONF:BTS=$bts_id~$bts_id,FA_INDEX=0~14"); #3
$ssh->waitfor(';');
my $RTRV_BTS_FA_CONF = $ssh->waitfor('COMPLETED');
$RTRV_BTS_FA_CONF =~ s/cmdx 1\s+//g;
print ("$RTRV_BTS_FA_CONF,$completed\n\n");
print (FILE "$RTRV_BTS_FA_CONF,$completed\n\n");
#####################################
#    END RTRV-BTS_FA-CONF:BTS    #
#####################################

#####################################
#   START RTRV-SUBC-STS:BTS   #
#####################################
$ssh->print("cmdx 1 RTRV-SUBC-STS:BTS=$bts_id:10");
$ssh->waitfor(';');
my $RTRV_SUBC_STS = $ssh->waitfor('COMPLETED');
$RTRV_SUBC_STS =~ s/cmdx 1\s+//g;
print ("$RTRV_SUBC_STS,$completed\n\n");
print (FILE "$RTRV_SUBC_STS,$completed\n\n");
#####################################
#    END RTRV-SUBC-STS:BTS    #
#####################################

#####################################
#   START RTRV-SERVFA-STS:BTS   #
#####################################
$ssh->print("cmdx 1 RTRV-SERVFA-STS:BTS=$bts_id:3");
$ssh->waitfor(';');
my $RTRV_SERVFA_STS = $ssh->waitfor('COMPLETED');
$RTRV_SERVFA_STS =~ s/cmdx 1\s+//g;
print ("$RTRV_SERVFA_STS,$completed\n\n");
print (FILE "$RTRV_SERVFA_STS,$completed\n\n");
#####################################
#    END RTRV-SERVFA-STS:BTS   #
#####################################

#####################################
#   START RTRV-CALL-CNT:SUBSYSTEM=BTS   #
#####################################
$ssh->print("cmdx 1 RTRV-CALL-CNT:SUBSYSTEM=BTS,BTS=$bts_id:3");
$ssh->waitfor(';');
my $RTRV_CALL_CNT = $ssh->waitfor('COMPLETED');
$RTRV_CALL_CNT =~ s/cmdx 1\s+//g;
print ("$RTRV_CALL_CNT,$completed\n\n");
print (FILE "$RTRV_CALL_CNT,$completed\n\n");
#####################################
#    END RTRV-CALL-CNT:SUBSYSTEM=BTS   #
#####################################

$ssh->print('exit');

$ssh->disconnect;
              }		#end if connected


else {
print ("ERROR:  COULD NOT CONNECT TO $bsm $cascade $bts_id\n");
print (FILE "ERROR:  COULD NOT CONNECT TO $bsm $cascade $bts_id\n");
     }

close (FILE);

                                                                              }		#end foreach bts
                                                        }				#end foreach cascade


