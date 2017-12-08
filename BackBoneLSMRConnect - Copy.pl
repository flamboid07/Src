#!/usr/bin/perl
use POSIX;
use Net::SSH2;

use Control::CLI;
use Data::Dumper;

#use Net::SSH::Expect;
#my $userID = $ENV(USER);
my $RetLogFile='G:\\RanCommTool\\AUDIT\CMD-FILE-LOG\\CDU30\\';
my $IP="105.66.51.114";
#my $IP=$ARGV[0];
#my $CDUIP=$ARGV[1];

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

my $connect = $ssh_lsm->connect(Host => $IP,
          Username => $user,
          Password => $pass,
        PrivateKey => '.ssh/id_dsa');

if ($connect) {		#start if connected


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


$ssh_lsm->print("cmd eNB66 RTRV-ALM-LIST;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;

my $fname = $RetLogFile.'RTRV-ALM-LIST.txt';
   create_log_file($fname, $Log);
exit;


###############################################

#my $CDUIP="172.33.24.56";
my $CDUIP="66.1.1.2";
my $CDUuser="lteuser";
my $CDUpass="samsunglte";

print ("\n\n Connecting to DU \n\n");
					     
#$ssh_lsm->cmd("ssh lteuser\@$CDUIP");
#$ssh_lsm->cmd("cmd_sys eNB_66 RTRV-ALM-LIST");
$ssh_lsm->print("ssh lteuser\@$CDUIP");
sleep 3;
#print ("ssh");
$ssh_lsm->print('yes');
sleep 3;
#print ("yes");
my $Log = $ssh_lsm->waitfor('password:');
print "$Log\n";

$ssh_lsm->print("samsunglte");
#print ("password");

$Log_wait=$ssh_lsm->waitfor('\$');
print "$Log_wait\n";
#$Log2=$ssh_lsm->print("cd /pkg;ls -l");
#print "$Log2\n";



#$ssh_lsm->print("cd /pkg;ls -l");
#my $Log2 = $ssh_lsm->waitfor('\$');
#print "$Log2\n";

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

print ("connected test su\n");
print ("connected test su\n");

#$Log_wait_SU=$ssh_lsm->waitfor('\~');
print "$Log_wait_SU\n";
print (" 2 connected test su\n");

$Log_wait_SU="testing";

print  ("logged in as super user\n");

###############################################
# Get into the CLI Mode
##############################################

$ssh_lsm->print("cd /pkg/6.0.0/ENB/r-01/bin");
print  ("cd to bin\n");

$ssh_lsm->print("cli.opw");
$ssh_lsm->waitfor('USERNAME :'); 
$ssh_lsm->print("ROOT");

$ssh_lsm->waitfor('PASSWORD :');  
$ssh_lsm->print("ROOT");
print  ("logged in as ROOT\n");

print "executing do_ntp_conf\n";
do_ntp_conf();
print "executing do_mme_conf\n";
do_mme_conf();
print "executing do_sys_conf\n";
do_sys_conf();
print "executing do_vlan_conf\n";
do_vlan_conf();
print "executing do_ip_addr\n";
do_ip_addr();
print "executing do_ip_route\n";
do_ip_route();
print "executing do_cell_idle\n";
do_cell_idle();
print "executing do_prach_conf\n";
#do_prach_conf();
print "executing do_cell_info\n";
#do_cell_info();
print "executing do_cell_acs\n";
do_cell_acs();
print "executing do_enbplmn_info\n";
do_enbplmn_info();
print "executing do_cellplmn_info\n";
do_cellplmn_info();
print "executing do_gps_invt\n";
do_gps_invt();
print "executing do_gps_sts\n";
do_gps_sts();
print "executing do_rrh_invt\n";
do_rrh_invt();
print "executing do_eaiu_invt\n";
do_eaiu_invt();
print "executing do_eaiu_sts\n";
do_eaiu_sts();
print "executing do_s1_sts\n";
do_s1_sts();
print "executing do_x2_sts\n";
do_x2_sts();
#print "executing do_bf_sts\n"; # not on 66
#do_bf_sts();
print "executing do_bf_conf\n";
do_bf_conf();
print "executing do_pos_conf\n";
do_pos_conf();
print "executing do_cell_sts\n";
do_cell_sts();
print "executing do_rrh_conf\n";
do_rrh_conf();
print "executing do_rrh_conf\n";
do_rrh_conf0();
print "executing do_ret_inf\n";
do_ret_inf();
print "executing do_alm_list\n";
do_alm_list();
print "executing do_alm_log\n";
do_alm_log();
#print "executing do_punctmode_idle\n"; # not on 66
#do_punctmode_idle();
print "executing do_nbr_eutran\n";
do_nbr_eutran();
print "executing do_c1xrtt_preg\n";
do_c1xrtt_preg();
print "executing do_c1xrtt_mobil\n";
do_c1xrtt_mobil();
print "executing do_sonfn_cell\n";
do_sonfn_cell();
print "executing do_cell_cac\n";
do_cell_cac();
print "executing do_ca_coloc\n";
do_ca_coloc();
print "executing do_cacell_info\n";
do_cacell_info();
print "executing do_casched_inf\n";
do_casched_inf();
print "executing do_caband_info\n";
do_caband_info();
#print "executing do_ald_invt0\n";
#do_ald_invt0();
#print "executing do_ald_invt4\n";
#do_ald_invt4();
#print "executing do_ald_invt8\n";
#do_ald_invt8();
print "executing do_uecnt\n";
do_cell_uecnt();
print "executing do_mon_test\n";
do_mon_test();

}
else
{ print ("Not Connect"); 
}

my $semicol=";\n";
sub do_mme_conf()
{
   $ssh_lsm->print("RTRV-MME-CONF;");
   $ssh_lsm->waitfor("]"); $ssh_lsm->waitfor("]");
   my $fil = $ssh_lsm->waitfor(";");
   sleep 3;
   #my @mme_conf = getData( $fil );
   $fil="$fil$semicol";
   print ("$fil\n");
   my $fname = $RetLogFile.'RTRV-MME-CONF.txt';
   create_log_file($fname, $fil);
    
}

sub do_sys_conf()
{
   $ssh_lsm->print("RTRV-SYS-CONF;");
   $ssh_lsm->waitfor("]"); $ssh_lsm->waitfor("]");
   my $fil = $ssh_lsm->waitfor(";");
   sleep 3;
  # my @sys_conf = getData( $fil );
   $fil=$fil.$semicol;
   print ("$fil\n");
   my $fname = $RetLogFile.'RTRV-SYS-CONF.txt';
   create_log_file($fname, $fil);
}

sub do_vlan_conf()
{
   $ssh_lsm->print("RTRV-VLAN-CONF;");
   $ssh_lsm->waitfor("]"); $ssh_lsm->waitfor("]");
   my $fil = $ssh_lsm->waitfor(";");
   sleep 3;
   
   #my @vlan_conf = getData( $fil );
   $fil=$fil.$semicol;
   print ("$fil\n");
   my $fname = $RetLogFile.'RTRV-VLAN-CONF.txt';
   create_log_file($fname, $fil);
}

sub do_ip_addr()
{
   $ssh_lsm->print("RTRV-IP-ADDR;");
   $ssh_lsm->waitfor("]"); $ssh_lsm->waitfor("]");
   my $fil = $ssh_lsm->waitfor(";");
   sleep 3;
   #my @ip_addr = getData( $fil );
      
   $fil=$fil.$semicol;
   print ("$fil\n");
   my $fname = $RetLogFile.'RTRV-IP-ADDR.txt';
   create_log_file($fname, $fil);
}

sub do_ip_route()
{
   $ssh_lsm->print("RTRV-IP-ROUTE;");
   $ssh_lsm->waitfor("]"); $ssh_lsm->waitfor("]");
   my $fil = $ssh_lsm->waitfor(";");
   sleep 3;
   #my @ip_route = getData( $fil );
   $fil=$fil.$semicol;
   print ("$fil\n");
   my $fname = $RetLogFile.'RTRV-IP-ROUTE.txt';
   create_log_file($fname, $fil);
}

sub do_ntp_conf()
{
   $ssh_lsm->print("RTRV-NTP-CONF;");
   $ssh_lsm->waitfor("]"); $ssh_lsm->waitfor("]");
   my $fil = $ssh_lsm->waitfor(";");
   sleep 3;
   #my @ntp_conf = getData( $fil );
   $fil="$fil$semicol";
   print ("$fil\n");
   my $fname = $RetLogFile.'RTRV-NTP-CONF.txt';
   create_log_file($fname, $fil);
}

sub do_cell_idle()
{
   $ssh_lsm->print("RTRV-CELL-IDLE;");
   $ssh_lsm->waitfor("]"); $ssh_lsm->waitfor("]");
   my $fil = $ssh_lsm->waitfor(";");
   print ("$fil\n");
   sleep 3;
   #my @cell_idle = getData( $fil );
   $fil="$fil$semicol";
   my $fname = $RetLogFile.'RTRV-CELL-IDLE.txt';
   create_log_file($fname, $fil);
}

sub do_prach_conf()
{
   $ssh_lsm->print("RTRV-PRACH-CONF;");
   $ssh_lsm->waitfor("]"); $ssh_lsm->waitfor("]");
   my $fil = $ssh_lsm->waitfor(";");
   sleep 3;
   #my @prach_conf = getData( $fil );
   $fil="$fil$semicol";
   print ("$fil\n");
   my $fname = $RetLogFile.'RTRV-PRACH-CONF.txt';
   create_log_file($fname, $fil);
}

sub do_cell_info() 
{
   $ssh_lsm->print("RTRV-CELL-INFO;");
   $ssh_lsm->waitfor("]"); $ssh_lsm->waitfor("]");
   my $fil = $ssh_lsm->waitfor(";");
   sleep 3;
   #my @cell_info = getData( $fil );
   $fil="$fil$semicol";
   print ("$fil\n");
   my $fname = $RetLogFile.'RTRV-CELL-INFO.txt';
   create_log_file($fname, $fil);
}

sub do_cell_acs()
{
   $ssh_lsm->print("RTRV-CELL-ACS;");
   $ssh_lsm->waitfor("]"); $ssh_lsm->waitfor("]");
   my $fil = $ssh_lsm->waitfor(";");
   sleep 3;
   #my @cell_acs = getData( $fil );
   $fil="$fil$semicol";
   print ("$fil\n");
   my $fname = $RetLogFile.'RTRV-CELL-ACS.txt';
   create_log_file($fname, $fil);
}

sub do_enbplmn_info()
{
   $ssh_lsm->print("RTRV-ENBPLMN-INFO;");
   $ssh_lsm->waitfor("]"); $ssh_lsm->waitfor("]");
   my $fil = $ssh_lsm->waitfor(";");
   sleep 3;
   #my @enbplmn_info = getData( $fil );
   $fil="$fil$semicol";
   my $fname = $RetLogFile.'RTRV-ENBPLMN-INFO.txt';
   print ("$fil\n");
   create_log_file($fname, $fil);
}

sub do_cellplmn_info()
{
   $ssh_lsm->print("RTRV-CELLPLMN-INFO;");
   $ssh_lsm->waitfor("]"); $ssh_lsm->waitfor("]");
   my $fil = $ssh_lsm->waitfor(";");
   sleep 3;
   #my @cellplmn_info = getData( $fil );
   $fil="$fil$semicol";
   print ("$fil\n");
   my $fname = $RetLogFile.'RTRV-CELLPLMN-CONF.txt';
   create_log_file($fname, $fil);
}

sub do_gps_invt()  
{
   $ssh_lsm->print("RTRV-GPS-INVT;");
   $ssh_lsm->waitfor("]"); $ssh_lsm->waitfor("]");
   my $fil = $ssh_lsm->waitfor(";");
   sleep 3;
   #my @gps_invt = getData( $fil );
   $fil="$fil$semicol";
   print ("$fil\n");
   my $fname = $RetLogFile.'RTRV-GPS-INVT.txt';
   create_log_file($fname, $fil);
}

sub do_gps_sts() 
{
   $ssh_lsm->print("RTRV-GPS-STS;");
   $ssh_lsm->waitfor("]"); $ssh_lsm->waitfor("]");
   my $fil = $ssh_lsm->waitfor(";");
   sleep 3;
   #my @gps_sts = getData( $fil );
   $fil="$fil$semicol";
   print ("$fil\n");
   my $fname = $RetLogFile.'RTRV-GPS-STS.txt';
   create_log_file($fname, $fil);
}

sub do_rrh_invt()
{
   $ssh_lsm->print("RTRV-RRH-INVT;");
   $ssh_lsm->waitfor("]"); $ssh_lsm->waitfor("]");
   my $fil = $ssh_lsm->waitfor(";");
   sleep 3;
   #my @rrh_invt = getData( $fil );
   $fil="$fil$semicol";
   print ("$fil\n");
   my $fname = $RetLogFile.'RTRV-RRH-INVT.txt';
   create_log_file($fname, $fil);
}

sub do_eaiu_invt() 
{
   $ssh_lsm->print("RTRV-EAIU-INVT;");
   $ssh_lsm->waitfor("]"); $ssh_lsm->waitfor("]");
   my $fil = $ssh_lsm->waitfor(";");
   sleep 3;
   #my @eaiu_invt = getData( $fil );
   $fil="$fil$semicol";
   print ("$fil\n");
   my $fname = $RetLogFile.'RTRV-EAIU-INVT.txt';
   create_log_file($fname, $fil);
}

sub do_eaiu_sts()
{
   $ssh_lsm->print("RTRV-EAIU-STS;");
   $ssh_lsm->waitfor("]"); $ssh_lsm->waitfor("]");
   my $fil = $ssh_lsm->waitfor(";");
   sleep 3;
   #my @eaiu_sts = getData( $fil );
   $fil="$fil$semicol";
   print ("$fil\n");
   my $fname = $RetLogFile.'RTRV-EAIU-STS.txt';
   create_log_file($fname, $fil);
}

sub do_s1_sts()
{
   $ssh_lsm->print("RTRV-S1-STS;");
   $ssh_lsm->waitfor("]"); $ssh_lsm->waitfor("]");
   my $fil = $ssh_lsm->waitfor(";");
   sleep 3;
   #my @s1_sts = getData( $fil );
   $fil="$fil$semicol";
   print ("$fil\n");
   my $fname = $RetLogFile.'RTRV-S1-STS.txt';
   create_log_file($fname, $fil);
}

sub do_x2_sts()
{
   $ssh_lsm->print("RTRV-X2-STS;");
   $ssh_lsm->waitfor("]"); $ssh_lsm->waitfor("]");
   my $fil = $ssh_lsm->waitfor(";");
   sleep 3;
   #my @x2_sts = getData( $fil );
   $fil="$fil$semicol";
   print ("$fil\n");
   my $fname = $RetLogFile.'RTRV-X2-STS.txt';
   create_log_file($fname, $fil);
}

sub do_bf_sts()
{
   $ssh_lsm->print("RTRV-BF-STS;");
   $ssh_lsm->waitfor("]"); $ssh_lsm->waitfor("]");
   my $fil = $ssh_lsm->waitfor(";");
   sleep 3;
   #my @bf_sts = getData( $fil );
   $fil="$fil$semicol";
   print ("$fil\n");
   my $fname = $RetLogFile.'RTRV-BF-STS.txt';
   create_log_file($fname, $fil);
}

sub do_bf_conf()
{
   $ssh_lsm->print("RTRV-BF-CONF;");
   $ssh_lsm->waitfor("]"); $ssh_lsm->waitfor("]");
   my $fil = $ssh_lsm->waitfor(";");
   sleep 3;
   #my @bf_conf = getData( $fil );
   $fil="$fil$semicol";
   print ("$fil\n");
   my $fname = $RetLogFile.'RTRV-BF-CONF.txt';
   create_log_file($fname, $fil);
}

sub do_pos_conf()
{
   $ssh_lsm->print("RTRV-POS-CONF;");
   $ssh_lsm->waitfor("]"); $ssh_lsm->waitfor("]");
   my $fil = $ssh_lsm->waitfor(";");
   sleep 3;
   #my @pos_conf = getData( $fil );
   $fil="$fil$semicol";
   print ("$fil\n");
   my $fname = $RetLogFile.'RTRV-POS-CONF.txt';
   create_log_file($fname, $fil);
}

sub do_cell_sts()
{
   $ssh_lsm->print("RTRV-CELL-STS;");
   $ssh_lsm->waitfor("]"); $ssh_lsm->waitfor("]");
   my $fil = $ssh_lsm->waitfor(";");
   sleep 3;
   #my @cell_sts = getData( $fil );
   $fil="$fil$semicol";
   print ("$fil\n");
   my $fname = $RetLogFile.'RTRV-CELL-STS.txt';
   create_log_file($fname, $fil);
}

sub do_rrh_conf()
{
   $ssh_lsm->print("RTRV-RRH-CONF:;");
   $ssh_lsm->waitfor("]"); $ssh_lsm->waitfor("]");
   my $fil = $ssh_lsm->waitfor(";");
   sleep 3;
   #my @rrh_conf = getData( $fil );
   $fil="$fil$semicol";
   print ("$fil\n");
   my $fname = $RetLogFile.'RTRV-RRH-CONF.txt';
   create_log_file($fname, $fil);
}

sub do_rrh_conf0()
{
   $ssh_lsm->print("RTRV-RRH-CONF:CONNECT_BOARD_ID=0,CONNECT_PORT_ID=0;");
   $ssh_lsm->waitfor("]"); $ssh_lsm->waitfor("]");
   my $fil = $ssh_lsm->waitfor(";");
   sleep 3;
   #my @rrh_conf = getData( $fil );
   $fil="$fil$semicol";
   print ("$fil\n");
   my $fname = $RetLogFile.'RTRV-RRH-CONF-0.txt';
   create_log_file($fname, $fil);
}

sub do_ret_inf()  
{
   $ssh_lsm->print("RTRV-RET-INF;");
   $ssh_lsm->waitfor("]"); $ssh_lsm->waitfor("]");
   my $fil = $ssh_lsm->waitfor(";");
   sleep 3;
   #my @ret_inf = getData( $fil );
   $fil="$fil$semicol";
   print ("$fil\n");
   my $fname = $RetLogFile.'RTRV-RET-INF.txt';
   create_log_file($fname, $fil);
}

sub do_alm_list()
{
   $ssh_lsm->print("RTRV-ALM-LIST:;");
   $ssh_lsm->waitfor("]"); $ssh_lsm->waitfor("]");
   my $fil = $ssh_lsm->waitfor(";");
   sleep 3;
   #my @alm_list = getData( $fil );
   $fil="$fil$semicol";
   print ("$fil\n");
   my $fname = $RetLogFile.'RTRV-ALM-LIST.txt';
   create_log_file($fname, $fil);
}

sub do_alm_log()
{
   $ssh_lsm->print("RTRV-ALM-LOG;");
   $ssh_lsm->waitfor("]"); $ssh_lsm->waitfor("]");
   my $fil = $ssh_lsm->waitfor(";");
   sleep 3;
   #my @alm_log = getData( $fil );
   $fil="$fil$semicol";
   print ("$fil\n");
   my $fname = $RetLogFile.'RTRV-ALM-LOG.txt';
   create_log_file($fname, $fil);
}

sub do_punctmode_idle()  
{
   $ssh_lsm->print("RTRV-PUNCTMODE-IDLE;");
   $ssh_lsm->waitfor("]"); $ssh_lsm->waitfor("]");
   my $fil = $ssh_lsm->waitfor(";");
   sleep 3;
   #my @punctmode_idle = getData( $fil );
   $fil="$fil$semicol";
   print ("$fil\n");
   my $fname = $RetLogFile.'RTRV-PUNCTMODE-IDLE.txt';
   create_log_file($fname, $fil);
}

sub do_nbr_eutran()
{
   $ssh_lsm->print("RTRV-NBR-EUTRAN:CELL_NUM=0;");
   $ssh_lsm->waitfor("]"); $ssh_lsm->waitfor("]");
   my $fil = $ssh_lsm->waitfor(";");
   sleep 3;
   #my @nbr_eutran = getData( $fil );
   $fil="$fil$semicol";
   print ("$fil\n");
   my $fname = $RetLogFile.'RTRV-NBR-EUTRAN-0.txt';
   create_log_file($fname, $fil);
}

sub do_c1xrtt_preg()
{
   $ssh_lsm->print("RTRV-C1XRTT-PREG;");
   $ssh_lsm->waitfor("]"); $ssh_lsm->waitfor("]");
   my $fil = $ssh_lsm->waitfor(";");
   sleep 3;
   #my @c1xrtt_preg = getData( $fil );
   $fil="$fil$semicol";
   print ("$fil\n");
   my $fname = $RetLogFile.'RTRV-C1XRTT-PREG.txt';
   create_log_file($fname, $fil);
}

sub do_c1xrtt_mobil()
{
   $ssh_lsm->print("RTRV-C1XRTT-MOBIL;");
   $ssh_lsm->waitfor("]"); $ssh_lsm->waitfor("]");
   my $fil = $ssh_lsm->waitfor(";");
   sleep 3;
   #my @c1xrtt_mobil = getData( $fil );
   $fil="$fil$semicol";
   print ("$fil\n");
   my $fname = $RetLogFile.'RTRV-C1XRTT-MOBIL.txt';
   create_log_file($fname, $fil);
}

sub do_sonfn_cell() 
{
   $ssh_lsm->print("RTRV-SONFN-CELL:;");
   $ssh_lsm->waitfor("]"); $ssh_lsm->waitfor("]");
   my $fil = $ssh_lsm->waitfor(";");
   sleep 3;
   #my @sonfn_cell = getData( $fil );
   $fil="$fil$semicol";
   print ("$fil\n");
   my $fname = $RetLogFile.'RTRV-SONFN-CELL.txt';
   create_log_file($fname, $fil);
}

sub do_cell_cac()
{
   $ssh_lsm->print("RTRV-CELL-CAC;");
   $ssh_lsm->waitfor("]"); $ssh_lsm->waitfor("]");
   my $fil = $ssh_lsm->waitfor(";");
   sleep 3;
   #my @cell_cac = getData( $fil );
   $fil="$fil$semicol";
   print ("$fil\n");
   my $fname = $RetLogFile.'RTRV-CELL-CAC.txt';
   create_log_file($fname, $fil);
}

sub do_ca_coloc() 
{
   $ssh_lsm->print("RTRV-CA-COLOC;");
   $ssh_lsm->waitfor("]"); $ssh_lsm->waitfor("]");
   my $fil = $ssh_lsm->waitfor(";");
   sleep 3;
   #my @ca_coloc = getData( $fil );
   $fil="$fil$semicol";
   print ("$fil\n");
   my $fname = $RetLogFile.'RTRV-CA-COLOC.txt';
   create_log_file($fname, $fil);
}

sub do_cacell_info()
{
   $ssh_lsm->print("RTRV-CACELL-INFO;");
   $ssh_lsm->waitfor("]"); $ssh_lsm->waitfor("]");
   my $fil = $ssh_lsm->waitfor(";");
   sleep 3;
   #my @cacell_info = getData( $fil );
   $fil="$fil$semicol";
   print ("$fil\n");
   my $fname = $RetLogFile.'RTRV-CACELL-INFO.txt';
   create_log_file($fname, $fil);
}

sub do_casched_inf()
{
   $ssh_lsm->print("RTRV-CASCHED-INF;");
   $ssh_lsm->waitfor("]"); $ssh_lsm->waitfor("]");
   my $fil = $ssh_lsm->waitfor(";");
   sleep 3;
   #my @casched_inf = getData( $fil );
   $fil="$fil$semicol";
   print ("$fil\n");
   my $fname = $RetLogFile.'RTRV-CASCHED-INF.txt';
   create_log_file($fname, $fil);
}

sub do_caband_info()
{
   $ssh_lsm->print("RTRV-CABAND-INFO;");
   $ssh_lsm->waitfor("]"); $ssh_lsm->waitfor("]");
   my $fil = $ssh_lsm->waitfor(";");
   sleep 3;
 #  my @caband_info = getData( $fil );
   $fil="$fil$semicol";
   print ("$fil\n");
   my $fname = $RetLogFile.'RTRV-CABAND-INFO.txt';
   create_log_file($fname, $fil);

}

sub do_ald_invt0()
{
   $ssh_lsm->print("RTRV-ALD-INVT:CONN_BD_ID=1,CONN_PORT_ID=0,ALD_ID=0;");
   $ssh_lsm->waitfor("]"); $ssh_lsm->waitfor("]");
   my $fil = $ssh_lsm->waitfor(";");
   sleep 3;
   #my @ald_invt = getData( $fil );
   $fil="$fil$semicol";
   print ("$fil\n");
   my $fname = $RetLogFile.'RTRV-ALD-INVT-0.txt';
   create_log_file($fname, $fil);
}

sub do_ald_invt4()
{
   $ssh_lsm->print("RTRV-ALD-INVT:CONN_BD_ID=1,CONN_PORT_ID=4,ALD_ID=0;");
   $ssh_lsm->waitfor("]"); $ssh_lsm->waitfor("]");
   my $fil = $ssh_lsm->waitfor(";");
   sleep 3;
   #my @ald_invt = getData( $fil );
   $fil="$fil$semicol";
   print ("$fil\n");
   my $fname = $RetLogFile.'RTRV-ALD-INVT-4.txt';
   create_log_file($fname, $fil);
}

sub do_ald_invt8()
{
   $ssh_lsm->print("RTRV-ALD-INVT:CONN_BD_ID=1,CONN_PORT_ID=8,ALD_ID=0;");
   $ssh_lsm->waitfor("]"); $ssh_lsm->waitfor("]");
   my $fil = $ssh_lsm->waitfor(";");
   sleep 3;
   my @ald_invt = getData( $fil );
   $fil="$fil$semicol";
   print ("$fil\n");
   my $fname = $RetLogFile.'RTRV-ALD-INVT-8.txt';
   create_log_file($fname, $fil);
}

sub do_cell_uecnt()
{
   $ssh_lsm->print("RTRV-CELL-UECNT;");
   $ssh_lsm->waitfor("]"); $ssh_lsm->waitfor("]");
   my $fil = $ssh_lsm->waitfor(";");
   sleep 3;
   #my @cell_uecnt = getData( $fil );
   $fil="$fil$semicol";
   print ("$fil\n");
   my $fname = $RetLogFile.'RTRV-CELL-UECNT.txt';
   create_log_file($fname, $fil);
}

sub do_mon_test()
{
   $ssh_lsm->print("MON-TEST;");
   $ssh_lsm->waitfor("]"); $ssh_lsm->waitfor("]");
   my $fil = $ssh_lsm->waitfor(";");
   sleep 3;
   #my @mon_test = getData( $fil );
   $fil="$fil$semicol";
   print ("$fil\n");
   my $fname = $RetLogFile.'RTRV-CELL-UECNT.txt';
   create_log_file($fname, $fil);
   
}

sub getData
{
   my (@splitLine,$splitLine);
   @splitLine = split (/\n/,$_[0]);
   my $commandType = "nv";
   foreach $splitLine (@splitLine)
   {
       my $res = index($splitLine, "=======") ;
       if ( $res != -1 )
       {
	       $commandType = "list";
       }
   }
   if ( $commandType eq "nv" )
   {
          print "nv $commandType\n";
	  my @result = getDataNameValue( $_[0]);
	  print "$result[0]\n";
   }
   else
   {
          print "list $commandType\n";
	  my @result = getDataList( $_[0]);
          print "@$_\n" for @result;
   }
   return ( @result );
}

sub getDataList
{
    my (@splitLine,$splitLine);
    @splitLine = split (/\n/,$_[0]);
    my $count = 0;
    my @row;
    my $i = 0;
    foreach $splitLine (@splitLine)
    {
	my $res = index( $splitLine, "==========");
	if ( $res != -1 )
	{
		$count = $count + 1 ;
	        next if ( $count == 2 );
        }
	if ( $count == 2 )
	{
              @values = split (/\s\s\s+/,$splitLine);
              for ($j=0; $j<scalar(@values);$j++) 
	      {
                  $row[$i][$j] = $values[$j];
               }
               $i=$i+1; 
       }
     } 
     return(@row);
}

sub getDataNameValue
{
   my (@splitLine,$splitLine);
   @splitLine = split (/\n/,$_[0]);

   my @lhs;
   my $data;
   my $val;
   my $count=0;
   foreach $splitLine (@splitLine)
   {
	if ( index($splitLine,   "COMPLD") != -1) 
	{
		$count= $count + 1;
	}
	if ( $count == 1)
	{
           $count = 2;
	   next;
	}
        if ( $count == 2 and index($splitLine,   "COMPLD") != -1) 
	{
		$count = 3;
        }

	if ( $count == 2)
	{
	    @lhs=split(/\s=\s(.*)/,$splitLine);
	    $val = $lhs[1];
	    if ( $data eq "")
	    {
	       $data =  $val;
            }
	    else
	    {
	       $data = $data . ',' . $val;
	    }
        }
   }
   return ($data);
}

sub create_log_file {
	my ($fname, $buffer) = @_;
    open ($FHNDL, ">$fname");
	print ($FHNDL $buffer);
	close ($FHNDL);
}

#}