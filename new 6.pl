#!/usr/bin/perl
use POSIX;
use Net::SSH2;

use Control::CLI;
use Data::Dumper;

#use Net::SSH::Expect;

my $IP="105.66.51.114";
my $user="root";
my $pass="root123";

my $ssh_lsm = new Control::CLI(Use => 'SSH',
                        Prompt => ']',
			Errmode=> 'return',
                        Timeout=> '240');

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

sub createFile 
{
  open( TMPFILE, ">files\\66\\$_[0]");
  print ( TMPFILE $_[1] );
  close(TMPFILE);
}

my $colon = ";\n";
$ssh_lsm->print("RTRV-ALM-LIST;");
$ssh_lsm->waitfor('ACTIVE ALARMS');
my $fil = $ssh_lsm->waitfor(";");
sleep 3;
$fil = "$fil$colon";

my $fileName= "RTRV-ALM-LIST.txt";
createFile( $fileName, $fil );


$ssh_lsm->print("RTRV-SYS-CONF;");
$ssh_lsm->waitfor('RETRIEVE SYSTEM');
my $fil = $ssh_lsm->waitfor(";");
sleep 3;
$fil = "$fil$colon";
print "RTRV-SYS-CONF: $fil\n";

my $fileName= "RTRV-SYS-CONF.txt";
createFile( $fileName, $fil );

$ssh_lsm->print("RTRV-VLAN-CONF;");
$ssh_lsm->waitfor('RETRIEVE VLAN');
my $fil = $ssh_lsm->waitfor(";");
sleep 3;
$fil = "$fil$colon";
print "RTRV-VLAN-CONF: $fil\n";

my $fileName= "RTRV-VLAN-CONF.txt";
createFile( $fileName, $fil );

$ssh_lsm->print("RTRV-IP-ADDR;");
$ssh_lsm->waitfor('RETRIEVE IP');
my $fil = $ssh_lsm->waitfor(";");
sleep 3;
$fil = "$fil$colon";
print "RTRV-IP-ADDR: $fil\n";

my $fileName= "RTRV-IP-ADDR.txt";
createFile( $fileName, $fil );


$ssh_lsm->print("RTRV-IP-ROUTE;");
$ssh_lsm->waitfor('RETRIEVE IP ROUTE');
my $fil = $ssh_lsm->waitfor(";");
sleep 3;
$fil = "$fil$colon";
print "RTRV-IP-ROUTE: $fil\n";

my $fileName= "RTRV-IP-ROUTE.txt";
createFile( $fileName, $fil );


$ssh_lsm->print("RTRV-NTP-CONF;");
$ssh_lsm->waitfor('RETRIEVE NTP');
my $fil = $ssh_lsm->waitfor(";");
sleep 3;
$fil = "$fil$colon";
print "RTRV-NTP-CONF: $fil\n";

my $fileName= "RTRV-NTP-CONF.txt";
createFile( $fileName, $fil );


$ssh_lsm->print("RTRV-CELL-IDLE;");
$ssh_lsm->waitfor('RETRIEVE EUTRAN');
my $fil = $ssh_lsm->waitfor(";");
sleep 3;
$fil = "$fil$colon";
print "RTRV-CELL-IDLE: $fil\n";

my $fileName= "RTRV-CELL-IDLE.txt";
createFile( $fileName, $fil );


$ssh_lsm->print("RTRV-PRACH-CONF;");
$ssh_lsm->waitfor('RETRIEVE PRACH');
my $fil = $ssh_lsm->waitfor(";");
sleep 3;
$fil = "$fil$colon";
print "RTRV-PRACH-CONF: $fil\n";

my $fileName= "RTRV-PRACH-CONF.txt";
createFile( $fileName, $fil );


$ssh_lsm->print("RTRV-CELL-INFO;");
$ssh_lsm->waitfor('RETRIEVE EUTRAN CELL');
my $fil = $ssh_lsm->waitfor(";");
sleep 3;
$fil = "$fil$colon";
print "RTRV-CELL-INFO: $fil\n";

my $fileName= "RTRV-CELL-INFO.txt";
createFile( $fileName, $fil );


$ssh_lsm->print("RTRV-ALM-LOG;");

$ssh_lsm->print("RTRV-CELL-ACS;");
$ssh_lsm->waitfor('RETRIEVE CELL ACCESS');
my $fil = $ssh_lsm->waitfor(";");
sleep 3;
$fil = "$fil$colon";
print "RTRV-CELL-ACS: $fil\n";

my $fileName= "RTRV-CELL-ACS.txt";
createFile( $fileName, $fil );


$ssh_lsm->print("RTRV-CELLPLMN-INFO;");
$ssh_lsm->waitfor('RETRIEVE CELL PLMN');
my $fil = $ssh_lsm->waitfor(";");
sleep 3;
$fil = "$fil$colon";
print "RTRV-CELLPLMN-INFO: $fil\n";

my $fileName= "RTRV-CELLPLMN-INFO.txt";
createFile( $fileName, $fil );


$ssh_lsm->print("RTRV-ENBPLMN-INFO;");
$ssh_lsm->waitfor('');
my $fil = $ssh_lsm->waitfor(";");
sleep 3;
$fil = "$fil$colon";
print "RTRV-ENBPLMN-INFO: $fil\n";

my $fileName= "RTRV-ENBPLMN-INFO.txt";
createFile( $fileName, $fil );


$ssh_lsm->print("RTRV-EUTRA-FA;");
$ssh_lsm->waitfor('RETRIEVE EUTRA FA');
my $fil = $ssh_lsm->waitfor(";");
sleep 3;
$fil = "$fil$colon";
print "RTRV-EUTRA-FA: $fil\n";

my $fileName= "RTRV-EVTRA-FA.txt";
createFile( $fileName, $fil );

$ssh_lsm->print("RTRV-VLAN-CONF;");
$ssh_lsm->waitfor('RETRIEVE VLAN');
my $fil = $ssh_lsm->waitfor(";");
sleep 3;
$fil = "$fil$colon";
print "RTRV-VLAN-CONF: $fil\n";

my $fileName= "RTRV-VLAN-CONF.txt";
createFile( $fileName, $fil );


} else {
print ("Not Connect");
}

