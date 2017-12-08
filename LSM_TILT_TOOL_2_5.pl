use POSIX;
use Net::SSH2;

use Control::CLI;
use Data::Dumper;



my (@input,$input);
@input = split(/,/,$ARGV[0]);

my ($LSM, $IP, $user, $pass, $eNBName,$cascade,$rootpass,$version);

my ($port1,$port2,$port3);
my ($ald1,$ald2,$ald3);

my (@split_each_line_cell,$split_each_line_cell);

my($now);

$now = strftime("%m%d%Y_%H_%M_%S", localtime);


$eNBName = $input[0];
$LSM = $input[1];
$IP = $input[2];
$user = $input[3];
$pass = $input[4];
$eNBIP = $input[5];
$cascade = $input[6];
$aplhaid = $input[7];
$betaid = $input[8];
$gammaid = $input[9];
$aplhatilt = $input[10];
$betatilt = $input[11];
$gammatilt = $input[12];
$rootpass = $input[13];
$version = $input[14];

if ($version eq "") {$version="5.0.2"};

print $version;

# $user = "nacread01";
# $pass = "hmbrgr.246";

$aplhatilt = $aplhatilt * 10;
$betatilt = $betatilt * 10;
$gammatilt = $gammatilt * 10;


if ($aplhatilt < 0){
      $aplhatilt = $aplhatilt * -1;
                   }
                  
if ($betatilt < 0){
      $betatilt = $betatilt * -1;
                   }                  

if ($gammatilt < 0){
      $gammatilt = $gammatilt * -1;
                   }

my $testvalidate = `C:\\3G_4G_TOOL_Scripts\\bin\\validate.exe`;
chomp ($testvalidate);


if ($testvalidate eq "true"){

open (FILE, ">C:\\3G_4G_TOOL_Scripts\\2.5\\LSM_Tilt_2.5\\LSM_Log\\$cascade\_2500_TILT_$now.txt");

my $ssh_lsm = new Control::CLI(Use => 'SSH',
                        Prompt => ']',
			Errmode=> 'return',
                        Timeout=> '240');

my $connect = $ssh_lsm->connect(Host => $IP,
          Username => $user,
          Password => $pass,
        PrivateKey => '.ssh/id_dsa');

if ($connect) {		#start if connected


$ssh_lsm->read(Blocking => 1);
# $ssh_lsm->print("cd /home/lsm/");
# $ssh_lsm->waitfor("lsm]");
# $ssh_lsm->print("su - lsm");
# $ssh_lsm->waitfor("Password:");
# $ssh_lsm->print("root123");

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

						     }	



$ssh_lsm->waitfor("]");
$ssh_lsm->print("/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName RTRV-ALDHDLC-STS;");
$ssh_lsm->waitfor(";");
my $Log = $ssh_lsm->waitfor(';');
print $Log;
print FILE $Log;

@split_each_line_cell = split (/\n/,$Log);
foreach $split_each_line_cell(@split_each_line_cell){
	
	$split_each_line_cell =~ s/^\s+//g;
	if ($split_each_line_cell =~ m/^0\s+6\s+  /) {		
	      @_ = split(/\s+/, $split_each_line_cell);
	      $ald1 = $_[3];	      
		       
					     }
	if ($split_each_line_cell =~ m/^0\s+8\s+  /) {		
	      @_ = split(/\s+/, $split_each_line_cell);
	      $ald2 = $_[3];	      
		       
					     }	
	if ($split_each_line_cell =~ m/^0\s+10\s+ /) {		
	      @_ = split(/\s+/, $split_each_line_cell);
	      $ald3 = $_[3];	      
		       
					     }

						     }	




	      }	



print "\n\n\n\n";



open (FILE, ">C:\\3G_4G_TOOL_Scripts\\2.5\\LSM_Tilt_2.5\\\Script\\$cascade\_$eNBName\_4G_Comm_2-5_Script.vbs");


