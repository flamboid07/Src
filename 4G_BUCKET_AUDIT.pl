#!/usr/bin/perl
use FindBin qw($Bin);
use lib "$Bin/../lib";
use POSIX;

use Spreadsheet::WriteExcel;

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





print ("\n");
print ("#############################\n");
print ("#  4G LSM BUCKET AUDIT TOOL #\n");
print ("#############################\n");
print ("\n");







##################################
# START VALUES FROM SASHA'S TOOL #
##################################
my (%hash_LOGIN_INFO, $hash_LOGIN_INFO);
%hash_LOGIN_INFO = ();

my (@input, $input);


@_ = split(/,/,$ARGV[0]);
$hash_LOGIN_INFO{LSM} = "$_[0]";
$hash_LOGIN_INFO{LSM_IP} = "$_[1]";
$hash_LOGIN_INFO{USER} = "$_[2]";
$hash_LOGIN_INFO{PASS} = "$_[3]";





##################################
#  END VALUES FROM SASHA'S TOOL  #
##################################

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

#print Dumper(\%hash_LOGIN_INFO);

my (%hash_level_id, $hash_level_id);
%hash_level_id = ();

my (%hash_ENODEB_INFO, $hash_ENODEB_INFO);
%hash_ENODEB_INFO = ();


my $lsm_info = "$hash_LOGIN_INFO{LSM}";




####################
# START SSH TO LSM #
####################
my $ssh_lsm = new Control::CLI(Use => 'SSH',
                        Prompt => ']',
			Errmode=> 'return',
                        Timeout=> '20');

my $connect = $ssh_lsm->connect(Host => $hash_LOGIN_INFO{LSM_IP},
          Username => $hash_LOGIN_INFO{USER},
          Password => $hash_LOGIN_INFO{PASS},
        PrivateKey => '.ssh/id_dsa');


if ($connect) {				#START IF CONNECT
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

if (($info =~ m/SPRINT_SSLR_4.0/) || ($info =~ m/SPRINT_SSLR_5.0/)) {
$database_name = "mc_db";
                                 }
else {
$database_name = "lsm_db";
     }


print ("$database_name\n");


print ("\n\nPLEASE WAIT......\n\n");

$ssh_lsm->print("/db/mysql/app/bin/mysql -ulsm -plsm $database_name\;");
my $sql_start = $ssh_lsm->waitfor('mysql>');
#print ("$sql_start\n\n");



$ssh_lsm->print("select level2_id,ems_alias from cm_v_level2andcoord_lsm;");
$BUCKETS = $ssh_lsm->waitfor('mysql>');
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
if (($array_split_get_level_id =~ m/^\d+/) && ($array_split_get_level_id !~ m/rows\s+in\s+set/)) {
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


$ssh_lsm->print("select system_id,ems_alias,level2_id,level3_id,ip_addr_1,version from cm_v_level3_lsm;");
$ENODEBS = $ssh_lsm->waitfor('mysql>');
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
if (($array_get_enodeb_ids !~ m/rows\s+in\s+set/) && ($array_get_enodeb_ids !~ m/system_id/)) {
@_ = split(/\t+/, $array_get_enodeb_ids);

if (($_[0] =~ m/\d+/)) {		#start if $_[0]
my $bucket_4g = "$hash_level_id{$_[2]}";

$hash_ENODEB_INFO{$_[1]}{BUCKET} = "$bucket_4g";		#enodeb bucket name
$hash_ENODEB_INFO{$_[1]}{ENODEB_NUM} = "$_[0]";			#enodeb number
$hash_ENODEB_INFO{$_[1]}{ENODEB_IP} = "$_[4]";			#endodeb ip
$hash_ENODEB_NUM_ALM{$_[3]} = "$_[1]";				#enodeb number for alarms
if ($_[4] !~ m/\d+\.\d+\.\d+\.\d+/) {				#start if ip address not \d+.\d+.\d+.\d+ site down
$hash_SITE_DOWN{$_[1]} = "SITE DOWN";

                                    }				#end if ip address not \d+.\d+.\d+.\d+ site down


                       }		#end if $_[0]




                                                                                              }
                                                       }
#print Dumper(\%hash_ENODEB_INFO);
#print Dumper(\%hash_LEVEL3ID_INFO);
#########################
#  END GET ENODEB INFO  #
#########################


$ssh_lsm->print("select CASE WHEN severity=1 THEN 'CRITICAL' WHEN severity=2 THEN 'MAJOR' WHEN severity=3 THEN 'MINOR' WHEN severity=4 THEN 'WARNING' ELSE 'NULL' END severity, level2_id, alarm_time, lloc, alarm_id, probcause_str, level3_id from fm_v_uncleared_alarms order by severity;");
my $ALARMS = $ssh_lsm->waitfor('mysql>');
#print ("$ALARMS\n");

my $count = 1;
my (@array_get_alarms, $array_get_alarms);
@array_get_alarms = split(/\n/, $ALARMS);
foreach $array_get_alarms (@array_get_alarms) {
$array_get_alarms =~ s/^\|\s+//g;
$array_get_alarms =~ s/\|\s+$//g;
$array_get_alarms =~ s/\s+$//g;
$array_get_alarms =~ s/\s+\|\s+/\t/g;
$array_get_alarms =~ s/\r+//g;
@_ = split(/\t+/, $array_get_alarms);
if ($_[0] eq "CRITICAL") {

my $severity = "$_[0]";
my $level2_id = "$_[1]";
my $alarm_time = "$_[2]";
my $lloc = "$_[3]";
my $alarm_id = "$_[4]";
my $probcause_str = "$_[5]";
my $level3_id = "$_[6]";
my $enodeb = "$hash_ENODEB_NUM_ALM{$level3_id}";

if ($alarm_id eq "2006") {
if ($enodeb) {
$hash_SITE_DOWN{$enodeb} = "SITE DOWN";
             }
                         }

                        }
                                              }






$ssh_lsm->print('exit');

$ssh_lsm->disconnect;

             }				#END IF CONNECT

