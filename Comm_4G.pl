y $Lsmr_IP=$ARGV[2];
my $Cdu_IP=$ARGV[3];
my $eNodeID=$ARGV[4];
my $eNodeName=$ARGV[5];
my $eNodeFmt = "\[ $eNodeName \]:";

#print "eNodeID=".$eNodeID;

my $searchString = "$eNodeID ";

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

my $Lsmr_Connect = $ssh_lsm->connect(Host => $Lsmr_IP,
          Username => $user,
          Password => $pass,
        PrivateKey => '.ssh/id_dsa');

if ($Lsmr_Connect) {		#start if connected

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

############LSMR TEST##########################
#$ssh_lsm->print("cmd eNB66 RTRV-ALM-LIST;");
#$ssh_lsm->waitfor(";");
#my $Log = $ssh_lsm->waitfor(';');
#print $Log;

#my $fname = $RetLogFile.'RTRV-ALM-LIST-LSMR.txt';
#   create_log_file($fname, $Log);
#exit;

###############################################

#my $CDUIP="172.33.24.56";
#my $CDUIP="66.1.1.2";
my $CDUuser="lteuser";
my $CDUpass="samsunglte";

#print "CDUIP=".$Cdu_IP;
print ("\n\n Connecting to DU \n\n");
					     
#$ssh_lsm->cmd("ssh lteuser\@$CDUIP");
#$ssh_lsm->cmd("cmd_sys eNB_66 RTRV-ALM-LIST");
$ssh_lsm->print("ssh lteuser\@$Cdu_IP");

sleep 3;


$ssh_lsm->print('yes');
sleep 3;


my $Log = $ssh_lsm->waitfor('password:');
print "$Log\n";

$ssh_lsm->print("samsunglte");


$Log_wait=$ssh_lsm->waitfor('\$');
print "$Log_wait\n";

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


#$Log_wait_SU=$ssh_lsm->waitfor('\~');
print "$Log_wait_SU\n";

$Log_wait_SU="testing";

print  ("logged in as super user\n");

###############################################
# Get into the CLI Mode
##############################################

#$ssh_lsm->print("cd /pkg/6.0.0/ENB/r-01/bin");
$ssh_lsm->print("cd /pkg/$pkg_no/ENB/r-01/bin");

$ssh_lsm->print("cli.opw");
$ssh_lsm->waitfor('USERNAME :'); 
$ssh_lsm->print("ROOT");

$ssh_lsm->waitfor('PASSWORD :');  
$ssh_lsm->print("ROOT");
#print  ("logged in as ROOT\n");

#open (FILE_4G_ECFSB_OP, ">$fname1"); #Opne the file handle for the consolidated output file



#close (FILE_4G_ECFSB_OP); #Close the file handle for the consolidated output file
#print_ecfsb_html("eNB66","66");

}
else
{ 
print ("Not Connected"); 
}



sub chg_c1xrtt_ecsfb {

    my $num_pn = 2;
	my $carrier_index = 0;
	
	for ( my $i=0; $i<20; $i=$i+1) {
        for ( my $j=0; $j < 20; $j=$j+1) {
			if (ret_vendor_ciq_info2($cid, $enode_id, $j,21) == $i)		{
				#Connect to 4G, Cell site and run below command 
				print "cell id ${i} found at ${j} position in the CIQ";
				
				if (( $i == 0 ) || ($i==1) || ($i == 9) || ($i == 10) || ($i ==18) || ($i == 19) || ( $i==3 ) || ($i == 6) || ($i == 12) || ($i == 4) || ($i==7) || ($i == 13) || ($i == 5) || ($i == 8) || ($i == 14)) {
					$carrier_index=0;
				} else if (($i==2) || ($i==11) || ($i==20)) {
					$carrier_index=2;
				} else {
					print "carrier_index=??";
				}
				$ssh_lsm->print("CHG-C1XRTT-ECSFB:CELL_NUM=$i,CARRIER_INDEX=$carrier_index,NUM1_X_PN=$num_pn");
				
				$ssh_lsm->waitfor($searchString);
				my $fil = $ssh_lsm->waitfor(";");
				
				sleep 3;
   
				$fil="$enode_id $fil";
				print ("$enode_id $fil\n");
			} else {
				print "cell id ${i} not found in the CIQ";
			}
		}
	}
}