print FILE "Sub Main\n";             
print FILE "xsh.Session.LogFilePath =\"C:\\3G_4G_TOOL_Scripts\\2.5\\LSM_Tilt_2.5\\Script_Log\\$cascade\_$eNBName\_Log_$now.txt\"\n";  
print FILE "xsh.Session.StartLog\n";
print FILE "xsh.Screen.send \"ssh lteuser\@$eNBIP\"\n";
print FILE "xsh.Screen.Send VbCr\n";
print FILE "xsh.Session.Sleep 2000\n";
print FILE "xsh.Screen.send \"yes\"\n";
print FILE "xsh.Screen.Send VbCr\n";
print FILE "xsh.Session.Sleep 8000\n";
print FILE "xsh.Screen.send \"samsunglte\"\n";
print FILE "xsh.Screen.Send VbCr\n";
print FILE "xsh.Session.Sleep 2000\n";
print FILE "xsh.Screen.send \"su -\"\n";
print FILE "xsh.Screen.Send VbCr\n";
print FILE "xsh.Session.Sleep 2000\n";
print FILE "xsh.Screen.send \"$rootpass\"\n";
print FILE "xsh.Screen.Send VbCr\n";
print FILE "xsh.Session.Sleep 2000\n";
print FILE "xsh.Screen.send \"cd /pkg\"\n";
print FILE "xsh.Screen.Send VbCr\n";
print FILE "xsh.Screen.send \"cd $pkg/\"\n";
print FILE "xsh.Screen.Send VbCr\n";
print FILE "xsh.Screen.send \"cd ENB\"\n";
print FILE "xsh.Screen.Send VbCr\n";
print FILE "xsh.Screen.send \"cd r-01\"\n";
print FILE "xsh.Screen.Send VbCr\n";
print FILE "xsh.Screen.send \"cd bin\"\n";
print FILE "xsh.Screen.Send VbCr\n";
print FILE "xsh.Screen.send \"cli.otm\"\n";
print FILE "xsh.Screen.Send VbCr\n";
print FILE "xsh.Screen.send \"ROOT\"\n";
print FILE "xsh.Screen.Send VbCr\n";
print FILE "xsh.Session.Sleep 2000\n";
print FILE "xsh.Screen.send \"ROOT\"\n";      
print FILE "xsh.Screen.Send VbCr\n";
print FILE "xsh.Session.Sleep 2000\n";



if (($port1 eq "EQUIP") && ($ald1 eq "ALD_UP")) {
print FILE "xsh.Screen.send \"TEST-ANT:CONNECT_BOARD_ID=0,CONNECT_PORT_ID=6,ALD_ID=0,ANT_ID_SUBUNIT_ID=1;\"\n";
print FILE "xsh.Screen.Send VbCr\n";
print FILE "xsh.Session.Sleep 1000\n";
print FILE "xsh.Screen.send \"ROOT\"\n";
print FILE "xsh.Screen.Send VbCr\n";
print FILE "xsh.Session.Sleep 30000\n";  
      }

if (($port2 eq "EQUIP") && ($ald2 eq "ALD_UP")) {
print FILE "xsh.Screen.send \"TEST-ANT:CONNECT_BOARD_ID=0,CONNECT_PORT_ID=8,ALD_ID=0,ANT_ID_SUBUNIT_ID=1;\"\n";
print FILE "xsh.Screen.Send VbCr\n";
print FILE "xsh.Session.Sleep 1000\n";
print FILE "xsh.Screen.send \"ROOT\"\n";
print FILE "xsh.Screen.Send VbCr\n";
print FILE "xsh.Session.Sleep 30000\n";
      
      }
      
if (($port3 eq "EQUIP") && ($ald3 eq "ALD_UP")) {
print FILE "xsh.Screen.send \"TEST-ANT:CONNECT_BOARD_ID=0,CONNECT_PORT_ID=10,ALD_ID=0,ANT_ID_SUBUNIT_ID=1;\"\n";
print FILE "xsh.Screen.Send VbCr\n";
print FILE "xsh.Session.Sleep 1000\n";
print FILE "xsh.Screen.send \"ROOT\"\n";
print FILE "xsh.Screen.Send VbCr\n";
print FILE "xsh.Session.Sleep 30000\n";

      
						}      
      


if (($port1 eq "EQUIP") && ($ald1 eq "ALD_UP")) {
print FILE "xsh.Screen.send \"CHG-ALD-INF:CONN_BD_ID=0,CONN_PORT_ID=6,ALD_ID=0,ANT_ID_SUBUNIT_ID=1,INSTALLED_TILT=$aplhatilt;\"\n";
print FILE "xsh.Screen.Send VbCr\n";
print FILE "xsh.Session.Sleep 1000\n";
print FILE "xsh.Screen.send \"Y\"\n";
print FILE "xsh.Screen.Send VbCr\n";
print FILE "xsh.Session.Sleep 20000\n";
     
         
      
      }