else {
print ("COULD NOT CONNECT TO $hash_LOGIN_INFO{LSM}\n");
     }

close (FILE);
####################
#  END SSH TO LSM  #
####################


foreach my $ENODEB (sort keys %hash_ENODEB_INFO) {		#start foreach enodeb for report
print ("$ENODEB,$hash_ENODEB_INFO{$ENODEB}{BUCKET}\n");
                                                 }




######################
# START EXCEL REPORT #
######################


# Create a new Excel workbook
my $workbook = Spreadsheet::WriteExcel->new("$Bin\\REPORTS\\$lsm_info\_4G_BUCKET_AUDIT\_$month_num\_$mday\_$year\_$hour\_$minute\.xls");

# Add a worksheet
$worksheet = $workbook->add_worksheet("4G BUCKET AUDIT");

#  Add and define a format
$format_title = $workbook->add_format(border=>0); # Add a format
$format_title->set_bold();
$format_title->set_size(15);
$format_title->set_color('black');
$format_title->set_align('center');
$format_title->set_text_wrap();
$format_title->set_valign('vcenter');

$format_yellow = $workbook->add_format(border=>1); # Add a format
$format_yellow->set_bold();
$format_yellow->set_size(12);
$format_yellow->set_bg_color('yellow');
$format_yellow->set_color('black');
$format_yellow->set_align('center');
$format_yellow->set_text_wrap();
$format_yellow->set_valign('vcenter');


$format_white = $workbook->add_format(border=>1); # Add a format
#$format_white->set_bold();
$format_white->set_size(10);
$format_white->set_bg_color('white');
$format_white->set_color('black');
$format_white->set_align('left');
$format_white->set_text_wrap();
$format_white->set_valign('vcenter');


$format_red = $workbook->add_format(border=>1); # Add a format
#$format_red->set_bold();
$format_red->set_size(10);
$format_red->set_bg_color('red');
$format_red->set_color('black');
$format_red->set_align('left');
$format_red->set_text_wrap();
$format_red->set_valign('vcenter');

$worksheet->set_column(0, 0, 40);
$worksheet->set_column(1, 1, 8.43);
$worksheet->set_column(2, 2, 55);
$worksheet->set_column(3, 3, 30);
$worksheet->set_column(4, 4, 15);

$worksheet->merge_range('A1:E1', "$lsm_info $bucket_info 4G BUCKET AUDIT $month $mday, $year $hour:$minute", $format_title);


my $d = 1;
$worksheet->write($d, 0, 'eNB Name', $format_yellow);
$worksheet->write($d, 1, 'eNB ID', $format_yellow);
$worksheet->write($d, 2, 'Bucket', $format_yellow);
$worksheet->write($d, 3, 'eNB IP', $format_yellow);
$worksheet->write($d, 4, 'Site Down', $format_yellow);

my $n = 2;
foreach my $ENODEB (sort keys %hash_ENODEB_INFO) {		#start foreach enodeb for report
$worksheet->write($n, 0, $ENODEB, $format_white);
$worksheet->write($n, 1, $hash_ENODEB_INFO{$ENODEB}{ENODEB_NUM}, $format_white);
$worksheet->write($n, 2, $hash_ENODEB_INFO{$ENODEB}{BUCKET}, $format_white);
$worksheet->write($n, 3, $hash_ENODEB_INFO{$ENODEB}{ENODEB_IP}, $format_white);
if ($hash_SITE_DOWN{$ENODEB}) {
$worksheet->write($n, 4, 'YES', $format_red);
                              }
else {
$worksheet->write($n, 4, 'NO', $format_white);
     }
$n++;
                                                 }

######################
#  END EXCEL REPORT  #
######################


