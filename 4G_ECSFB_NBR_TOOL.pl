#!/usr/bin/perl

use Spreadsheet::WriteExcel;

use XML::Simple;
use XML::LibXML;

use XML::LibXML::SAX;

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

print ("#####################\n");
print ("# 4G ECSFB NBR TOOL #\n");
print ("#####################\n");





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



##############################################
# START ADD REPORTS DIRECTORY IF NOT PRESENT #
##############################################
if (! -d "$Bin\\REPORTS") {
`mkdir $Bin\\REPORTS\\`;
                          }
##############################################
#  END ADD REPORTS DIRECTORY IF NOT PRESENT  #
##############################################


my $completed = "COMPLETED";

my (%hash_NFREQ_1X, $hash_NFREQ_1X);
%hash_NFREQ_1X = ();

my (%hash_NFREQ_DO, $hash_NFREQ_DO);
%hash_NFREQ_DO = ();


my (%NBRdump, $NBRdump);
%NBRdump = ();

my (%hash_BAND_NBR, $hash_BAND_NBR);
%hash_BAND_NBR = ();

my (%hash_ENODEB_INFO, $hash_ENODEB_INFO);
%hash_ENODEB_INFO = ();

my (%CELL_INFO, $CELL_INFO);
%CELL_INFO = ();

my ($CELL_ID_TYPE);

my $colon = ";";

my (%hash_CELL_LAST_INDEX, $hash_CELL_LAST_INDEX);
%hash_CELL_LAST_INDEX = ();

my (%hash_NBR_INFO_LSM, $hash_NBR_INFO_LSM);
%hash_NBR_INFO_LSM = ();

my (%hash_NBR_LSM, $hash_NBR_LSM);
%hash_NBR_LSM = ();

my (%hash_NBR_INCORRECT, $hash_NBR_INCORRECT);
%hash_NBR_INCORRECT = ();


my (%hash_NBR_INCORRECT_BSM, $hash_NBR_INCORRECT_BSM);
%hash_NBR_INCORRECT_BSM = ();

##################################
# START VALUES FROM SASHA'S TOOL #
##################################
my (%hash_cascade_bts_input, $hash_cascade_bts_input);
%hash_cascade_bts_input = ();


my (@input, $input);
if ($ARGV[0] =~ m/\~/) {
@input = split(/~/,$ARGV[0]);
foreach $input (@input) {
if ($input) {
@_ = split(/,/,$input);
$hash_cascade_bts_input{$_[0]}{$_[1]}{BSM_IP} = "$_[3]";
$hash_cascade_bts_input{$_[0]}{$_[1]}{BSM} = "$_[2]";
$hash_cascade_bts_input{$_[0]}{$_[1]}{ENODEB_ID} = "$_[4]";
$hash_cascade_bts_input{$_[0]}{$_[1]}{LSM} = "$_[5]";
$hash_cascade_bts_input{$_[0]}{$_[1]}{LSM_IP} = "$_[6]";
$hash_cascade_bts_input{$_[0]}{$_[1]}{LSM_USER} = "$_[7]";
$hash_cascade_bts_input{$_[0]}{$_[1]}{LSM_PASS} = "$_[8]";
$hash_cascade_bts_input{$_[0]}{$_[1]}{OPTION} = "$_[9]";
            }
                        }

                       }

else {
@_ = split(/,/,$ARGV[0]);
my $cascade = $_[0];
my $bts_id = $_[1];
$hash_cascade_bts_input{$_[0]}{$_[1]}{BSM_IP} = "$_[3]";
$hash_cascade_bts_input{$_[0]}{$_[1]}{BSM} = "$_[2]";
$hash_cascade_bts_input{$_[0]}{$_[1]}{ENODEB_ID} = "$_[4]";
$hash_cascade_bts_input{$_[0]}{$_[1]}{LSM} = "$_[5]";
$hash_cascade_bts_input{$_[0]}{$_[1]}{LSM_IP} = "$_[6]";
$hash_cascade_bts_input{$_[0]}{$_[1]}{LSM_USER} = "$_[7]";
$hash_cascade_bts_input{$_[0]}{$_[1]}{LSM_PASS} = "$_[8]";
$hash_cascade_bts_input{$_[0]}{$_[1]}{OPTION} = "$_[9]";
#my $OPTION = $_[9];
     }




##################################
#  END VALUES FROM SASHA'S TOOL  #
##################################


#print Dumper(\%hash_cascade_bts_input);