if (($port2 eq "EQUIP") && ($ald2 eq "ALD_UP")) {
print FILE "xsh.Screen.send \"CHG-ALD-INF:CONN_BD_ID=0,CONN_PORT_ID=8,ALD_ID=0,ANT_ID_SUBUNIT_ID=1,INSTALLED_TILT=$betatilt;\"\n";
print FILE "xsh.Screen.Send VbCr\n";
print FILE "xsh.Session.Sleep 1000\n";
print FILE "xsh.Screen.send \"Y\"\n";
print FILE "xsh.Screen.Send VbCr\n";
print FILE "xsh.Session.Sleep 20000\n";       
      
      }
      
if (($port3 eq "EQUIP") && ($ald3 eq "ALD_UP")) { 
print FILE "xsh.Screen.send \"CHG-ALD-INF:CONN_BD_ID=0,CONN_PORT_ID=10,ALD_ID=0,ANT_ID_SUBUNIT_ID=1,INSTALLED_TILT=$gammatilt;\"\n";
print FILE "xsh.Screen.Send VbCr\n";
print FILE "xsh.Session.Sleep 1000\n";
print FILE "xsh.Screen.send \"Y\"\n";
print FILE "xsh.Screen.Send VbCr\n";
print FILE "xsh.Session.Sleep 20000\n";      
						}   



if (($port1 eq "EQUIP") && ($ald1 eq "ALD_UP")) {
print FILE "xsh.Screen.send \"CHG-RET-INF:CONNECT_BOARD_ID=0,CONNECT_PORT_ID=6,ALD_ID=0,ANT_ID_SUBUNIT_ID=1,TILT=$aplhatilt;\"\n";
print FILE "xsh.Screen.Send VbCr\n";
print FILE "xsh.Session.Sleep 1000\n";
print FILE "xsh.Screen.send \"ROOT\"\n";
print FILE "xsh.Screen.Send VbCr\n";
print FILE "xsh.Session.Sleep 30000\n";                
      
      }

if (($port2 eq "EQUIP") && ($ald2 eq "ALD_UP")) {
print FILE "xsh.Screen.send \"CHG-RET-INF:CONNECT_BOARD_ID=0,CONNECT_PORT_ID=8,ALD_ID=0,ANT_ID_SUBUNIT_ID=1,TILT=$betatilt;\"\n";      
print FILE "xsh.Screen.Send VbCr\n";
print FILE "xsh.Session.Sleep 1000\n";
print FILE "xsh.Screen.send \"ROOT\"\n";
print FILE "xsh.Screen.Send VbCr\n";
print FILE "xsh.Session.Sleep 30000\n";        
      
      }
      
if (($port3 eq "EQUIP") && ($ald3 eq "ALD_UP")) {
print FILE "xsh.Screen.send \"CHG-RET-INF:CONNECT_BOARD_ID=0,CONNECT_PORT_ID=10,ALD_ID=0,ANT_ID_SUBUNIT_ID=1,TILT=$gammatilt;\"\n";       
print FILE "xsh.Screen.Send VbCr\n";
print FILE "xsh.Session.Sleep 1000\n";
print FILE "xsh.Screen.send \"ROOT\"\n";
print FILE "xsh.Screen.Send VbCr\n";
print FILE "xsh.Session.Sleep 30000\n";      
      
      
						}   


print FILE "xsh.Screen.send \"RTRV-RET-INF;\"\n";
print FILE "xsh.Screen.Send VbCr\n";
print FILE "xsh.Session.Sleep 5000\n";
print FILE "xsh.Screen.send \"RTRV-ALDHDLC-STS;\"\n";
print FILE "xsh.Screen.Send VbCr\n";
print FILE "xsh.Session.Sleep 5000\n";
				
				
print FILE "xsh.Screen.send \"exit;\"\n";
print FILE "xsh.Screen.Send VbCr\n";
print FILE "xsh.Session.Sleep 1200\n";
print FILE "xsh.Screen.send \"exit\"\n";
print FILE "xsh.Screen.Send VbCr\n";
print FILE "xsh.Session.Sleep 1200\n";
print FILE "xsh.Screen.send \"exit\"\n";
print FILE "xsh.Screen.Send VbCr\n";
print FILE "xsh.Session.Sleep 1200\n";				
				
				
						
print FILE "xsh.Screen.Send VbCr\n";
print FILE "xsh.Session.StopLog\n";
print FILE "End Sub\n";

close (FILE);

print "2.5 TILT Script Loaded to C:\\3G_4G_TOOL_Scripts\\2.5\\LSM_Tilt_2.5\\Script\n";
sleep 2;		     						

}
