#!/usr/bin/perl
use POSIX;
use Net::SSH2;
use Control::CLI;


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

my $fname = 'G:\\RanCommTool\\eCFSB\\3G\\CMD-LOG\\RTRV-BTS_SUBSYSTEM.txt';
open (FILE_3G_BSM_SUBSYS_CONF, ">$fname");
$ssh_3G->print("cmdx 1 RTRV-BTS_SUBSYSTEM-CONF:BTS=11~11,EXPORT_CSV=NO;");
$ssh_3G->waitfor('SUBSYSTEM CONFIGURATION');
my $bsm_subsys_conf = $ssh_3G->waitfor('COMPLETED');
print ("$bsm_subsys_conf\n\n");
print (FILE_3G_BSM_SUBSYS_CONF "$bsm_subsys_conf\n");
close(FILE_3G_BSM_SUBSYS_CONF);


my $fname1 = 'G:\\RanCommTool\\eCFSB\\3G\\CMD-LOG\\RTRV-BSC_SID_NID.txt';
open (FILE_3G_BSC_SIDNID, ">$fname1");
$ssh_3G->print("cmdx 1 RTRV-BSC_SID_NID_MAP_INDEX-DATA:NETWORK_INDEX=0~0;");
$ssh_3G->waitfor(']');
my $bsm_sidnid = $ssh_3G->waitfor('COMPLETED');
print ("$bsm_sidnid\n\n");
print (FILE_3G_BSC_SIDNID "$bsm_sidnid\n");
close(FILE_3G_BSC_SIDNID);


my $fname2 = 'G:\\RanCommTool\\eCFSB\\3G\\CMD-LOG\\RTRV-BTS-PARA.txt';
open (FILE_3G_BTS_PARA, ">$fname2");
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