foreach my $cascade (sort keys %hash_cascade_bts_input) {				#start foreach cascade
foreach my $bts_id (sort {$a<=>$b} keys %{$hash_cascade_bts_input{$cascade}}) {		#start foreach bts
open (FILE, ">$Bin\\DATA_COLLECTED\\$cascade\_4G_ECSFB_NBR_LOGS\_$month_num\_$mday\_$year\_$hour\_$minute\_$second\.txt");

my $ip = "$hash_cascade_bts_input{$cascade}{$bts_id}{BSM_IP}";
my $bsm = "$hash_cascade_bts_input{$cascade}{$bts_id}{BSM}";


my $bsm_ip_address = "$ip";


my ($bsm_user, $bsm_pass);

###############################
# START GET BSM PASSWORD INFO #
###############################

if ($bsm_ip_address eq "111.4.0.166") {			#ARLINGTON_HEIGHTS_BSM1
$bsm_user = "cdmaone";
$bsm_pass = "cdmaone";
                                      }


if ($bsm_ip_address eq "111.4.0.198") {			#ARLINGTON_HEIGHTS_BSM2
$bsm_user = "cdmaone";
$bsm_pass = "cdmaone";
                                      }


if ($bsm_ip_address eq "111.2.0.166") {			#AURORA_BSM
$bsm_user = "cdmaone";
$bsm_pass = "cdmaone";
                                      }


if (($bsm_ip_address eq "111.10.0.166") || ($bsm_ip_address eq "111.10.0.150")) {		#BAYAMON_BSM1
$bsm_user = "cdmaone";
$bsm_pass = "cdmaone";
                                                                                }


if ($bsm_ip_address eq "111.3.0.166") {			#BRIDGEVIEW_BSM1
$bsm_user = "cdmaone";
$bsm_pass = "cdmaone";
                                      }


if (($bsm_ip_address eq "111.3.0.182") || ($bsm_ip_address eq "111.3.0.198")) {			#BRIDGEVIEW_BSM2
$bsm_user = "cdmaone";
$bsm_pass = "cdmaone";
                                                                              }


if (($bsm_ip_address eq "111.9.0.166") || ($bsm_ip_address eq "111.9.0.150")) {			#BRISBANE_BSM1
$bsm_user = "cdmaone";
$bsm_pass = "cdmaone";
                                                                              }


if ($bsm_ip_address eq "111.22.0.166") {		#CHEEKTOWAGA_BSM1
$bsm_user = "cdmaone";
$bsm_pass = "cdmaone";
                                       }


if ($bsm_ip_address eq "111.23.0.166") {		#CLEVELAND_BSM1
$bsm_user = "cdmaone";
$bsm_pass = "cdmaone";
                                       }


if ($bsm_ip_address eq "111.1.0.68") {			#DAVENPORT_BSM
$bsm_user = "cdmaone";
$bsm_pass = "cdmaone";
                                     }


if ($bsm_ip_address eq "111.15.0.166") {		#DETROIT_BSM1
$bsm_user = "cdmaone";
$bsm_pass = "cdmaone";
                                       }



if ($bsm_ip_address eq "111.15.0.198") {		#DETROIT_BSM2
$bsm_user = "cdmaone";
$bsm_pass = "cdmaone";
                                       }


if ($bsm_ip_address eq "111.24.0.166") {		#ENGLEWOOD_BSM1
$bsm_user = "cdmaone";
$bsm_pass = "cdmaone";
                                       }


if ($bsm_ip_address eq "111.25.0.166") {		#ERIE_BSM1
$bsm_user = "cdmaone";
$bsm_pass = "cdmaone";
                                       }


if ($bsm_ip_address eq "111.21.0.166") {		#FRESNO_BSM1
$bsm_user = "cdmaone";
$bsm_pass = "cdmaone";
                                       }


if ($bsm_ip_address eq "111.5.0.166") {			#FT_WAYNE_BSM1
$bsm_user = "cdmaone";
$bsm_pass = "cdmaone";
                                      }


if ($bsm_ip_address eq "111.18.0.166") {		#INDIANAPOLIS_BSM1
$bsm_user = "cdmaone";
$bsm_pass = "cdmaone";
                                       }


if ($bsm_ip_address eq "111.17.0.166") {		#KENTWOOD_BSM1
$bsm_user = "cdmaone";
$bsm_pass = "cdmaone";
                                       }


if ($bsm_ip_address eq "111.16.0.166") {		#LANSING_BSM1
$bsm_user = "cdmaone";
$bsm_pass = "cdmaone";
                                       }

if ($bsm_ip_address eq "111.16.0.198") {		#LANSING_BSM2
$bsm_user = "cdmaone";
$bsm_pass = "cdmaone";
                                       }



if ($bsm_ip_address eq "111.19.0.166") {		#MINNEAPOLIS_BSM1
$bsm_user = "cdmaone";
$bsm_pass = "cdmaone";
                                       }


if ($bsm_ip_address eq "111.26.0.166") {		#NEW_BERLIN_BSM1
$bsm_user = "cdmaone";
$bsm_pass = "cdmaone";
                                       }


if (($bsm_ip_address eq "111.6.0.166") || ($bsm_ip_address eq "111.6.0.150")) {			#OAKLAND_BSM1
$bsm_user = "cdmaone";
$bsm_pass = "cdmaone";
                                                                              }


if ($bsm_ip_address eq "111.27.0.166") {		#OMAHA_BSM1
$bsm_user = "cdmaone";
$bsm_pass = "cdmaone";
                                       }


if ($bsm_ip_address eq "111.33.0.166") {		#PITTSBURGH_BSM1
$bsm_user = "cdmaone";
$bsm_pass = "cdmaone";
                                       }


if ($bsm_ip_address eq "111.14.0.166") {		#REDMOND_BSM1
$bsm_user = "cdmaone";
$bsm_pass = "cdmaone";
                                       }


if ($bsm_ip_address eq "111.28.0.166") {		#RENO_BSM1
$bsm_user = "cdmaone";
$bsm_pass = "cdmaone";
                                       }


if ($bsm_ip_address eq "111.29.0.166") {		#ROCHESTER_BSM1
$bsm_user = "cdmaone";
$bsm_pass = "cdmaone";
                                       }


if ($bsm_ip_address eq "111.11.0.166") {		#SACRAMENTO_BSM1
$bsm_user = "cdmaone";
$bsm_pass = "cdmaone";
                                       }


if ($bsm_ip_address eq "111.31.0.166") {		#SALT_LAKE_CITY_BSM1
$bsm_user = "cdmaone";
$bsm_pass = "cdmaone";
                                       }


if (($bsm_ip_address eq "111.8.0.166") || ($bsm_ip_address eq "111.8.0.150")) {			#SANTA_CLARA_BSM1
$bsm_user = "cdmaone";
$bsm_pass = "cdmaone";
                                                                              }

if (($bsm_ip_address eq "111.7.0.166") || ($bsm_ip_address eq "111.7.0.150")) {			#SANTA_ROSA_BSM1
$bsm_user = "cdmaone";
$bsm_pass = "cdmaone";
                                                                              }


if ($bsm_ip_address eq "111.30.0.166") {		#SHARONVILLE_BSM1
$bsm_user = "cdmaone";
$bsm_pass = "cdmaone";
                                       }


if ($bsm_ip_address eq "111.12.0.166") {		#SPOKANE_BSM1

$bsm_user = "cdmaone";
$bsm_pass = "cdmaone";
                                       }

if ($bsm_ip_address eq "111.20.0.166") {		#ST_CLOUD_BSM1
$bsm_user = "cdmaone";
$bsm_pass = "cdmaone";
                                       }


if ($bsm_ip_address eq "111.13.0.166") {		#TIGARD_BSM1

$bsm_user = "cdmaone";
$bsm_pass = "cdmaone";
                                       }

if ($bsm_ip_address eq "111.34.0.166") {		#URBANDALE_BSM1
$bsm_user = "cdmaone";
$bsm_pass = "cdmaone";
                                       }


if ($bsm_ip_address eq "111.32.0.166") {		#WORTHINGTON_BSM1
$bsm_user = "cdmaone";
$bsm_pass = "cdmaone";
                                       }


if ((!$bsm_user) || (!$bsm_pass)) {
$bsm_user = "cdmaone";
$bsm_pass = "cdmaone";
                                  }
###############################
#  END GET BSM PASSWORD INFO  #
###############################


############################
# START SSH TO GATHER DATA #
############################

my ($error_cascade_bts);

my $ssh = new Control::CLI(Use => 'SSH',
                        Prompt => ']',
			Errmode=> 'return',
                        Timeout=> '240');

my $connect = $ssh->connect(Host => $bsm_ip_address,
          Username => $bsm_user,
          Password => $bsm_pass,
        PrivateKey => '.ssh/id_dsa');


if ($connect) {			#START IF BSM CONNECTED
$ssh->read(Blocking => 1);


$ssh->print("/usr/local/mysql/bin/mysql -ucdmaone -pt0days emsdb");
my $sql_start = $ssh->waitfor('mysql>');
#print ("$sql_start\n\n");

##############################
# START FIND CASCADE OF BTS  #
##############################
$ssh->print("select BTS,SystemIp,SystemName from TB_EQUIP_INFO where BTS != '-1' and BTS = $bts_id and SystemName != 'RRH';");
my $sql_TB_EQUIP_INFO = $ssh->waitfor('mysql>');


my (@array_TB_EQUIP_INFO_each_line, $array_TB_EQUIP_INFO_each_line);
@array_TB_EQUIP_INFO_each_line = split(/\n/, $sql_TB_EQUIP_INFO);

foreach $array_TB_EQUIP_INFO_each_line (@array_TB_EQUIP_INFO_each_line) {
$array_TB_EQUIP_INFO_each_line =~ s/^\|\s+//g;
$array_TB_EQUIP_INFO_each_line =~ s/\s+\|\s+/\t/g;
if (($array_TB_EQUIP_INFO_each_line =~ m/^\d+/) && ($array_TB_EQUIP_INFO_each_line !~ m/row in set/)) {
@_ = split(/\t/, $array_TB_EQUIP_INFO_each_line);
$hash_bts_cascade{$_[0]} = "$_[2]";
#print ("$_[0] $_[2]\n");
                                                                                                      }
                                                                        }
my $cascade_info = $hash_bts_cascade{$bts_id};
$cascade_info = uc($cascade_info);


if (!$cascade) {
print ("\nERROR: CASCADE:$cascade BTS:$bts_id SITE DOWN - BTS NOT GROWN.\n");
print (FILE "\nERROR: CASCADE:$cascade BTS:$bts_id SITE DOWN - BTS NOT GROWN.\n");
$error_cascade_bts = "YES";
               }

if ($cascade ne "$cascade_info") {
print ("\nERROR: CASCADE:$cascade BTS:$bts_id -  CASCADE INPUTED DO NOT MATCH WHAT IS ON BSM FOR BTS.\n");
print (FILE "\nERROR: CASCADE:$cascade BTS:$bts_id -  CASCADE INPUTED DO NOT MATCH WHAT IS ON BSM FOR BTS.\n");
$error_cascade_bts = "YES";
                                 }
##############################
#  END FIND CASCADE OF BTS   #
##############################

$ssh->print("select BTS,AlmCode,AlmDesc,Location,ClearTime from TB_ALM_LATEST where AlmCode = 3236 and BTS = $bts_id and ClearTime is NULL;");
my $sql_TB_ALM_LATEST = $ssh->waitfor('mysql>');


if (($sql_TB_ALM_LATEST =~ m/COMMUNICATION FAIL/) && ($sql_TB_ALM_LATEST =~ m/BCP_0/)) {
print ("\nERROR: CASCADE:$cascade BTS:$bts_id -  COMMUNICATION FAIL (SITE DOWN)\n");
print (FILE "\nERROR: CASCADE:$cascade BTS:$bts_id -  COMMUNICATION FAIL (SITE DOWN)\n");
$error_cascade_bts = "YES";

                                                                                       }


$ssh->print("exit");
my $sql_exit = $ssh->waitfor('/home1/cdmaone]');
#print ("$sql_exit\n\n");



if (!$error_cascade_bts) {			#START IF !$error_cascade_bts
##########################
# START RTRV-BTS_FA-CONF #
##########################
$ssh->print("cmdx 1 RTRV-BTS_FA-CONF:BTS=$bts_id,FA_INDEX=0~14;");
$ssh->waitfor(';');
my $RTRV_BTS_FA_CONF = $ssh->waitfor('COMPLETED');
print ("$RTRV_BTS_FA_CONF$completed\n\n");
print (FILE "$RTRV_BTS_FA_CONF$completed\n\n");

if ($RTRV_BTS_FA_CONF =~ m/RESULT\s+\=\s+NOK/) {
$ssh->print('exit');

$ssh->disconnect;

print ("\n\n");

print ("#################################################\n");
print ("#     ERROR: RTRV-BTS_FA-CONF RESULT = NOK      #\n");
print ("#         TOOL WILL EXIT IN 10 SECONDS          #\n");
print ("#################################################\n");
sleep 10;
exit;

                                               }



my (@each_line, $each_line);

my ($FA_INDEX, $FA_ID, $BAND_CLASS_INDEX, $SERV_TYPE);
@each_line = split(/\n/, $RTRV_BTS_FA_CONF);


foreach $each_line (@each_line) {		#start foreach line

if ($each_line =~ m/LOCATION/) {		#start if match LOCATION
$each_line =~ s/\s+//g;
$each_line =~ s/\)//g;

@_ = split(/,/, $each_line);

foreach $_ (@_) {
if ($_ =~ m/FA_INDEX/) {
$FA_INDEX = $_;
$FA_INDEX =~ s/FA_INDEX\=//g;
                       }
                }
                               }		#end if match LOCATION


if ($each_line =~ m/FA_ID/) {			#start if match FA_ID
$each_line =~ s/\s+\:\s+/\:/g;
$each_line =~ s/\s+/ /g;
$each_line =~ s/^\s+//g;
@_ = split(/\s+/, $each_line);
foreach $_ (@_) {
if ($_ =~ m/FA_ID/) {
$FA_ID = $_;
$FA_ID =~ s/FA_ID\://g;
                      }
                }

                            }			#end if match FA_ID


if ($each_line =~ m/BAND_CLASS_INDEX/) {			#start if match BAND_CLASS_INDEX
$each_line =~ s/\s+\:\s+/\:/g;
$each_line =~ s/\s+/ /g;
$each_line =~ s/^\s+//g;
@_ = split(/\s+/, $each_line);
foreach $_ (@_) {
if ($_ =~ m/BAND_CLASS_INDEX/) {
$BAND_CLASS_INDEX = $_;
$BAND_CLASS_INDEX =~ s/BAND_CLASS_INDEX\://g;

                               }
                }

                                       }			#end if match BAND_CLASS_INDEX


if ($each_line =~ m/SERV_TYPE/) {			#start if match SERV_TYPE
$each_line =~ s/\s+\:\s+/\:/g;
$each_line =~ s/\s+/ /g;
$each_line =~ s/^\s+//g;
@_ = split(/\s+/, $each_line);
foreach $_ (@_) {
if ($_ =~ m/SERV_TYPE/) {
$SERV_TYPE = $_;
$SERV_TYPE =~ s/SERV_TYPE\://g;

if (($BAND_CLASS_INDEX eq "PCS") && (!$hash_NFREQ_1X{$cascade}{$bts_id}) && ($SERV_TYPE eq "SERVICE_1X")) {
$FA_ID = ($FA_ID * 25);
$hash_NFREQ_1X{$cascade}{$bts_id}{0} = "476";		#800 Freq
$hash_NFREQ_1X{$cascade}{$bts_id}{1} = "$FA_ID";	#1900 Freq

                                                                                                          }

if (($BAND_CLASS_INDEX eq "PCS") && (!$hash_NFREQ_DOA{$cascade}{$bts_id}) && ($SERV_TYPE eq "SERVICE_DOA")) {
$FA_ID = ($FA_ID * 25);
$hash_NFREQ_DOA{$cascade}{$bts_id}{1} = "$FA_ID";	#1900 Freq

                                                                                                            }

                        }
                }

                                }			#end if match SERV_TYPE

#place here
                                }		#end foreach line




##########################
#  END RTRV-BTS_FA-CONF  #
##########################



                         }			#END IF !$error_cascade_bts


if (!$hash_NFREQ_1X{$cascade}{$bts_id}) {
$ssh->print('exit');

$ssh->disconnect;

print ("\n\n");

print ("#################################################\n");
print ("#          ERROR: 3G 1X ARFCN MISSING           #\n");
print ("#         TOOL WILL EXIT IN 10 SECONDS          #\n");
print ("#################################################\n");
sleep 10;
exit;

                                       }



#print Dumper(\%hash_NFREQ_1X);
#print Dumper(\%hash_NFREQ_DOA);

my ($nbr_file_name);

$ssh->print("cmdx 1 RTRV-BTS_NEIGHBOR-PARA:BTS=$bts_id~$bts_id,BAND_CLASS=ALL,SECTOR=0~2,EXPORT_CSV=YES;");
$ssh->waitfor(';');
my $RTRV_BTS_NEIGHBOR_PARA = $ssh->waitfor('COMPLETED');
print ("$RTRV_BTS_NEIGHBOR_PARA$completed\n\n");
print (FILE "$RTRV_BTS_NEIGHBOR_PARA$completed\n\n");

@each_line_nbr_log = split(/\n/, $RTRV_BTS_NEIGHBOR_PARA);


foreach $each_line_nbr_log (@each_line_nbr_log) {		#start foreach line
$each_line_nbr_log =~ s/^\s+//g;

if ($each_line_nbr_log =~ m/INFORM\s+=\s+/) {
$each_line_nbr_log =~ s/INFORM\s+=\s+//g;
$each_line_nbr_log =~ s/\s+//g;
$nbr_file_name = $each_line_nbr_log;
print ("$nbr_file_name\n");
      
                                            }

                                                }		#end foreach line

if ($RTRV_BTS_NEIGHBOR_PARA =~ m/RESULT\s+\=\s+NOK/) {
$ssh->print('exit');

$ssh->disconnect;

print ("\n\n");

print ("#######################################################\n");
print ("#     ERROR: RTRV-BTS_NEIGHBOR-PARA RESULT = NOK      #\n");
print ("#         TOOL WILL EXIT IN 10 SECONDS                #\n");
print ("#######################################################\n");
sleep 10;
exit;

                                                      }

#$ssh->print("cat /home1/cdmaone/RAN_COMM/eCSFB_NBRs/NBRLIST_BTS\_$bts_id_for_file\_BANDALL_1X.csv;");
$ssh->print("cat $nbr_file_name;");
$ssh->waitfor(';');
my $nbr_1x = $ssh->waitfor('/home1/cdmaone]');
$nbr_1x =~ s/\[cdmaone.*//g;
$nbr_1x =~ s/,\s+/,/g;

print ("$nbr_1x\n");

if ($nbr_1x !~ m/\d+,\d+,\d+,\d+,\d+/) {
$ssh->print('exit');

$ssh->disconnect;

print ("\n\n");

print ("#################################################\n");
print ("#          ERROR: 3G NBRs ARE MISSING           #\n");
print ("#         TOOL WILL EXIT IN 10 SECONDS          #\n");
print ("#################################################\n");
sleep 10;
exit;

                                       }


#print ("$nbr_1x\n");
#print ("\n3G NBRs:\n$nbr_1x\n");
print (FILE "\n3G NBRs:\n$nbr_1x\n");

my (@array_each_line_nbr_1x, $array_each_line_nbr_1x);

@array_each_line_nbr_1x = split(/\n+/, $nbr_1x);
my (%hash_1x_TITLE, $hash_1x_TITLE);
%hash_1x_TITLE = ();

my ($relidx);

foreach $array_each_line_nbr_1x (@array_each_line_nbr_1x) {
$array_each_line_nbr_1x =~ s/^\/\///g;

@_ = split(/,/, $array_each_line_nbr_1x);

if ($array_each_line_nbr_1x =~ m/^BSC/) {

my $num_title = 0;
foreach $_ (@_) {
$_ =~ s/\s+//g;
$hash_1x_TITLE{$_} = "$num_title";
$num_title++;
                }
                                        }


if ($array_each_line_nbr_1x =~ m/^\d+/) {
my $BTS_value = $hash_1x_TITLE{BTS};
my $BTS = "$_[$BTS_value]";
$BTS =~ s/\s+//g;


my $SECTOR_value = $hash_1x_TITLE{SECTOR};
my $SECTOR = "$_[$SECTOR_value]";
$SECTOR =~ s/\s+//g;

my $BANDCLASS_value = $hash_1x_TITLE{BANDCLASS};
my $BANDCLASS = "$_[$BANDCLASS_value]";
$BANDCLASS =~ s/\s+//g;

my $NFREQ = $hash_NFREQ_1X{$cascade}{$bts_id}{$BANDCLASS};
$NFREQ =~ s/\s+//g;

my $NSID_value = $hash_1x_TITLE{NSID};
my $NSID = "$_[$NSID_value]";
$NSID =~ s/\s+//g;

my $NNID_value = $hash_1x_TITLE{NNID};
my $NNID = "$_[$NNID_value]";
$NNID =~ s/\s+//g;

my $NBTS_value = $hash_1x_TITLE{NBTS};
my $NBTS = "$_[$NBTS_value]";
$NBTS =~ s/\s+//g;

my $NSECTOR_value = $hash_1x_TITLE{NSECTOR};
my $NSECTOR = "$_[$NSECTOR_value]";
$NSECTOR =~ s/\s+//g;



my $NBAND_value = $hash_1x_TITLE{NBAND};
my $NBAND = "$_[$NBAND_value]";
$NBAND =~ s/\s+//g;

$NBAND = $BANDCLASS;

#my $NFREQ_value = $hash_1x_TITLE{NFREQ};
#my $NFREQ = "$_[$NFREQ_value]";
#$NFREQ =~ s/\s+//g;




my $NPN_value = $hash_1x_TITLE{NPN};
my $NPN = "$_[$NPN_value]";
$NPN =~ s/\s+//g;

if (!$NBRdump{$cascade}{$bts_id}{$SECTOR}{$BANDCLASS}) {
$relidx = 0;
                                                       }


if ($NNID) {
my $ENODEB_ID = $hash_cascade_bts_input{$cascade}{$BTS}{ENODEB_ID};
#print ("$cascade $BTS $ENODEB_ID $SECTOR $BANDCLASS $NSID $NNID $NBTS $NSECTOR $NBAND $NFREQ $NPN\n");

$NBRdump{$cascade}{$bts_id}{$SECTOR}{$BANDCLASS}{$relidx}{SID} = $NSID;
$NBRdump{$cascade}{$bts_id}{$SECTOR}{$BANDCLASS}{$relidx}{NID} = $NNID;


$NBRdump{$cascade}{$bts_id}{$SECTOR}{$BANDCLASS}{$relidx}{BTS} = $NBTS;
$NBRdump{$cascade}{$bts_id}{$SECTOR}{$BANDCLASS}{$relidx}{SECTOR} = $NSECTOR;

$NBRdump{$cascade}{$bts_id}{$SECTOR}{$BANDCLASS}{$relidx}{BAND} = $NBAND;
$NBRdump{$cascade}{$bts_id}{$SECTOR}{$BANDCLASS}{$relidx}{FREQ} = $NFREQ;
$NBRdump{$cascade}{$bts_id}{$SECTOR}{$BANDCLASS}{$relidx}{PN} = $NPN;


if ($NBRdump{$cascade}{$bts_id}{$SECTOR}{$BANDCLASS}) {
$relidx++;
                                                      }

           }

                                        }

                                                          }




$ssh->print('exit');

$ssh->disconnect;
              }			#START IF BSM CONNECTED

############################
#  END SSH TO GATHER DATA  #
############################




#################
# START SSH LSM #
#################




my $lsm_ip_address = $hash_cascade_bts_input{$cascade}{$bts_id}{LSM_IP};
my $lsm_user = $hash_cascade_bts_input{$cascade}{$bts_id}{LSM_USER};
my $lsm_pass = $hash_cascade_bts_input{$cascade}{$bts_id}{LSM_PASS};
my $enode_num = $hash_cascade_bts_input{$cascade}{$bts_id}{ENODEB_ID};



my ($eNB_NAME, $eNB_ID, $CELL_1, $VERSION);

%hash_NBR_INFO_LSM = ();


my $ssh_lsm = new Control::CLI(Use => 'SSH',
                        Prompt => ']',
			Errmode=> 'return',
                        Timeout=> '60');


my $connect_lsm = $ssh_lsm->connect(Host => $lsm_ip_address,
          Username => $lsm_user,
          Password => $lsm_pass,
        PrivateKey => '.ssh/id_dsa');


if ($connect_lsm) {		#start if connect lsm
$ssh_lsm->read(Blocking => 1);

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

if (($info =~ m/SPRINT_SSLR_4.0/) ||  ($info =~ m/SPRINT_SSLR_5.0/))
{
$database_name = "mc_db";
                                 }
else {
$database_name = "lsm_db";
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


##########################
#  START  RTRV_CELL_STS  #
##########################
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNB_NAME RTRV-CELL-STS");
$ssh_lsm->waitfor("]");
$ssh_lsm->waitfor("]");
my $RTRV_CELL_STS_4G = $ssh_lsm->waitfor(';');
$RTRV_CELL_STS_4G = "$RTRV_CELL_STS_4G$colon";
print ("$RTRV_CELL_STS_4G\n");
print (FILE "$RTRV_CELL_STS_4G\n");
##########################
#   END  RTRV_CELL_STS   #
##########################



############################
#  START  RTRV_NBR_C1XRTT  #
############################
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNB_NAME RTRV-NBR-C1XRTT");
$ssh_lsm->waitfor("]");
$ssh_lsm->waitfor("]");
my $RTRV_NBR_C1XRTT_4G = $ssh_lsm->waitfor(';');
$RTRV_NBR_C1XRTT_4G = "$RTRV_NBR_C1XRTT_4G$colon";
print ("$RTRV_NBR_C1XRTT_4G\n");
print (FILE "$RTRV_NBR_C1XRTT_4G\n");



my (@array_each_line_NBR_C1XRTT, $array_each_line_NBR_C1XRTT);
@array_each_line_NBR_C1XRTT = split(/\n/,$RTRV_NBR_C1XRTT_4G);




foreach $array_each_line_NBR_C1XRTT (@array_each_line_NBR_C1XRTT) {	#start foreach line of log
$array_each_line_NBR_C1XRTT =~ s/^\s+//g;
if ($array_each_line_NBR_C1XRTT =~ m/^CELL_NUM/) {
@_ = split(/\s+/, $array_each_line_NBR_C1XRTT);
my $num_title = 0;
foreach $_ (@_) {
$hash_NBR_C1XRTT_TITLE{$_} = "$num_title";
$num_title++;
                }
                                                        }

if ($array_each_line_NBR_C1XRTT =~ m/^\d+/) { 
if ($hash_NBR_C1XRTT_TITLE{'CELL_ID'}) {
$CELL_ID_TYPE = "CELL_ID";
                                       }

if ($hash_NBR_C1XRTT_TITLE{'TARGET_CELL_ID'}) {
$CELL_ID_TYPE = "TARGET_CELL_ID";
                                              }

@_ = split(/\s+/, $array_each_line_NBR_C1XRTT);
my $CELL_NUM_value = $hash_NBR_C1XRTT_TITLE{CELL_NUM};
my $RELATION_IDX_value = $hash_NBR_C1XRTT_TITLE{RELATION_IDX};
my $STATUS_value = $hash_NBR_C1XRTT_TITLE{STATUS};
my $MARKET_ID_value = $hash_NBR_C1XRTT_TITLE{MARKET_ID};
my $SWITCH_NUM_value = $hash_NBR_C1XRTT_TITLE{SWITCH_NUM};
my $CELL_ID_value = $hash_NBR_C1XRTT_TITLE{$CELL_ID_TYPE};
my $SECTOR_NUM_value = $hash_NBR_C1XRTT_TITLE{SECTOR_NUM};
my $BAND_CLASS_value = $hash_NBR_C1XRTT_TITLE{BAND_CLASS};
my $ARFCN_value = $hash_NBR_C1XRTT_TITLE{ARFCN};
my $PN_OFFSET_value = $hash_NBR_C1XRTT_TITLE{PN_OFFSET};



my $CELL_NUM = "$_[$CELL_NUM_value]";
$CELL_NUM =~ s/\s+//g;

my $RELATION_IDX = "$_[$RELATION_IDX_value]";
$RELATION_IDX =~ s/\s+//g;

my $STATUS = "$_[$STATUS_value]";
$STATUS =~ s/\s+//g;

my $MARKET_ID = "$_[$MARKET_ID_value]";
$MARKET_ID =~ s/\s+//g;

my $SWITCH_NUM = "$_[$SWITCH_NUM_value]";
$SWITCH_NUM =~ s/\s+//g;

my $CELL_ID = "$_[$CELL_ID_value]";
$CELL_ID =~ s/\s+//g;

my $SECTOR_NUM = "$_[$SECTOR_NUM_value]";
$SECTOR_NUM =~ s/\s+//g;

my $BAND_CLASS = "$_[$BAND_CLASS_value]";
$BAND_CLASS =~ s/\s+//g;

my $ARFCN = "$_[$ARFCN_value]";
$ARFCN =~ s/\s+//g;

my $PN_OFFSET = "$_[$PN_OFFSET_value]";
$PN_OFFSET =~ s/\s+//g;

#HASH TO GET RELATION INDEX FOR NEXT NBR
$hash_CELL_LAST_INDEX{$cascade}{$bts_id}{$CELL_NUM} = ($RELATION_IDX+1);

#HASH TO VERIFY IF NBR IS ALREADY PRESENT
if ($STATUS eq "EQUIP") {
$hash_NBR_INFO_LSM{$cascade}{$bts_id}{$CELL_NUM}{$MARKET_ID}{$SWITCH_NUM}{$CELL_ID}{$SECTOR_NUM}{BAND_CLASS} = $BAND_CLASS;
$hash_NBR_INFO_LSM{$cascade}{$bts_id}{$CELL_NUM}{$MARKET_ID}{$SWITCH_NUM}{$CELL_ID}{$SECTOR_NUM}{ARFCN} = $ARFCN;
$hash_NBR_INFO_LSM{$cascade}{$bts_id}{$CELL_NUM}{$MARKET_ID}{$SWITCH_NUM}{$CELL_ID}{$SECTOR_NUM}{PN_OFFSET} = $PN_OFFSET;

$hash_NBR_LSM{$cascade}{$bts_id}{$CELL_NUM}{$CELL_ID}{$SECTOR_NUM}{MARKET_ID} = $MARKET_ID;
$hash_NBR_LSM{$cascade}{$bts_id}{$CELL_NUM}{$CELL_ID}{$SECTOR_NUM}{SWITCH_NUM} = $SWITCH_NUM;
$hash_NBR_LSM{$cascade}{$bts_id}{$CELL_NUM}{$CELL_ID}{$SECTOR_NUM}{BAND_CLASS} = $BAND_CLASS;
$hash_NBR_LSM{$cascade}{$bts_id}{$CELL_NUM}{$CELL_ID}{$SECTOR_NUM}{ARFCN} = $ARFCN;
$hash_NBR_LSM{$cascade}{$bts_id}{$CELL_NUM}{$CELL_ID}{$SECTOR_NUM}{PN_OFFSET} = $PN_OFFSET;





#print ("$CELL_NUM $RELATION_IDX $STATUS $MARKET_ID $SWITCH_NUM $CELL_ID $SECTOR_NUM $BAND_CLASS $ARFCN $PN_OFFSET\n");
                        }

                                             }



                                                                     }	#end foreach line of log
##########################
#   END RTRV-NBR-C1XRTT  #
##########################

$ssh_lsm->print("pwd");
$ssh_lsm->waitfor('/home/');


&PARSE_ENUM($eNB_TYPE, $eNB_VERSION, $eNB_CUR_REL_VER);
&PARSE_XML("CRTE-NBR-C1XRTT", $eNB_TYPE, $eNB_VERSION, $eNB_CUR_REL_VER);










$ssh_lsm->print('exit');

$ssh_lsm->disconnect;

                  }		#end if connect lsm


sub PARSE_ENUM {	#START PARSE ENUM
my $eNB_TYPE = $_[0];
my $eNB_VERSION = $_[1];
my $eNB_CUR_REL_VER = $_[2];
#print ("$eNB_TYPE $eNB_VERSION $eNB_CUR_REL_VER\n");
my $ssh2_ENUM = Net::SSH2->new();					#start 1st ssh to BSM
$ssh2_ENUM->connect($lsm_ip_address,"22",Timeout=>120)				
 or die "Unable to connect Host $@ \n";				#connect to ip address
$ssh2_ENUM->auth_password($lsm_user,$lsm_pass)
 or die "Unable to login $@ \n";				#input username and password
my $chan2_ENUM = $ssh2_ENUM->channel();					#open channel for ssh
$chan2_ENUM->blocking(1);						#blocking = 1 - default is 0
#$chan2_ENUM->shell();



$chan2_ENUM->exec("cat /home/lsm/aceman/data/cdd/$eNB_TYPE/$eNB_VERSION\_$eNB_CUR_REL_VER/ENUM.xml;");


my $bufflen = 512;
my $buff = "";
my $ENUM_FILE = "";

#$linesread = $chan2_ENUM->read($ENUM_FILE, $bufflen);				#set buffer size to save alarm file information from the BSM


do {

#print $buff;
$ENUM_FILE .=$buff;
}
 while ($len = $chan2_ENUM->read($buff, 512)>0);


print $ENUM_FILE;

$chan2_ENUM->close;


my $ENUM_FILE_INFO = XMLin($ENUM_FILE);

foreach my $ENUM (@{$ENUM_FILE_INFO->{ENUM}}) {
if ($ENUM->{NAME} eq "EnumBandclassCDMA2000Type") {

foreach my $ITEM (@{$ENUM->{ITEM}}) {
my $NAME = "$ITEM->{NAME}";
my $VALUE = "$ITEM->{VALUE}";

if ($VALUE == 1) {
#$hash_BAND_CLASS{$eNB_TYPE}{$eNB_VERSION}{$eNB_CUR_REL_VER}{0} = "$NAME";
$hash_BAND_NBR{$eNB_TYPE}{$eNB_VERSION}{$eNB_CUR_REL_VER}{1} = "$NAME";
                 }

if ($VALUE == 10) {
#$hash_BAND_CLASS{$eNB_TYPE}{$eNB_VERSION}{$eNB_CUR_REL_VER}{1} = "$NAME";
$hash_BAND_NBR{$eNB_TYPE}{$eNB_VERSION}{$eNB_CUR_REL_VER}{0} = "$NAME";
                  }


                                    }

                                                  }
                                              }

#print Dumper($ENUM_FILE_INFO);
#print Dumper(\%hash_BAND_CLASS);


              }		#END PARSE ENUM



sub PARSE_XML {		#START PARSE XML
my $xml_file = $_[0];
my $eNB_TYPE = $_[1];
my $eNB_VERSION = $_[2];
my $eNB_CUR_REL_VER = $_[3];

my $ssh2_XML = Net::SSH2->new();					#start 1st ssh to BSM
$ssh2_XML->connect($lsm_ip_address,"22",Timeout=>120)				
 or die "Unable to connect Host $@ \n";				#connect to ip address
$ssh2_XML->auth_password($lsm_user,$lsm_pass)
 or die "Unable to login $@ \n";				#input username and password
my $chan2_XML = $ssh2_XML->channel();					#open channel for ssh
$chan2_XML->blocking(1);						#blocking = 1 - default is 0
#$chan2_XML->shell();


$chan2_XML->exec("cat /home/lsm/aceman/data/cdd/$eNB_TYPE/$eNB_VERSION\_$eNB_CUR_REL_VER/CM/$xml_file.xml");
#$chan2_XML->read(my $CHG_XML_FILE, 100000000);				#set buffer size to save alarm file information from the BSM

my $buff2="";
my $CHG_XML_FILE="";

do {

#print $buff2;
$CHG_XML_FILE .=$buff2;
}
 while ($len = $chan2_XML->read($buff2, 512)>0);


print $CHG_XML_FILE;

$chan2_XML->close;


my $COMMAND_XML_INFO = XMLin($CHG_XML_FILE);

my ($FIELD_NAME_TITLE, $INDEX_YES);
foreach my $PARAM (@{$COMMAND_XML_INFO->{SYSTEM}{INPUT}{PARAM}}) {
my $NAME = "$PARAM->{'NAME'}";
my $DISPLAY_NAME = "$PARAM->{'DISPLAY-NAME'}";
my $MANDATORY = "$PARAM->{'MANDATORY'}";
$FIELD_NAME_TITLE .= "$DISPLAY_NAME,";

if ($MANDATORY eq "YES") {
$INDEX_YES .= "$DISPLAY_NAME,";
                         }

#print ("$NAME $DISPLAY_NAME $MANDATORY\n");


                                                                 }




my $IOC_TITLE = "$COMMAND_XML_INFO->{'MIB-INFO'}{'MIB-MAP'}{'IOC'}";


$FIELD_NAME_TITLE =~ s/,$//g;
$INDEX_YES =~ s/,$//g;
#print ("$xml_file:$FIELD_NAME_TITLE:$IOC_TITLE:RTRVcellconf:$INDEX_YES\n\n");
$hash_COMMAND_INFO{$xml_file}{$eNB_TYPE}{$eNB_VERSION}{$eNB_CUR_REL_VER}{COMMANDS} = $FIELD_NAME_TITLE;
$hash_COMMAND_INFO{$xml_file}{$eNB_TYPE}{$eNB_VERSION}{$eNB_CUR_REL_VER}{REQUIRED_COMMANDS} = $INDEX_YES;
$hash_COMMAND_INFO{$xml_file}{$eNB_TYPE}{$eNB_VERSION}{$eNB_CUR_REL_VER}{IOC} = $IOC_TITLE;


              }		#END PARSE XML




#################
#  END SSH LSM  #
#################
foreach my $cellNum (sort {$a<=>$b} keys %{$CELL_INFO{$eNB_ID}}) {

my ($LAST_CELL);
$LAST_CELL = $hash_CELL_LAST_INDEX{$cascade}{$bts_id}{$cellNum};

if (!$LAST_CELL) {
$LAST_CELL = "0";
                 }
#print ("$cellNum $LAST_CELL\n");

#$COMMAND_MAP{'CHG-NBR-C1XRTT'}{CELL_NUM} = $cellNum;
my ($BAND_INFO);

my $SECTOR = $CELL_INFO{$eNB_ID}{$cellNum}{SECTOR};

if (($cellNum>=0) && ($cellNum<=5)) {
$BAND_INFO = 1;
                                    }

if (($cellNum>=6) && ($cellNum<=8)) {
$BAND_INFO = 1;
                                    }

if (($cellNum>=15) && ($cellNum<=17)) {
$BAND_INFO = 0;

                                      }



#print ("$CASCADE $BTS_ID $eNB_ID $eNB_NAME $cellNum $SECTOR\n");
#my @array_split_command = split(/,/,$COMMANDS);
#my ($value);


foreach my $relidx (sort {$a<=>$b} keys %{$NBRdump{$cascade}{$bts_id}{$SECTOR}{$BAND_INFO}}) {		#START relidx


my $SID_NBR = $NBRdump{$cascade}{$bts_id}{$SECTOR}{$BAND_INFO}{$relidx}{SID};
my $NID_NBR = $NBRdump{$cascade}{$bts_id}{$SECTOR}{$BAND_INFO}{$relidx}{NID};


my $BTS_NBR = $NBRdump{$cascade}{$bts_id}{$SECTOR}{$BAND_INFO}{$relidx}{BTS};
my $SECTOR_NBR = $NBRdump{$cascade}{$bts_id}{$SECTOR}{$BAND_INFO}{$relidx}{SECTOR};


my $BAND_NBR = $NBRdump{$cascade}{$bts_id}{$SECTOR}{$BAND_INFO}{$relidx}{BAND};
my $BAND_NAME = $hash_BAND_NBR{$eNB_TYPE}{$eNB_VERSION}{$eNB_CUR_REL_VER}{$BAND_NBR};


my $FREQ_NBR = $NBRdump{$cascade}{$bts_id}{$SECTOR}{$BAND_INFO}{$relidx}{FREQ};
my $PN_NBR = $NBRdump{$cascade}{$bts_id}{$SECTOR}{$BAND_INFO}{$relidx}{PN};


$SECTOR_NBR = ($SECTOR_NBR+1);
#print ("$cellNum $SECTOR_NBR\n");
if (!$hash_NBR_INFO_LSM{$cascade}{$bts_id}{$cellNum}{$SID_NBR}{$NID_NBR}{$BTS_NBR}{$SECTOR_NBR}) {	#START if !$hash_NBR_INFO_LSM
$NBRdump_INFO{$cascade}{$bts_id}{$cellNum}{$SECTOR}{$LAST_CELL}{MARKET_ID} = $SID_NBR;
$NBRdump_INFO{$cascade}{$bts_id}{$cellNum}{$SECTOR}{$LAST_CELL}{SWITCH_NUM} = $NID_NBR;

$NBRdump_INFO{$cascade}{$bts_id}{$cellNum}{$SECTOR}{$LAST_CELL}{STATUS} = "EQUIP";

$NBRdump_INFO{$cascade}{$bts_id}{$cellNum}{$SECTOR}{$LAST_CELL}{$CELL_ID_TYPE} = $BTS_NBR;

$NBRdump_INFO{$cascade}{$bts_id}{$cellNum}{$SECTOR}{$LAST_CELL}{SECTOR_NUM} = $SECTOR_NBR;

$NBRdump_INFO{$cascade}{$bts_id}{$cellNum}{$SECTOR}{$LAST_CELL}{BAND_CLASS} = $BAND_NAME;
$NBRdump_INFO{$cascade}{$bts_id}{$cellNum}{$SECTOR}{$LAST_CELL}{ARFCN} = $FREQ_NBR;
$NBRdump_INFO{$cascade}{$bts_id}{$cellNum}{$SECTOR}{$LAST_CELL}{PN_OFFSET} = $PN_NBR;


#print ("$cascade $bts_id $eNB_ID $eNB_NAME $cellNum $SECTOR $BAND_INFO $relidx $SID_NBR $NID_NBR $BTS_NBR $SECTOR_NBR $BAND_NBR $FREQ_NBR $PN_NBR\n\n");
$LAST_CELL++;
                                                                                                }	#END if !$hash_NBR_INFO_LSM

else {		#start else if lsm nbr match
if ($hash_NBR_LSM{$cascade}{$bts_id}{$cellNum}{$BTS_NBR}{$SECTOR_NBR}) {	#start if hash_NBR_LSM present

my $MARKET_ID = $hash_NBR_LSM{$cascade}{$bts_id}{$cellNum}{$BTS_NBR}{$SECTOR_NBR}{MARKET_ID};
my $SWITCH_NUM = $hash_NBR_LSM{$cascade}{$bts_id}{$cellNum}{$BTS_NBR}{$SECTOR_NBR}{SWITCH_NUM};
my $BAND_CLASS = $hash_NBR_LSM{$cascade}{$bts_id}{$cellNum}{$BTS_NBR}{$SECTOR_NBR}{BAND_CLASS};
my $ARFCN = $hash_NBR_LSM{$cascade}{$bts_id}{$cellNum}{$BTS_NBR}{$SECTOR_NBR}{ARFCN};
my $PN_OFFSET = $hash_NBR_LSM{$cascade}{$bts_id}{$cellNum}{$BTS_NBR}{$SECTOR_NBR}{PN_OFFSET};

if (($MARKET_ID ne "$SID_NBR") || ($SWITCH_NUM ne "$NID_NBR") || ($BAND_CLASS ne "$BAND_NAME") || ($ARFCN ne "$FREQ_NBR") || ($PN_OFFSET ne "$PN_NBR")) {
#print ("$cascade $bts_id $MARKET_ID $SID_NBR $cellNum $SECTOR_NBR\n");
$hash_NBR_INCORRECT{$cascade}{$bts_id}{$cellNum}{$BTS_NBR}{$SECTOR_NBR}{MARKET_ID} = $MARKET_ID;
$hash_NBR_INCORRECT{$cascade}{$bts_id}{$cellNum}{$BTS_NBR}{$SECTOR_NBR}{SWITCH_NUM} = $SWITCH_NUM;
$hash_NBR_INCORRECT{$cascade}{$bts_id}{$cellNum}{$BTS_NBR}{$SECTOR_NBR}{BAND_CLASS} = $BAND_CLASS;
$hash_NBR_INCORRECT{$cascade}{$bts_id}{$cellNum}{$BTS_NBR}{$SECTOR_NBR}{ARFCN} = $ARFCN;
$hash_NBR_INCORRECT{$cascade}{$bts_id}{$cellNum}{$BTS_NBR}{$SECTOR_NBR}{PN_OFFSET} = $PN_OFFSET;


$hash_NBR_INCORRECT_BSM{$cascade}{$bts_id}{$cellNum}{$BTS_NBR}{$SECTOR_NBR}{MARKET_ID} = $SID_NBR;
$hash_NBR_INCORRECT_BSM{$cascade}{$bts_id}{$cellNum}{$BTS_NBR}{$SECTOR_NBR}{SWITCH_NUM} = $NID_NBR;
$hash_NBR_INCORRECT_BSM{$cascade}{$bts_id}{$cellNum}{$BTS_NBR}{$SECTOR_NBR}{BAND_CLASS} = $BAND_NAME;
$hash_NBR_INCORRECT_BSM{$cascade}{$bts_id}{$cellNum}{$BTS_NBR}{$SECTOR_NBR}{ARFCN} = $FREQ_NBR;
$hash_NBR_INCORRECT_BSM{$cascade}{$bts_id}{$cellNum}{$BTS_NBR}{$SECTOR_NBR}{PN_OFFSET} = $PN_NBR;





                                                                                                                                                        }

#print ("$cascade $bts_id $eNB_ID $eNB_NAME $cellNum $SECTOR $BAND_INFO $MARKET_ID $SID_NBR $SWITCH_NUM $NID_NBR $BTS_NBR $SECTOR_NBR $BAND_CLASS $BAND_NAME $ARFCN $FREQ_NBR $PN_OFFSET $PN_NBR\n\n");


                                                                       }	#end if hash_NBR_LSM present
     }		#end else if lsm nbr match


                                                                                             }		#END relidx



                                                                 }


my $OPTION = $hash_cascade_bts_input{$cascade}{$bts_id}{OPTION};


if (!$OPTION) {			#start if !$OPTION
#########################
# START CRTE-NBR-C1XRTT #
#########################
open (NBR_FILE_VBS, ">$Bin\\NBR_BATCH\\$cascade\_eNB$eNB_ID\_ECSFB_NBR_BATCH\_$month_num\_$mday\_$year\_$hour\_$minute\_$second\.vbs");
print (NBR_FILE_VBS "Sub Main\n");

print (NBR_FILE_VBS "xsh.Session.LogFilePath =\"C:\\3G_4G_TOOL_Scripts\\4G_ECSFB_NBR_TOOL\\DATA_COLLECTED\\eNB$eNB_ID\_ECSFB_NBR_VBS_LOGS\_$month_num\_$mday\_$year\_$hour\_$minute\_$second\.txt\"\n");
print (NBR_FILE_VBS "xsh.Session.StartLog\n");

foreach my $cellNum (sort {$a<=>$b} keys %{$NBRdump_INFO{$cascade}{$bts_id}}) {	#START FOREACH cellNum
foreach my $SECTOR (sort {$a<=>$b} keys %{$NBRdump_INFO{$cascade}{$bts_id}{$cellNum}}) {	#START FOREACH SECTOR
foreach my $relidx (sort {$a<=>$b} keys %{$NBRdump_INFO{$cascade}{$bts_id}{$cellNum}{$SECTOR}}) {	#START FOREACH relidx


my $COMMANDS = $hash_COMMAND_INFO{'CRTE-NBR-C1XRTT'}{$eNB_TYPE}{$eNB_VERSION}{$eNB_CUR_REL_VER}{COMMANDS};


my @array_split_command = split(/,/,$COMMANDS);
my ($value);
foreach $COMMAND_TITLE (@array_split_command) {


if (($COMMAND_TITLE eq "CELL_NUM") || ($COMMAND_TITLE eq "RELATION_IDX")) {
if ($COMMAND_TITLE eq "CELL_NUM") {
$value .= "$cellNum,";
                                  }
if ($COMMAND_TITLE eq "RELATION_IDX") {
$value .= "$relidx,";
                                      }

                                                                          }

else {

$value .= "$NBRdump_INFO{$cascade}{$bts_id}{$cellNum}{$SECTOR}{$relidx}{$COMMAND_TITLE},";
     }


#$PARAMdump{$cascade}{$bts_id}{SID etc}
                                  
                                              }

$value =~ s/,$//g;
#print ("CHG-NBR-C1XRTT $CASCADE $BTS_ID $eNB_ID $eNB_NAME $cellNum $value\n");
print ("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNB_NAME CRTE-NBR-C1XRTT:$value\n");

#print (NBR_FILE_VBS "xsh.Screen.send \"\/log\/STATools\/Scripts\/NBR\/cmdSTA.sh  $eNB_NAME CRTE-NBR-C1XRTT\:$value\"\n");
print (NBR_FILE_VBS "xsh.Screen.send \"\/usr\/bin\/sudo -u lsm \/home\/lsm\/aceman\/bin\/cmd.sprint $eNB_NAME CRTE-NBR-C1XRTT\:$value\"\n");
print (NBR_FILE_VBS "xsh.Screen.Send VbCr\n");
print (NBR_FILE_VBS "xsh.Session.Sleep 20000\n");


                                                                                                }	#END FOREACH relidx
                                                                                       }	#END FOREACH SECTOR
                                                                              }	#END FOREACH cellNum


print (NBR_FILE_VBS "xsh.Session.StopLog\n");
print (NBR_FILE_VBS "End Sub\n");
close (NBR_FILE_VBS);
#########################
#  END CRTE-NBR-C1XRTT  #
#########################


close (FILE);

my $eNB_ID = "$hash_cascade_bts_input{$cascade}{$bts_id}{ENODEB_ID}";

my $BATCH_FILE = `type $Bin\\NBR_BATCH\\$cascade\_eNB$eNB_ID\_ECSFB_NBR_BATCH\_$month_num\_$mday\_$year\_$hour\_$minute\_$second\.vbs`;

if ($BATCH_FILE !~ m/CRTE\-NBR\-C1XRTT\:/) {
open (NBR_FILE_VBS_NO, ">$Bin\\NBR_BATCH\\$cascade\_eNB$eNB_ID\_ECSFB_NBR_BATCH\_$month_num\_$mday\_$year\_$hour\_$minute\_$second\.vbs");
print ("\n\n");
print ("#########################################################################\n");
print ("#      eCSFB NBRs ARE ALREADY CREATED. PLEASE AUDIT SITE TO VERIFY      #\n");
print ("#########################################################################\n");
print (NBR_FILE_VBS_NO "\n\n");
print (NBR_FILE_VBS_NO "#########################################################################\n");
print (NBR_FILE_VBS_NO "#      eCSFB NBRs ARE ALREADY CREATED. PLEASE AUDIT SITE TO VERIFY      #\n");
print (NBR_FILE_VBS_NO "#########################################################################\n");
close (NBR_FILE_VBS_NO);

sleep 10;
                                           }





                                                                             #}		#end foreach bts
                                                       #}				#end foreach cascade


#print Dumper(\%NBRdump_INFO);
#print Dumper(\%hash_NBR_LSM);
#print Dumper(\%hash_NBR_INCORRECT);


              }			#end if !$OPTION

#foreach my $cascade (sort keys %hash_cascade_bts_input) {				#start foreach cascade
#foreach my $bts_id (sort {$a<=>$b} keys %{$hash_cascade_bts_input{$cascade}}) {		#start foreach bts
my $OPTION = $hash_cascade_bts_input{$cascade}{$bts_id}{OPTION};
if ($OPTION eq "AUDIT") {			#start if $OPTION eq AUDIT
################
# START REPORT #
################
######################
# START EXCEL REPORT #
######################

my $eNB_ID = $hash_ENODEB_INFO{$casdcade}{$bts_id}{eNB_ID};
my $eNB_NAME = $hash_ENODEB_INFO{$casdcade}{$bts_id}{eNB_NAME};
my $LSM = $hash_cascade_bts_input{$cascade}{$bts_id}{LSM};

my $BSM = $hash_cascade_bts_input{$cascade}{$bts_id}{BSM};

# Create a new Excel workbook
my $workbook = Spreadsheet::WriteExcel->new("$Bin\\REPORTS\\$cascade\_eNB\_$eNB_ID\_4G_ECSFB_NBR_AUDIT\_$month_num\_$mday\_$year\_$hour\_$minute\_$second\.xls");



#  Add and define a format
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

$format_title_merge->set_text_wrap();

$format_title_merge_green = $workbook->add_format(border=>0); # Add a format
$format_title_merge_green->set_bold();
$format_title_merge_green->set_size(15);
$format_title_merge_green->set_bg_color('green');
$format_title_merge_green->set_color('black');
$format_title_merge_green->set_align('center');
$format_title_merge_green->set_text_wrap();

$format_yellow = $workbook->add_format(border=>1); # Add a format
$format_yellow->set_bold();
$format_yellow->set_size(10);
$format_yellow->set_bg_color('yellow');
$format_yellow->set_color('black');
$format_yellow->set_align('center');
$format_yellow->set_valign('vcenter');
$format_yellow->set_text_wrap();

$format_red = $workbook->add_format(border=>1); # Add a format
#$format_red->set_bold();
$format_red->set_size(10);
$format_red->set_bg_color('red');
$format_red->set_color('black');
$format_red->set_align('center');

$format_green = $workbook->add_format(border=>1); # Add a format
#$format_green->set_bold();
$format_green->set_size(10);
$format_green->set_bg_color('green');
$format_green->set_color('black');
$format_green->set_align('center');

$format_white = $workbook->add_format(border=>1); # Add a format
#$format_white->set_bold();
$format_white->set_size(10);
$format_white->set_bg_color('white');
$format_white->set_color('black');
$format_white->set_align('center');
$format_white->set_text_wrap();

$format_orange = $workbook->add_format(border=>1); # Add a format
#$format_orange->set_bold();
$format_orange->set_size(10);
$format_orange->set_bg_color('orange');
$format_orange->set_color('black');
$format_orange->set_align('center');

########################
# START INCORRECT NBRS #
########################
$worksheet = $workbook->add_worksheet("INCORRECT NBRs");


$worksheet->set_column(0, 0, 12.57);
$worksheet->set_column(1, 1, 8.43);
$worksheet->set_column(2, 2, 29.43);
$worksheet->set_column(3, 3, 10);
$worksheet->set_column(4, 4, 10);
$worksheet->set_column(5, 5, 10);
$worksheet->set_column(6, 6, 10);
$worksheet->set_column(7, 7, 10);


$worksheet->set_column(8, 8, 10);
$worksheet->set_column(9, 9, 10);
$worksheet->set_column(10, 10, 10);
$worksheet->set_column(11, 11, 10);
$worksheet->set_column(12, 12, 10);
$worksheet->set_column(13, 13, 15);


$count_NBR_INCORRECT = 0;
foreach my $bts_id  (sort {$a<=>$b} keys %{$hash_NBR_INCORRECT{$cascade}}) {
$count_NBR_INCORRECT++;
                                                                           }


if (!$count_NBR_INCORRECT) {
$worksheet->merge_range('D1:J1', "THERE ARE NO INCORRECT NBR", $format_title_merge_green);
                           }


else {
my $k = 0;

$worksheet->write($k, 0, "CASCADE", $format_yellow);
$worksheet->write($k, 1, "eNB ID", $format_yellow);
$worksheet->write($k, 2, "eNB NAME", $format_yellow);
$worksheet->write($k, 3, "MARKET ID", $format_yellow);
$worksheet->write($k, 4, "SID NBR", $format_yellow);
$worksheet->write($k, 5, "SWITCH NUM", $format_yellow);
$worksheet->write($k, 6, "NID NBR", $format_yellow);
$worksheet->write($k, 7, "BAND CLASS", $format_yellow);
$worksheet->write($k, 8, "BAND CLASS NBR", $format_yellow);
$worksheet->write($k, 9, "ARFCN", $format_yellow);
$worksheet->write($k, 10, "FREQ NBR", $format_yellow);
$worksheet->write($k, 11, "PN OFFSET", $format_yellow);
$worksheet->write($k, 12, "PN NBR", $format_yellow);
$worksheet->write($k, 13, "LSM", $format_yellow);
     }

my $num = 1;
foreach my $cascade (sort keys %hash_NBR_INCORRECT) {
foreach my $bts_id  (sort {$a<=>$b} keys %{$hash_NBR_INCORRECT{$cascade}}) {
foreach my $cellNum  (sort {$a<=>$b} keys %{$hash_NBR_INCORRECT{$cascade}{$bts_id}}) {
foreach my $BTS_NBR  (sort {$a<=>$b} keys %{$hash_NBR_INCORRECT{$cascade}{$bts_id}{$cellNum}}) {
foreach my $SECTOR_NBR  (sort {$a<=>$b} keys %{$hash_NBR_INCORRECT{$cascade}{$bts_id}{$cellNum}{$BTS_NBR}}) {


my $MARKET_ID = $hash_NBR_INCORRECT{$cascade}{$bts_id}{$cellNum}{$BTS_NBR}{$SECTOR_NBR}{MARKET_ID};
my $SWITCH_NUM = $hash_NBR_INCORRECT{$cascade}{$bts_id}{$cellNum}{$BTS_NBR}{$SECTOR_NBR}{SWITCH_NUM};
my $BAND_CLASS = $hash_NBR_INCORRECT{$cascade}{$bts_id}{$cellNum}{$BTS_NBR}{$SECTOR_NBR}{BAND_CLASS};
my $ARFCN = $hash_NBR_INCORRECT{$cascade}{$bts_id}{$cellNum}{$BTS_NBR}{$SECTOR_NBR}{ARFCN};
my $PN_OFFSET = $hash_NBR_INCORRECT{$cascade}{$bts_id}{$cellNum}{$BTS_NBR}{$SECTOR_NBR}{PN_OFFSET};


my $SID_NBR = $hash_NBR_INCORRECT_BSM{$cascade}{$bts_id}{$cellNum}{$BTS_NBR}{$SECTOR_NBR}{MARKET_ID};
my $NID_NBR = $hash_NBR_INCORRECT_BSM{$cascade}{$bts_id}{$cellNum}{$BTS_NBR}{$SECTOR_NBR}{SWITCH_NUM};
my $BAND_NAME = $hash_NBR_INCORRECT_BSM{$cascade}{$bts_id}{$cellNum}{$BTS_NBR}{$SECTOR_NBR}{BAND_CLASS};
my $FREQ_NBR = $hash_NBR_INCORRECT_BSM{$cascade}{$bts_id}{$cellNum}{$BTS_NBR}{$SECTOR_NBR}{ARFCN};
my $PN_NBR = $hash_NBR_INCORRECT_BSM{$cascade}{$bts_id}{$cellNum}{$BTS_NBR}{$SECTOR_NBR}{PN_OFFSET};


$worksheet->write($num, 0, $cascade, $format_white);
$worksheet->write($num, 1, $eNB_ID, $format_white);
$worksheet->write($num, 2, $eNB_NAME, $format_white);

if ($MARKET_ID eq "$SID_NBR") {
$worksheet->write($num, 3, $MARKET_ID, $format_green);
                              }
else {
$worksheet->write($num, 3, $MARKET_ID, $format_red);
     }
$worksheet->write($num, 4, $SID_NBR, $format_white);


if ($SWITCH_NUM eq "$NID_NBR") {
$worksheet->write($num, 5, $SWITCH_NUM, $format_green);
                               }
else {
$worksheet->write($num, 5, $SWITCH_NUM, $format_red);
     }
$worksheet->write($num, 6, $NID_NBR, $format_white);

if ($BAND_CLASS eq "$BAND_NAME") {
$worksheet->write($num, 7, $BAND_CLASS, $format_green);
                                 }
else {
$worksheet->write($num, 7, $BAND_CLASS, $format_red);
     }
$worksheet->write($num, 8, $BAND_NAME, $format_white);

if ($ARFCN eq "$FREQ_NBR") {
$worksheet->write($num, 9, $ARFCN, $format_green);
                           }

else {
$worksheet->write($num, 9, $ARFCN, $format_red);
     }
$worksheet->write($num, 10, $FREQ_NBR, $format_white);


if ($PN_OFFSET eq "$PN_NBR") {
$worksheet->write($num, 11, $PN_OFFSET, $format_green);
                             }
else {
$worksheet->write($num, 11, $PN_OFFSET, $format_red);
     }
$worksheet->write($num, 12, $PN_NBR, $format_white);
$worksheet->write($num, 13, $LSM, $format_white);


$num++;
#print ("$cascade $bts_id $cellNum $BTS_NBR $SECTOR_NBR $MARKET_ID $SID_NBR $SWITCH_NUM $NID_NBR $BAND_CLASS $BAND_NAME $ARFCN $FREQ_NBR $PN_OFFSET $PN_NBR\n");





                                                                                                            }
                                                                                               }
                                                                                     }

                                                                           }
                                                     }


########################
#  END INCORRECT NBRS  #
########################

######################
# START MISSING NBRS #
######################
$worksheet_MISSING = $workbook->add_worksheet("MISSING NBRs");


$worksheet_MISSING->set_column(0, 0, 12.57);
$worksheet_MISSING->set_column(1, 1, 8.43);
$worksheet_MISSING->set_column(2, 2, 29.43);
$worksheet_MISSING->set_column(3, 3, 10);
$worksheet_MISSING->set_column(4, 4, 10);
$worksheet_MISSING->set_column(5, 5, 10);
$worksheet_MISSING->set_column(6, 6, 10);
$worksheet_MISSING->set_column(7, 7, 10);
$worksheet_MISSING->set_column(8, 8, 10);
$worksheet_MISSING->set_column(9, 9, 10);
$worksheet_MISSING->set_column(10, 10, 10);
$worksheet_MISSING->set_column(11, 11, 15);


$count_NBR_MISSING = 0;
foreach my $bts_id  (sort {$a<=>$b} keys %{$NBRdump_INFO{$cascade}}) {
$count_NBR_MISSING++;
                                                                     }


if (!$count_NBR_MISSING) {
$worksheet_MISSING->merge_range('D1:J1', "THERE ARE NO MISSING NBR", $format_title_merge_green);
                         }


else {
my $k = 0;

$worksheet_MISSING->write($k, 0, "CASCADE", $format_yellow);
$worksheet_MISSING->write($k, 1, "eNB ID", $format_yellow);
$worksheet_MISSING->write($k, 2, "eNB NAME", $format_yellow);
$worksheet_MISSING->write($k, 3, "CELL NUM", $format_yellow);
$worksheet_MISSING->write($k, 4, "SECTOR", $format_yellow);
$worksheet_MISSING->write($k, 5, "MARKET ID", $format_yellow);
$worksheet_MISSING->write($k, 6, "SWITCH NUM", $format_yellow);
$worksheet_MISSING->write($k, 7, "CELL ID", $format_yellow);
$worksheet_MISSING->write($k, 8, "BAND CLASS", $format_yellow);
$worksheet_MISSING->write($k, 9, "ARFCN", $format_yellow);
$worksheet_MISSING->write($k, 10, "PN OFFSET", $format_yellow);
$worksheet_MISSING->write($k, 11, "LSM", $format_yellow);
     }

my $num = 1;
foreach my $cellNum (sort {$a<=>$b} keys %{$NBRdump_INFO{$cascade}{$bts_id}}) {	#START FOREACH cellNum
foreach my $SECTOR (sort {$a<=>$b} keys %{$NBRdump_INFO{$cascade}{$bts_id}{$cellNum}}) {	#START FOREACH SECTOR
foreach my $relidx (sort {$a<=>$b} keys %{$NBRdump_INFO{$cascade}{$bts_id}{$cellNum}{$SECTOR}}) {	#START FOREACH relidx



my $MARKET_ID = $NBRdump_INFO{$cascade}{$bts_id}{$cellNum}{$SECTOR}{$relidx}{MARKET_ID};
my $SWITCH_NUM = $NBRdump_INFO{$cascade}{$bts_id}{$cellNum}{$SECTOR}{$relidx}{SWITCH_NUM};


my $CELL_ID = $NBRdump_INFO{$cascade}{$bts_id}{$cellNum}{$SECTOR}{$relidx}{$CELL_ID_TYPE};

my $SECTOR_NUM = $NBRdump_INFO{$cascade}{$bts_id}{$cellNum}{$SECTOR}{$relidx}{SECTOR_NUM};

my $BAND_CLASS = $NBRdump_INFO{$cascade}{$bts_id}{$cellNum}{$SECTOR}{$relidx}{BAND_CLASS};
my $ARFCN = $NBRdump_INFO{$cascade}{$bts_id}{$cellNum}{$SECTOR}{$relidx}{ARFCN};
my $PN_OFFSET = $NBRdump_INFO{$cascade}{$bts_id}{$cellNum}{$SECTOR}{$relidx}{PN_OFFSET};

$worksheet_MISSING->write($num, 0, $cascade, $format_white);
$worksheet_MISSING->write($num, 1, $eNB_ID, $format_white);
$worksheet_MISSING->write($num, 2, $eNB_NAME, $format_white);
$worksheet_MISSING->write($num, 3, $cellNum, $format_white);
$worksheet_MISSING->write($num, 4, $SECTOR_NUM, $format_white);
$worksheet_MISSING->write($num, 5, $MARKET_ID, $format_white);
$worksheet_MISSING->write($num, 6, $SWITCH_NUM, $format_white);
$worksheet_MISSING->write($num, 7, $CELL_ID, $format_white);
$worksheet_MISSING->write($num, 8, $BAND_CLASS, $format_white);
$worksheet_MISSING->write($num, 9, $ARFCN, $format_white);
$worksheet_MISSING->write($num, 10, $PN_OFFSET, $format_white);
$worksheet_MISSING->write($num, 11, $LSM, $format_white);

$num++;

#print ("$eNB_ID $eNB_NAME $cellNum $MARKET_ID $SWITCH_NUM $CELL_ID $SECTOR_NUM $BAND_CLASS $ARFCN $PN_OFFSET\n");


                                                                                                }	#END FOREACH relidx
                                                                                       }	#END FOREACH SECTOR
                                                                              }	#END FOREACH cellNum


######################
#  END MISSING NBRS  #
######################


#####################
# START 3G NBR LIST #
#####################
$worksheet_BSM_NBRS = $workbook->add_worksheet("3G NBRs DUMP");


$worksheet_BSM_NBRS->set_column(0, 0, 12.57);
$worksheet_BSM_NBRS->set_column(1, 1, 8.43);
$worksheet_BSM_NBRS->set_column(2, 2, 10);
$worksheet_BSM_NBRS->set_column(3, 3, 30);
$worksheet_BSM_NBRS->set_column(4, 4, 10);
$worksheet_BSM_NBRS->set_column(5, 5, 10);
$worksheet_BSM_NBRS->set_column(6, 6, 10);
$worksheet_BSM_NBRS->set_column(7, 7, 10);
$worksheet_BSM_NBRS->set_column(8, 8, 10);
$worksheet_BSM_NBRS->set_column(9, 9, 10);
$worksheet_BSM_NBRS->set_column(10, 10, 10);
$worksheet_BSM_NBRS->set_column(11, 11, 30);


my $k = 0;

$worksheet_BSM_NBRS->write($k, 0, "CASCADE", $format_yellow);
$worksheet_BSM_NBRS->write($k, 1, "BTS", $format_yellow);
$worksheet_BSM_NBRS->write($k, 2, "eNB ID", $format_yellow);
$worksheet_BSM_NBRS->write($k, 3, "eNB NAME", $format_yellow);
$worksheet_BSM_NBRS->write($k, 4, "NSECTOR", $format_yellow);
$worksheet_BSM_NBRS->write($k, 5, "NSID", $format_yellow);
$worksheet_BSM_NBRS->write($k, 6, "NNID", $format_yellow);
$worksheet_BSM_NBRS->write($k, 7, "NBTS", $format_yellow);
$worksheet_BSM_NBRS->write($k, 8, "NBAND", $format_yellow);
$worksheet_BSM_NBRS->write($k, 9, "NFREQ", $format_yellow);
$worksheet_BSM_NBRS->write($k, 10, "NPN", $format_yellow);
$worksheet_BSM_NBRS->write($k, 11, "BSM", $format_yellow);

my $num = 1;
foreach my $SECTOR (sort {$a<=>$b} keys %{$NBRdump{$cascade}{$bts_id}}) {
foreach my $BANDCLASS (sort keys %{$NBRdump{$cascade}{$bts_id}{$SECTOR}}) {
foreach my $relidx (sort keys %{$NBRdump{$cascade}{$bts_id}{$SECTOR}{$BANDCLASS}}) {
my $NSID = $NBRdump{$cascade}{$bts_id}{$SECTOR}{$BANDCLASS}{$relidx}{SID};
my $NNID = $NBRdump{$cascade}{$bts_id}{$SECTOR}{$BANDCLASS}{$relidx}{NID};


my $NBTS = $NBRdump{$cascade}{$bts_id}{$SECTOR}{$BANDCLASS}{$relidx}{BTS};
my $NSECTOR = $NBRdump{$cascade}{$bts_id}{$SECTOR}{$BANDCLASS}{$relidx}{SECTOR};

my $NBAND = $NBRdump{$cascade}{$bts_id}{$SECTOR}{$BANDCLASS}{$relidx}{BAND};
my $NFREQ = $NBRdump{$cascade}{$bts_id}{$SECTOR}{$BANDCLASS}{$relidx}{FREQ};
my $NPN = $NBRdump{$cascade}{$bts_id}{$SECTOR}{$BANDCLASS}{$relidx}{PN};


$worksheet_BSM_NBRS->write($num, 0, $cascade, $format_white);
$worksheet_BSM_NBRS->write($num, 1, $bts_id, $format_white);
$worksheet_BSM_NBRS->write($num, 2, $eNB_ID, $format_white);
$worksheet_BSM_NBRS->write($num, 3, $eNB_NAME, $format_white);
$worksheet_BSM_NBRS->write($num, 4, $NSECTOR, $format_white);
$worksheet_BSM_NBRS->write($num, 5, $NSID, $format_white);
$worksheet_BSM_NBRS->write($num, 6, $NNID, $format_white);
$worksheet_BSM_NBRS->write($num, 7, $NBTS, $format_white);
$worksheet_BSM_NBRS->write($num, 8, $NBAND, $format_white);
$worksheet_BSM_NBRS->write($num, 9, $NFREQ, $format_white);
$worksheet_BSM_NBRS->write($num, 10, $NPN, $format_white);
$worksheet_BSM_NBRS->write($num, 11, $BSM, $format_white);


$num++;

#print ("$cascade $bts_id $NSECTOR $NSID $NNID $NBTS $NBAND $NFREQ $NPN\n");
                                                                                   }
                                                                       }

                                                                        }

#####################
#  END 3G NBR LIST  #
#####################



################
#  END REPORT  #
################
                        }			#end if $OPTION eq AUDIT

                                                                             }		#end foreach bts
                                                       }				#end foreach cascade