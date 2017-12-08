#!/usr/bin/perl

use POSIX;

my (@input);
my ($market,$eNBID,$mmbsOAMIP,$firstENBId,$secondENBId,$mmbsSBIP,$csrIP,$alphaPCI,$betaPCI,$gammaPCI,$TAC,$cascadeID,$optgp,$alphaPCI800,$betaPCI800,$gammaPCI800,$alphaRSI,$betaRSI,$gammaRSI,$lat,$long,$aplhaid,$betaid,$gammaid,$earfcn,$startear,$eNBName,$version);
my ($script_4G,$concurrent,$earfcnend,$earfcnend,$div);

if (!$ARGV[0]) {
print ("CAN NOT RUN FROM HERE!!!\n");
sleep 30;
exit;
               }


@input = split (/,/, $ARGV[0]);


$market = $input[0];
$eNBID = $input[1];
$mmbsOAMIP = $input[2];
$mmbsSBIP = $input[3];
$csrIP = $input[4];
$alphaPCI = $input[5];
$betaPCI = $input[6];
$gammaPCI = $input[7];
$TAC = $input[8];
$cascadeID = $input[9];
$alphaRSI = $input[10];
$betaRSI = $input[11];
$gammaRSI = $input[12];
$lat = $input[13];
$long = $input[14];
$aplhaid = $input[15];
$betaid = $input[16];
$gammaid = $input[17];
$earfcn = $input[18];
$startear = $input[19];
$eNBName = $input[20]; 
$ncs = $input[21];
$lat =~ s/_/ /g;
$long =~ s/_/ /g;
$optgp = $input[24];
$triband = $input[25];
$passroot = $input[26];
$concurrent = $input[27];
$earfcnend = $input[28];
$div = $input[29];
$version = $input[30];

if ($version eq "") {$version="5.0.2"};

print $version;

print ("market = $market\n");
print ("eNBID = $eNBID\n");
print ("mmbsOAMIP = $mmbsOAMIP\n");
print ("mmbsSBIP = $mmbsSBIP\n");
print ("csrIP = $csrIP\n");
print ("alphaPCI = $alphaPCI\n");
print ("betaPCI = $betaPCI\n");
print ("gammaPCI = $gammaPCI\n");
print ("TAC = $TAC\n");
print ("cascadeID = $cascadeID\n");
print ("alphaRSI = $alphaRSI\n");
print ("betaRSI = $betaRSI\n");
print ("gammaRSI = $gammaRSI\n");
print ("lat = $lat\n");
print ("long = $long\n");
print ("aplhaid = $aplhaid\n");
print ("betaid = $betaid\n");
print ("gammaid = $gammaid\n");
print ("earfcn = $earfcn\n");
print ("startear = $startear\n");
print ("eNBName = $eNBName\n");
print ("ncs = $ncs\n");
print ("lat = $lat\n");
print ("long = $long\n");
print ("optgp = $optgp\n");
print ("triband = $triband\n");
print ("passroot = $passroot\n");
print ("concurrent = $concurrent\n");
print ("earfcnend = $earfcnend\n");
print ("div = $div\n");

 print "$optgp\n\n";
 print "$concurrent\n\n";
 
 sleep 3;

# print "\n\n\n$concurrent\n\n\n"; 
# print "\n\n\n$div\n\n\n"; 
if ($passroot eq "old"){
 $passroot = "123qwe";
}

if ($passroot eq "new"){
 $passroot = "S\@msung1te";
}

my $testvalidate = `C:\\3G_4G_TOOL_Scripts\\bin\\validate.exe`;
chomp ($testvalidate);

if ($testvalidate eq "true"){


my($now);

$now = strftime("%m%d%Y", localtime);
if ($optgp eq "0") {
open (FILE_4G_script, ">C:\\3G_4G_TOOL_Scripts\\2.5\\Comm_Script\\$cascadeID\_$eNBID\_4G_Comm_2-5_Script_PKG_1_0_X.vbs");
}
if ((($optgp eq "1") || ($optgp eq "2")) && ($concurrent eq "")){
open (FILE_4G_script, ">C:\\3G_4G_TOOL_Scripts\\2.5\\Comm_Script\\$cascadeID\_$eNBID\_4G_Comm_2-5_Script_PKG_3_5_X.vbs");
}
if (($optgp eq "3") && ($concurrent eq "")) {
open (FILE_4G_script, ">C:\\3G_4G_TOOL_Scripts\\2.5\\Comm_Script\\$cascadeID\_$eNBID\_4G_Comm_2-5_Script_PKG_3_5_X_NO_GP.vbs");
}
if (($optgp eq "4") && ($concurrent eq "")) {
open (FILE_4G_script, ">C:\\3G_4G_TOOL_Scripts\\2.5\\Comm_Script\\$cascadeID\_$eNBID\_4G_Comm_2-5_Script_PKG_3_5_X_INTRA_NBR.vbs");
}

if ((($optgp eq "1") || ($optgp eq "2")) && ($concurrent ne "")){
open (FILE_4G_script, ">C:\\3G_4G_TOOL_Scripts\\2.5\\Comm_Script\\$cascadeID\_$eNBID\_4G_Comm_2-5_Script_PKG_3_5_X_1st_and_2nd_carreir.vbs");
}
if (($optgp eq "3") && ($concurrent ne "")) {
open (FILE_4G_script, ">C:\\3G_4G_TOOL_Scripts\\2.5\\Comm_Script\\$cascadeID\_$eNBID\_4G_Comm_2-5_Script_PKG_3_5_X_NO_GP_1st_and_2nd_carreir.vbs");
}
if (($optgp eq "4") && ($concurrent ne "")) {
open (FILE_4G_script, ">C:\\3G_4G_TOOL_Scripts\\2.5\\Comm_Script\\$cascadeID\_$eNBID\_4G_Comm_2-5_Script_PKG_3_5_X_INTRA_NBR_1st_and_2nd_carreir.vbs");
}

if (($optgp eq "6") && ($concurrent eq "")) {
if ($version eq "4.0.2" )
{
open (FILE_4G_script, ">C:\\3G_4G_TOOL_Scripts\\2.5\\Comm_Script\\$cascadeID\_$eNBID\_4G_Comm_2-5_Script_PKG_4_0_2_NO_GP.vbs");
};
if ($version eq "5.0.2" )
{
open (FILE_4G_script, ">C:\\3G_4G_TOOL_Scripts\\2.5\\Comm_Script\\$cascadeID\_$eNBID\_4G_Comm_2-5_Script_PKG_5_0_2_NO_GP.vbs");
};
};

if (($optgp eq "7") && ($concurrent ne "")) {
if ($version eq "5.0.2" )
{
open (FILE_4G_script, ">C:\\3G_4G_TOOL_Scripts\\2.5\\Comm_Script\\$cascadeID\_$eNBID\_4G_Comm_2-5_Script_PKG_5_0_2_NO_GP_1st_and_2nd_carreir.vbs");
};
if ($version eq "4.0.2" )
{
open (FILE_4G_script, ">C:\\3G_4G_TOOL_Scripts\\2.5\\Comm_Script\\$cascadeID\_$eNBID\_4G_Comm_2-5_Script_PKG_4_0_2_NO_GP_1st_and_2nd_carreir.vbs");
};
}


if (($optgp ne "6") && ($optgp ne "7")) {		#start if optgrp ne 6 and 7
print FILE_4G_script "Sub Main\n";             
print FILE_4G_script "xsh.Session.LogFilePath =\"C:\\3G_4G_TOOL_Scripts\\2.5\\Comm_Log\\$cascadeID\_$eNBID\_Log_$now.txt\"\n";  
print FILE_4G_script "xsh.Session.StartLog\n";
if ($optgp ne "4") {
print FILE_4G_script "xsh.Screen.send \"ssh lteuser\@$mmbsOAMIP\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"yes\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 8000\n";
print FILE_4G_script "xsh.Screen.send \"samsunglte\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"su -\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"$passroot\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"cd /pkg\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";

if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.send \"cd 1.0.0/\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Screen.send \"cd ENB\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Screen.send \"cd r-01\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Screen.send \"cd bin\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Screen.send \"cli.otm\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Screen.send \"EMSR\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"EMSR\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
}

if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
print FILE_4G_script "xsh.Screen.send \"cd 3.5.2/\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Screen.send \"cd ENB\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Screen.send \"cd r-01\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Screen.send \"cd bin\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Screen.send \"pld.otm input 0x00220140\[0].mcc=310\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
print FILE_4G_script "xsh.Screen.send \"pld.otm input 0x00220140\[0].mnc=120\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
print FILE_4G_script "xsh.Screen.send \"cli.otm\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";

}




 if (($market eq "CHI") || ($market eq "AKR")) { 
print FILE_4G_script "xsh.Screen.send \"CHG-MME-CONF:MME_INDEX=0,STATUS=EQUIP,ACTIVE_STATE=Active,MME_IPV4=10.158.211.12;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-MME-CONF:MME_INDEX=1,STATUS=EQUIP,ACTIVE_STATE=Active,MME_IPV4=10.156.35.12;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-MME-CONF:MME_INDEX=2,STATUS=EQUIP,ACTIVE_STATE=Active,MME_IPV4=10.158.211.172;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-MME-CONF:MME_INDEX=3,STATUS=EQUIP,ACTIVE_STATE=Active,MME_IPV4=10.156.35.172;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-MME-CONF:MME_INDEX=4,STATUS=EQUIP,ACTIVE_STATE=Active,MME_IPV4=10.158.211.188;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-MME-CONF:MME_INDEX=5,STATUS=EQUIP,ACTIVE_STATE=Active,MME_IPV4=10.156.35.188;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-MME-CONF:MME_INDEX=6,STATUS=EQUIP,ACTIVE_STATE=Active,MME_IPV4=10.158.211.204;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-MME-CONF:MME_INDEX=7,STATUS=EQUIP,ACTIVE_STATE=Active,MME_IPV4=10.156.35.204;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-MME-CONF:MME_INDEX=8,STATUS=EQUIP,ACTIVE_STATE=Active,MME_IPV4=10.158.211.220;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-MME-CONF:MME_INDEX=9,STATUS=EQUIP,ACTIVE_STATE=Active,MME_IPV4=10.156.35.220;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-MME-CONF:MME_INDEX=10,STATUS=EQUIP,ACTIVE_STATE=Active,MME_IPV4=10.158.212.4;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-MME-CONF:MME_INDEX=11,STATUS=EQUIP,ACTIVE_STATE=Active,MME_IPV4=10.156.35.44;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-MME-CONF:MME_INDEX=12,STATUS=EQUIP,ACTIVE_STATE=Active,MME_IPV4=10.158.212.20;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-MME-CONF:MME_INDEX=13,STATUS=EQUIP,ACTIVE_STATE=Active,MME_IPV4=10.156.34.28;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
}
 if ($market eq "CAL") {
               
print FILE_4G_script "xsh.Screen.send \"CHG-MME-CONF:MME_INDEX=0,STATUS=EQUIP,ACTIVE_STATE=Active,MME_IPV4=10.156.11.12;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-MME-CONF:MME_INDEX=1,STATUS=EQUIP,ACTIVE_STATE=Active,MME_IPV4=10.156.3.12;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-MME-CONF:MME_INDEX=2,STATUS=EQUIP,ACTIVE_STATE=Active,MME_IPV4=10.156.11.172;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-MME-CONF:MME_INDEX=3,STATUS=EQUIP,ACTIVE_STATE=Active,MME_IPV4=10.156.3.172;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-MME-CONF:MME_INDEX=4,STATUS=EQUIP,ACTIVE_STATE=Active,MME_IPV4=10.156.11.188;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
print FILE_4G_script "xsh.Screen.send \"CHG-MME-CONF:MME_INDEX=5,STATUS=EQUIP,ACTIVE_STATE=Active,MME_IPV4=10.156.3.188;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
}


if ($triband eq ""){
print FILE_4G_script "xsh.Screen.send \"CHG-RRH-CONF:CONNECT_BOARD_ID=0,CONNECT_PORT_ID=6,NUM_OF_ALD=1;\"\n";
}
if ($triband eq "TRIBAND"){

print FILE_4G_script "xsh.Screen.send \"CHG-RRH-CONF:CONNECT_BOARD_ID=0,CONNECT_PORT_ID=6,NUM_OF_ALD=0;\"\n";
}
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.send \"EMSR\"\n";
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
}
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
if ($triband eq ""){
print FILE_4G_script "xsh.Screen.send \"CHG-RRH-CONF:CONNECT_BOARD_ID=0,CONNECT_PORT_ID=8,NUM_OF_ALD=1;\"\n";
}
if ($triband eq "TRIBAND"){
print FILE_4G_script "xsh.Screen.send \"CHG-RRH-CONF:CONNECT_BOARD_ID=0,CONNECT_PORT_ID=8,NUM_OF_ALD=0;\"\n";
}
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.send \"EMSR\"\n";
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
}
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
if ($triband eq ""){
print FILE_4G_script "xsh.Screen.send \"CHG-RRH-CONF:CONNECT_BOARD_ID=0,CONNECT_PORT_ID=10,NUM_OF_ALD=1;\"\n";
}
if ($triband eq "TRIBAND"){
print FILE_4G_script "xsh.Screen.send \"CHG-RRH-CONF:CONNECT_BOARD_ID=0,CONNECT_PORT_ID=10,NUM_OF_ALD=0;\"\n";
}
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.send \"EMSR\"\n";
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
}
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";



print FILE_4G_script "xsh.Screen.send \"CRTE-VLAN-CONF:DB_INDEX=1,VR_ID=0,IF_NAME=ge_3_0_1,VLAN_ID=42,ADMINISTRATIVE_STATE=linkUnlocked,DESCRIPTION=\"\"NON_OAM\"\";\"\n";
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 20000\n";
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 20000\n";
} 
print FILE_4G_script "xsh.Screen.send \"CHG-IP-ADDR:DB_INDEX=1,LTE_SIGNAL_S1=False,LTE_SIGNAL_X2=False,LTE_BEARER_S1=False,LTE_BEARER_X2=False;\"\n";
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
}
print FILE_4G_script "xsh.Screen.send \"CRTE-IP-ADDR:DB_INDEX=2,IF_NAME=ge_3_0_1.42,IP_ADDR=$mmbsSBIP,IP_PFX_LEN=30,OAM=False,LTE_SIGNAL_S1=True,LTE_SIGNAL_X2=True,LTE_BEARER_S1=True,LTE_BEARER_X2=True;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";

 if ($market eq "CHI") { 
 print FILE_4G_script "xsh.Screen.send \"CRTE-IP-ROUTE:VR_ID=0,DB_INDEX=2,IP_PREFIX=10.158.0.0,IP_PFX_LEN=16,IP_GW=$csrIP,DISTANCE=1;\"\n";
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
}
 print FILE_4G_script "xsh.Screen.send \"CRTE-IP-ROUTE:VR_ID=0,DB_INDEX=3,IP_PREFIX=10.156.0.0,IP_PFX_LEN=16,IP_GW=$csrIP,DISTANCE=1;\"\n";
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
}
print FILE_4G_script "xsh.Screen.send \"CRTE-IP-ROUTE:VR_ID=0,DB_INDEX=4,IP_PREFIX=10.145.0.0,IP_PFX_LEN=16,IP_GW=$csrIP,DISTANCE=1;\"\n";
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
}


print FILE_4G_script "xsh.Screen.send \"CRTE-IP-ROUTE:VR_ID=0,DB_INDEX=5,IP_PREFIX=10.149.0.0,IP_PFX_LEN=16,IP_GW=$csrIP,DISTANCE=1;\"\n";
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
}

}

 if ($market eq "AKR") { 
 print FILE_4G_script "xsh.Screen.send \"CRTE-IP-ROUTE:VR_ID=0,DB_INDEX=2,IP_PREFIX=10.158.211.0,IP_PFX_LEN=24,IP_GW=$csrIP,DISTANCE=1;\"\n";
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
}
 print FILE_4G_script "xsh.Screen.send \"CRTE-IP-ROUTE:VR_ID=0,DB_INDEX=3,IP_PREFIX=10.158.212.0,IP_PFX_LEN=24,IP_GW=$csrIP,DISTANCE=1;\"\n";
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
}
 print FILE_4G_script "xsh.Screen.send \"CRTE-IP-ROUTE:VR_ID=0,DB_INDEX=4,IP_PREFIX=10.156.0.0,IP_PFX_LEN=16,IP_GW=$csrIP,DISTANCE=1;\"\n";
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
}
print FILE_4G_script "xsh.Screen.send \"CRTE-IP-ROUTE:VR_ID=0,DB_INDEX=5,IP_PREFIX=10.145.0.0,IP_PFX_LEN=16,IP_GW=$csrIP,DISTANCE=1;\"\n";
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
}
print FILE_4G_script "xsh.Screen.send \"CRTE-IP-ROUTE:VR_ID=0,DB_INDEX=6,IP_PREFIX=10.149.0.0,IP_PFX_LEN=16,IP_GW=$csrIP,DISTANCE=1;\"\n";
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
}

}

if ($market eq "CAL") {
               
               
print FILE_4G_script "xsh.Screen.send \"CRTE-IP-ROUTE:VR_ID=0,DB_INDEX=2,IP_PREFIX=10.156.0.0,IP_PFX_LEN=16,IP_GW=$csrIP,DISTANCE=1;\"\n";
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
}


print FILE_4G_script "xsh.Screen.send \"CRTE-IP-ROUTE:VR_ID=0,DB_INDEX=3,IP_PREFIX=10.145.0.0,IP_PFX_LEN=16,IP_GW=$csrIP,DISTANCE=1;\"\n";
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
}




print FILE_4G_script "xsh.Screen.send \"CRTE-IP-ROUTE:VR_ID=0,DB_INDEX=4,IP_PREFIX=10.149.0.0,IP_PFX_LEN=16,IP_GW=$csrIP,DISTANCE=1;\"\n";
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
}
  
}

print FILE_4G_script "xsh.Screen.send \"CHG-NTP-CONF:SVR_TYPE=PRIMARY_NTP_SERVER,IP_VER=IPV4,NTP_IPV4=112.255.255.252;\"\n";
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
 }
print FILE_4G_script "xsh.Screen.send \"CHG-NTP-CONF:SVR_TYPE=SECONDARY_NTP_SERVER,IP_VER=IPV4,NTP_IPV4=112.255.255.253;\"\n";
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
 }

print FILE_4G_script "xsh.Screen.send \"CRTE-IP-ROUTE:VR_ID=0,DB_INDEX=7,IP_PREFIX=10.202.0.0,IP_PFX_LEN=16,IP_GW=$csrIP,DISTANCE=1;\"\n";
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
}

print FILE_4G_script "xsh.Screen.send \"CRTE-IP-ROUTE:VR_ID=0,DB_INDEX=8,IP_PREFIX=0.0.0.0,IP_PFX_LEN=0,IP_GW=$csrIP,DISTANCE=1;\"\n";

# added 10/12/16

print FILE_4G_script "xsh.Screen.send \"exit;\"\n"; 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 1200\n";
print FILE_4G_script "xsh.Screen.send \"pld.otm input 0x00220140[0].mcc=777\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
print FILE_4G_script "xsh.Screen.send \"pld.otm input 0x00220140[0].mnc=888\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
print FILE_4G_script "xsh.Screen.send \"cli.otm\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 120000\n";



# end of added 10/12/16



if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
}

if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
 
 
print FILE_4G_script "xsh.Screen.send \"CHG-ENBPLMN-INFO:\"\"1\"\",\"\"310\"\",\"\"120\"\",\"\"0\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";

if ($alphaPCI ne ""){
 
print FILE_4G_script "xsh.Screen.send \"CHG-CELLPLMN-INFO:\"\"0\"\",\"\"0\"\",\"\"use\"\",\"\"reserved\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELLPLMN-INFO:\"\"0\"\",\"\"1\"\",\"\"use\"\",\"\"reserved\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
 
} 
 
if ($betaPCI ne ""){

print FILE_4G_script "xsh.Screen.send \"CHG-CELLPLMN-INFO:\"\"1\"\",\"\"0\"\",\"\"use\"\",\"\"reserved\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELLPLMN-INFO:\"\"1\"\",\"\"1\"\",\"\"use\"\",\"\"reserved\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
 
 
} 

if ($gammaPCI ne ""){

print FILE_4G_script "xsh.Screen.send \"CHG-CELLPLMN-INFO:\"\"2\"\",\"\"0\"\",\"\"use\"\",\"\"reserved\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELLPLMN-INFO:\"\"2\"\",\"\"1\"\",\"\"use\"\",\"\"reserved\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
 
 
}  
 
if (($concurrent eq "concurrent") || ($concurrent eq "concurrentnogp") || ($concurrent eq "concurrentnonbr8T")) {
 
if ($optgp eq "1"){ 
 if ($alphaPCI ne ""){
 
print FILE_4G_script "xsh.Screen.send \"CHG-CELLPLMN-INFO:\"\"3\"\",\"\"0\"\",\"\"use\"\",\"\"reserved\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELLPLMN-INFO:\"\"3\"\",\"\"1\"\",\"\"use\"\",\"\"reserved\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
 
} 
 
if ($betaPCI ne ""){

print FILE_4G_script "xsh.Screen.send \"CHG-CELLPLMN-INFO:\"\"4\"\",\"\"0\"\",\"\"use\"\",\"\"reserved\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELLPLMN-INFO:\"\"4\"\",\"\"1\"\",\"\"use\"\",\"\"reserved\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
 
 
} 

if ($gammaPCI ne ""){

print FILE_4G_script "xsh.Screen.send \"CHG-CELLPLMN-INFO:\"\"5\"\",\"\"0\"\",\"\"use\"\",\"\"reserved\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELLPLMN-INFO:\"\"5\"\",\"\"1\"\",\"\"use\"\",\"\"reserved\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
 
 
}  
} 
 }
 
if (($concurrent eq "concurrent") || ($concurrent eq "concurrentnogp") || ($concurrent eq "concurrentnonbr4T")){
 
if ($optgp eq "2"){ 
 if ($alphaPCI ne ""){
 
print FILE_4G_script "xsh.Screen.send \"CHG-CELLPLMN-INFO:\"\"9\"\",\"\"0\"\",\"\"use\"\",\"\"reserved\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELLPLMN-INFO:\"\"9\"\",\"\"1\"\",\"\"use\"\",\"\"reserved\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
 
} 
 
if ($betaPCI ne ""){

print FILE_4G_script "xsh.Screen.send \"CHG-CELLPLMN-INFO:\"\"10\"\",\"\"0\"\",\"\"use\"\",\"\"reserved\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELLPLMN-INFO:\"\"10\"\",\"\"1\"\",\"\"use\"\",\"\"reserved\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
 
 
} 

if ($gammaPCI ne ""){

print FILE_4G_script "xsh.Screen.send \"CHG-CELLPLMN-INFO:\"\"11\"\",\"\"0\"\",\"\"use\"\",\"\"reserved\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELLPLMN-INFO:\"\"11\"\",\"\"1\"\",\"\"use\"\",\"\"reserved\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
 
 
}  
} 
 }

}


print FILE_4G_script "xsh.Screen.send \"CHG-RRH-CONF:CONNECT_BOARD_ID=0,CONNECT_PORT_ID=6,ANTENNA_PROFILE_ID=$aplhaid;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.send \"EMSR\"\n";
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
 print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
}
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-RRH-CONF:CONNECT_BOARD_ID=0,CONNECT_PORT_ID=8,ANTENNA_PROFILE_ID=$betaid;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.send \"EMSR\"\n";
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
 print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
}
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-RRH-CONF:CONNECT_BOARD_ID=0,CONNECT_PORT_ID=10,ANTENNA_PROFILE_ID=$gammaid;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.send \"EMSR\"\n";
}



if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
 print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
}
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
if ($concurrent eq ""){
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:CELL_NUM=0,PHY_CELL_ID=$alphaPCI;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.send \"EMSR\"\n";
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
 print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
}
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:CELL_NUM=1,PHY_CELL_ID=$betaPCI;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.send \"EMSR\"\n";
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
 print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
}
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";


print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:CELL_NUM=2,PHY_CELL_ID=$gammaPCI;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.send \"EMSR\"\n";
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
 print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
}
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
 
print FILE_4G_script "xsh.Screen.send \"CHG-PRACH-CONF:CELL_NUM=0,ZERO_CORREL_ZONE_CONFIG=$ncs,ROOT_SEQUENCE_INDEX=$alphaRSI;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-PRACH-CONF:CELL_NUM=1,ZERO_CORREL_ZONE_CONFIG=$ncs,ROOT_SEQUENCE_INDEX=$betaRSI;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-PRACH-CONF:CELL_NUM=2,ZERO_CORREL_ZONE_CONFIG=$ncs,ROOT_SEQUENCE_INDEX=$gammaRSI;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
 
print FILE_4G_script "xsh.Screen.send \"CHG-POS-CONF:CELL_NUM=0,LATITUDE=\"\"$lat\"\",LONGITUDE=\"\"$long\"\";\"\n";
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
 print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
}
print FILE_4G_script "xsh.Screen.send \"CHG-POS-CONF:CELL_NUM=1,LATITUDE=\"\"$lat\"\",LONGITUDE=\"\"$long\"\";\"\n";
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
 print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
}

print FILE_4G_script "xsh.Screen.send \"CHG-POS-CONF:CELL_NUM=2,LATITUDE=\"\"$lat\"\",LONGITUDE=\"\"$long\"\";\"\n";
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
 print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
}
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:CELL_NUM=0,EARFCN_DL=$earfcn,EARFCN_UL=$earfcn;\"\n"; 
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
 print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
}
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:CELL_NUM=1,EARFCN_DL=$earfcn,EARFCN_UL=$earfcn;\"\n"; 
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
 print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
}	
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:CELL_NUM=2,EARFCN_DL=$earfcn,EARFCN_UL=$earfcn;\"\n"; 
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
 print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
}		
	
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:CELL_NUM=0,FA_INDEX=0,EARFCN_UL=$earfcn,EARFCN_DL=$earfcn;\"\n"; 
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
}	
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:CELL_NUM=1,FA_INDEX=0,EARFCN_UL=$earfcn,EARFCN_DL=$earfcn;\"\n"; 
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
}	
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:CELL_NUM=2,FA_INDEX=0,EARFCN_UL=$earfcn,EARFCN_DL=$earfcn;\"\n"; 
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
}	
print FILE_4G_script "xsh.Screen.send \"CHG-RRH-CONF:CONNECT_BOARD_ID=0,CONNECT_PORT_ID=6,START_EARFCN1=$startear;\"\n"; 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.send \"EMSR\"\n";
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
 print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
}
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";	
print FILE_4G_script "xsh.Screen.send \"CHG-RRH-CONF:CONNECT_BOARD_ID=0,CONNECT_PORT_ID=8,START_EARFCN1=$startear;\"\n"; 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.send \"EMSR\"\n";
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
 print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
}
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";	
print FILE_4G_script "xsh.Screen.send \"CHG-RRH-CONF:CONNECT_BOARD_ID=0,CONNECT_PORT_ID=10,START_EARFCN1=$startear;\"\n"; 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.send \"EMSR\"\n";
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
 print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
}
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";

}




if ($concurrent ne ""){


print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:CELL_NUM=0,PHY_CELL_ID=$alphaPCI;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.send \"EMSR\"\n";
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
 print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
}
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:CELL_NUM=1,PHY_CELL_ID=$betaPCI;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.send \"EMSR\"\n";
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
 print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
}
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";


print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:CELL_NUM=2,PHY_CELL_ID=$gammaPCI;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.send \"EMSR\"\n";
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
 print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
}
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
 

 
if ($optgp eq "1") {
 
 
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:CELL_NUM=3,PHY_CELL_ID=$alphaPCI;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 

print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:CELL_NUM=4,PHY_CELL_ID=$betaPCI;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 

print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:CELL_NUM=5,PHY_CELL_ID=$gammaPCI;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";  
 
 }
 
 
if ($optgp eq "2") {
 
 
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:CELL_NUM=9,PHY_CELL_ID=$alphaPCI;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 

print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:CELL_NUM=10,PHY_CELL_ID=$betaPCI;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 

print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:CELL_NUM=11,PHY_CELL_ID=$gammaPCI;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";  
 
 }
	
}

if ($concurrent ne ""){
 
 
print FILE_4G_script "xsh.Screen.send \"CHG-PRACH-CONF:CELL_NUM=0,ZERO_CORREL_ZONE_CONFIG=$ncs,ROOT_SEQUENCE_INDEX=$alphaRSI;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-PRACH-CONF:CELL_NUM=1,ZERO_CORREL_ZONE_CONFIG=$ncs,ROOT_SEQUENCE_INDEX=$betaRSI;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-PRACH-CONF:CELL_NUM=2,ZERO_CORREL_ZONE_CONFIG=$ncs,ROOT_SEQUENCE_INDEX=$gammaRSI;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
 
if ($optgp eq "1"){
 
print FILE_4G_script "xsh.Screen.send \"CHG-PRACH-CONF:CELL_NUM=3,ZERO_CORREL_ZONE_CONFIG=$ncs,ROOT_SEQUENCE_INDEX=$alphaRSI;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-PRACH-CONF:CELL_NUM=4,ZERO_CORREL_ZONE_CONFIG=$ncs,ROOT_SEQUENCE_INDEX=$betaRSI;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-PRACH-CONF:CELL_NUM=5,ZERO_CORREL_ZONE_CONFIG=$ncs,ROOT_SEQUENCE_INDEX=$gammaRSI;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
 
 
}  
 
if ($optgp eq "2"){
 
print FILE_4G_script "xsh.Screen.send \"CHG-PRACH-CONF:CELL_NUM=9,ZERO_CORREL_ZONE_CONFIG=$ncs,ROOT_SEQUENCE_INDEX=$alphaRSI;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-PRACH-CONF:CELL_NUM=10,ZERO_CORREL_ZONE_CONFIG=$ncs,ROOT_SEQUENCE_INDEX=$betaRSI;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-PRACH-CONF:CELL_NUM=11,ZERO_CORREL_ZONE_CONFIG=$ncs,ROOT_SEQUENCE_INDEX=$gammaRSI;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
 
 
}  
 
} 

if ($concurrent ne ""){

print FILE_4G_script "xsh.Screen.send \"CHG-POS-CONF:CELL_NUM=0,LATITUDE=\"\"$lat\"\",LONGITUDE=\"\"$long\"\";\"\n";
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
 print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
}
print FILE_4G_script "xsh.Screen.send \"CHG-POS-CONF:CELL_NUM=1,LATITUDE=\"\"$lat\"\",LONGITUDE=\"\"$long\"\";\"\n";
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
 print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
}

print FILE_4G_script "xsh.Screen.send \"CHG-POS-CONF:CELL_NUM=2,LATITUDE=\"\"$lat\"\",LONGITUDE=\"\"$long\"\";\"\n";
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
 print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
}

if ($optgp eq "1"){
print FILE_4G_script "xsh.Screen.send \"CHG-POS-CONF:CELL_NUM=3,LATITUDE=\"\"$lat\"\",LONGITUDE=\"\"$long\"\";\"\n";
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
 print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
}
print FILE_4G_script "xsh.Screen.send \"CHG-POS-CONF:CELL_NUM=4,LATITUDE=\"\"$lat\"\",LONGITUDE=\"\"$long\"\";\"\n";
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
 print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
}

print FILE_4G_script "xsh.Screen.send \"CHG-POS-CONF:CELL_NUM=5,LATITUDE=\"\"$lat\"\",LONGITUDE=\"\"$long\"\";\"\n";
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
 print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
}

}


if ($optgp eq "2"){
print FILE_4G_script "xsh.Screen.send \"CHG-POS-CONF:CELL_NUM=9,LATITUDE=\"\"$lat\"\",LONGITUDE=\"\"$long\"\";\"\n";
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
 print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
}
print FILE_4G_script "xsh.Screen.send \"CHG-POS-CONF:CELL_NUM=10,LATITUDE=\"\"$lat\"\",LONGITUDE=\"\"$long\"\";\"\n";
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
 print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
}

print FILE_4G_script "xsh.Screen.send \"CHG-POS-CONF:CELL_NUM=11,LATITUDE=\"\"$lat\"\",LONGITUDE=\"\"$long\"\";\"\n";
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
 print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
}

}
}

if ($concurrent ne ""){


print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:CELL_NUM=0,EARFCN_DL=$earfcn,EARFCN_UL=$earfcn;\"\n"; 
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
 print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
}
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:CELL_NUM=1,EARFCN_DL=$earfcn,EARFCN_UL=$earfcn;\"\n"; 
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
 print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
}	
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:CELL_NUM=2,EARFCN_DL=$earfcn,EARFCN_UL=$earfcn;\"\n"; 
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
 print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
}		
	
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:CELL_NUM=0,FA_INDEX=0,EARFCN_UL=$earfcn,EARFCN_DL=$earfcn;\"\n"; 
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
}	
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:CELL_NUM=1,FA_INDEX=0,EARFCN_UL=$earfcn,EARFCN_DL=$earfcn;\"\n"; 
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
}	
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:CELL_NUM=2,FA_INDEX=0,EARFCN_UL=$earfcn,EARFCN_DL=$earfcn;\"\n"; 
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
}	




print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:CELL_NUM=0,FA_INDEX=1,STATUS=EQUIP,EARFCN_UL=$earfcnend,EARFCN_DL=$earfcnend;\"\n"; 
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
}	
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:CELL_NUM=1,FA_INDEX=1,STATUS=EQUIP,EARFCN_UL=$earfcnend,EARFCN_DL=$earfcnend;\"\n"; 
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
}	
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:CELL_NUM=2,FA_INDEX=1,STATUS=EQUIP,EARFCN_UL=$earfcnend,EARFCN_DL=$earfcnend;\"\n"; 
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
}	




print FILE_4G_script "xsh.Screen.send \"CHG-RRH-CONF:CONNECT_BOARD_ID=0,CONNECT_PORT_ID=6,START_EARFCN1=$startear;\"\n"; 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.send \"EMSR\"\n";
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
 print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
}
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";	
print FILE_4G_script "xsh.Screen.send \"CHG-RRH-CONF:CONNECT_BOARD_ID=0,CONNECT_PORT_ID=8,START_EARFCN1=$startear;\"\n"; 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.send \"EMSR\"\n";
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
 print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
}
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";	
print FILE_4G_script "xsh.Screen.send \"CHG-RRH-CONF:CONNECT_BOARD_ID=0,CONNECT_PORT_ID=10,START_EARFCN1=$startear;\"\n"; 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.send \"EMSR\"\n";
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
 print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
}
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";


if ($optgp eq "1"){
 
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:CELL_NUM=3,EARFCN_DL=$earfcnend,EARFCN_UL=$earfcnend;\"\n"; 
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
 print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
}
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:CELL_NUM=4,EARFCN_DL=$earfcnend,EARFCN_UL=$earfcnend;\"\n"; 
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
 print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
}	
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:CELL_NUM=5,EARFCN_DL=$earfcnend,EARFCN_UL=$earfcnend;\"\n"; 
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
 print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
}		
	
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:CELL_NUM=3,FA_INDEX=0,EARFCN_UL=$earfcnend,EARFCN_DL=$earfcnend;\"\n"; 
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
}	
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:CELL_NUM=4,FA_INDEX=0,EARFCN_UL=$earfcnend,EARFCN_DL=$earfcnend;\"\n"; 
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
}	
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:CELL_NUM=5,FA_INDEX=0,EARFCN_UL=$earfcnend,EARFCN_DL=$earfcnend;\"\n"; 
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
}	 


print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:CELL_NUM=0,FA_INDEX=1,STATUS=EQUIP,EARFCN_UL=$earfcnend,EARFCN_DL=$earfcnend;\"\n"; 
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
}	
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:CELL_NUM=1,FA_INDEX=1,STATUS=EQUIP,EARFCN_UL=$earfcnend,EARFCN_DL=$earfcnend;\"\n"; 
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
}	
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:CELL_NUM=2,FA_INDEX=1,STATUS=EQUIP,EARFCN_UL=$earfcnend,EARFCN_DL=$earfcnend;\"\n"; 
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
}	





print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:CELL_NUM=3,FA_INDEX=1,STATUS=EQUIP,EARFCN_UL=$earfcn,EARFCN_DL=$earfcn;\"\n"; 
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
}	
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:CELL_NUM=4,FA_INDEX=1,STATUS=EQUIP,EARFCN_UL=$earfcn,EARFCN_DL=$earfcn;\"\n"; 
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
}	
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:CELL_NUM=5,FA_INDEX=1,STATUS=EQUIP,EARFCN_UL=$earfcn,EARFCN_DL=$earfcn;\"\n"; 
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
}	 

}



if ($optgp eq "2"){
 
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:CELL_NUM=9,EARFCN_DL=$earfcnend,EARFCN_UL=$earfcnend;\"\n"; 
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
 print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
}
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:CELL_NUM=10,EARFCN_DL=$earfcnend,EARFCN_UL=$earfcnend;\"\n"; 
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
 print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
}	
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:CELL_NUM=11,EARFCN_DL=$earfcnend,EARFCN_UL=$earfcnend;\"\n"; 
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
 print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
}		
	
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:CELL_NUM=9,FA_INDEX=0,EARFCN_UL=$earfcnend,EARFCN_DL=$earfcnend;\"\n"; 
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
}	
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:CELL_NUM=10,FA_INDEX=0,EARFCN_UL=$earfcnend,EARFCN_DL=$earfcnend;\"\n"; 
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
}	
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:CELL_NUM=11,FA_INDEX=0,EARFCN_UL=$earfcnend,EARFCN_DL=$earfcnend;\"\n"; 
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
}	 
 
 
 
 
 

print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:CELL_NUM=9,FA_INDEX=1,STATUS=EQUIP,EARFCN_UL=$earfcn,EARFCN_DL=$earfcn;\"\n"; 
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
}	
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:CELL_NUM=10,FA_INDEX=1,STATUS=EQUIP,EARFCN_UL=$earfcn,EARFCN_DL=$earfcn;\"\n"; 
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
}	
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:CELL_NUM=11,FA_INDEX=1,STATUS=EQUIP,EARFCN_UL=$earfcn,EARFCN_DL=$earfcn;\"\n"; 
if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
}
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
}	 

}
 }


###### GPPPPPPPP 1.5.1
if (($optgp eq "1") && ($concurrent ne "concurrentnogp") && ($concurrent ne "concurrentnonbr4T") && ($concurrent ne "concurrentnonbr8T")){
 
print FILE_4G_script "xsh.Screen.send \"CHG-ANR-SCHED:0,Inactive,Sunday,0,0,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";  
print FILE_4G_script "xsh.Screen.send \"CHG-ANR-SCHED:1,Inactive,Sunday,0,0,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";  
print FILE_4G_script "xsh.Screen.send \"CHG-ANR-SCHED:2,Inactive,Sunday,0,0,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";  
print FILE_4G_script "xsh.Screen.send \"CHG-ANR-SCHED:3,Inactive,Sunday,0,0,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";  
print FILE_4G_script "xsh.Screen.send \"CHG-ANR-SCHED:4,Inactive,Sunday,0,0,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";  
print FILE_4G_script "xsh.Screen.send \"CHG-ANR-SCHED:5,Inactive,Sunday,0,0,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";  
print FILE_4G_script "xsh.Screen.send \"CHG-ANR-SCHED:6,Inactive,Sunday,0,0,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";  
print FILE_4G_script "xsh.Screen.send \"CHG-ANR-SCHED:7,Inactive,Sunday,0,0,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";  
print FILE_4G_script "xsh.Screen.send \"CHG-ANR-SCHED:8,Inactive,Sunday,0,0,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";  
print FILE_4G_script "xsh.Screen.send \"CHG-BCCH-CONF:0,n4;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";  
print FILE_4G_script "xsh.Screen.send \"CHG-BCCH-CONF:1,n4;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";  
print FILE_4G_script "xsh.Screen.send \"CHG-BCCH-CONF:2,n4;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";  
print FILE_4G_script "xsh.Screen.send \"CHG-BCCH-CONF:3,n4;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";  
print FILE_4G_script "xsh.Screen.send \"CHG-BCCH-CONF:4,n4;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";  
print FILE_4G_script "xsh.Screen.send \"CHG-BCCH-CONF:5,n4;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";  
print FILE_4G_script "xsh.Screen.send \"CHG-BCCH-CONF:6,n4;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";  
print FILE_4G_script "xsh.Screen.send \"CHG-BCCH-CONF:7,n4;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";  
print FILE_4G_script "xsh.Screen.send \"CHG-BCCH-CONF:8,n4;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";  
print FILE_4G_script "xsh.Screen.send \"CHG-BF-CONF:0,True,30,0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
print FILE_4G_script "xsh.Screen.send \"CHG-BF-CONF:1,True,30,0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
print FILE_4G_script "xsh.Screen.send \"CHG-BF-CONF:2,True,30,0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
print FILE_4G_script "xsh.Screen.send \"CHG-BF-CONF:3,True,30,0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
print FILE_4G_script "xsh.Screen.send \"CHG-BF-CONF:4,True,30,0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
print FILE_4G_script "xsh.Screen.send \"CHG-BF-CONF:5,True,30,0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
print FILE_4G_script "xsh.Screen.send \"CHG-BF-CONF:6,True,30,0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
print FILE_4G_script "xsh.Screen.send \"CHG-BF-CONF:7,True,30,0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
print FILE_4G_script "xsh.Screen.send \"CHG-BF-CONF:8,True,30,0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
print FILE_4G_script "xsh.Screen.send \"CHG-BHBW-QCI:9,0,0,0,0,\"\"1.0\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:0,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:1,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:2,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:3,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:4,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:5,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:6,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:7,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:8,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:9,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:10,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:11,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:12,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:13,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:14,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:15,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:16,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:17,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:18,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:19,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:20,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:21,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:22,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:23,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:24,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:25,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:26,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:27,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:28,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:29,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:30,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:31,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-ECSFB:0,0,1,24,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-ECSFB:1,0,1,24,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-ECSFB:2,0,1,24,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-ECSFB:3,0,1,24,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-ECSFB:4,0,1,24,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-ECSFB:5,0,1,24,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-ECSFB:6,0,1,24,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-ECSFB:7,0,1,24,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-ECSFB:8,0,1,24,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-ECSFB:0,1,1,24,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-ECSFB:1,1,1,24,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-ECSFB:2,1,1,24,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-ECSFB:3,1,1,24,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-ECSFB:4,1,1,24,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-ECSFB:5,1,1,24,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-ECSFB:6,1,1,24,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-ECSFB:7,1,1,24,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-ECSFB:8,1,1,24,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-FREQ:0,0,,,,,310,120,\"\"preferred_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",\"\"100.0\"\",EventB2,\"\"ci_None\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-FREQ:0,1,,,,,310,120,\"\"preferred_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",\"\"100.0\"\",EventB2,\"\"ci_None\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-FREQ:1,0,,,,,310,120,\"\"preferred_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",\"\"100.0\"\",EventB2,\"\"ci_None\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-FREQ:1,1,,,,,310,120,\"\"preferred_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",\"\"100.0\"\",EventB2,\"\"ci_None\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-FREQ:2,0,,,,,310,120,\"\"preferred_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",\"\"100.0\"\",EventB2,\"\"ci_None\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-FREQ:2,1,,,,,310,120,\"\"preferred_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",\"\"100.0\"\",EventB2,\"\"ci_None\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-FREQ:3,0,,,,,310,120,\"\"preferred_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",\"\"100.0\"\",EventB2,\"\"ci_None\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-FREQ:3,1,,,,,310,120,\"\"preferred_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",\"\"100.0\"\",EventB2,\"\"ci_None\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-FREQ:4,0,,,,,310,120,\"\"preferred_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",\"\"100.0\"\",EventB2,\"\"ci_None\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-FREQ:4,1,,,,,310,120,\"\"preferred_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",\"\"100.0\"\",EventB2,\"\"ci_None\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-FREQ:5,0,,,,,310,120,\"\"preferred_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",\"\"100.0\"\",EventB2,\"\"ci_None\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-FREQ:5,1,,,,,310,120,\"\"preferred_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",\"\"100.0\"\",EventB2,\"\"ci_None\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-FREQ:6,0,,,,,310,120,\"\"preferred_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",\"\"100.0\"\",EventB2,\"\"ci_None\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-FREQ:6,1,,,,,310,120,\"\"preferred_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",\"\"100.0\"\",EventB2,\"\"ci_None\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-FREQ:7,0,,,,,310,120,\"\"preferred_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",\"\"100.0\"\",EventB2,\"\"ci_None\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-FREQ:7,1,,,,,310,120,\"\"preferred_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",\"\"100.0\"\",EventB2,\"\"ci_None\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-FREQ:8,0,,,,,310,120,\"\"preferred_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",\"\"100.0\"\",EventB2,\"\"ci_None\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-FREQ:8,1,,,,,310,120,\"\"preferred_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",\"\"100.0\"\",EventB2,\"\"ci_None\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-OVL:0,5,\"\"no_use\"\",oDot25,oDot25,use;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-OVL:1,5,\"\"no_use\"\",oDot25,oDot25,use;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-OVL:2,5,\"\"no_use\"\",oDot25,oDot25,use;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-OVL:3,5,\"\"no_use\"\",oDot25,oDot25,use;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-OVL:4,5,\"\"no_use\"\",oDot25,oDot25,use;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-OVL:5,5,\"\"no_use\"\",oDot25,oDot25,use;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-OVL:6,5,\"\"no_use\"\",oDot25,oDot25,use;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-OVL:7,5,\"\"no_use\"\",oDot25,oDot25,use;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-OVL:8,5,\"\"no_use\"\",oDot25,oDot25,use;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-PRD:0,StrongestCells,Active,1,240ms,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-PRD:1,StrongestCells,Active,1,240ms,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-PRD:2,StrongestCells,Active,1,240ms,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-PRD:3,StrongestCells,Active,1,240ms,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-PRD:4,StrongestCells,Active,1,240ms,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-PRD:5,StrongestCells,Active,1,240ms,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-PRD:6,StrongestCells,Active,1,240ms,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-PRD:7,StrongestCells,Active,1,240ms,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-PRD:8,StrongestCells,Active,1,240ms,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-PREG:0,,,,True,True,True,True,True,False,True,58,,2,\"\"ci_min1\"\",True;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-PREG:1,,,,True,True,True,True,True,False,True,58,,2,\"\"ci_min1\"\",True;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-PREG:2,,,,True,True,True,True,True,False,True,58,,2,\"\"ci_min1\"\",True;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-PREG:3,,,,True,True,True,True,True,False,True,58,,2,\"\"ci_min1\"\",True;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-PREG:4,,,,True,True,True,True,True,False,True,58,,2,\"\"ci_min1\"\",True;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-PREG:5,,,,True,True,True,True,True,False,True,58,,2,\"\"ci_min1\"\",True;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-PREG:6,,,,True,True,True,True,True,False,True,58,,2,\"\"ci_min1\"\",True;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-PREG:7,,,,True,True,True,True,True,False,True,58,,2,\"\"ci_min1\"\",True;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-PREG:8,,,,True,True,True,True,True,False,True,58,,2,\"\"ci_min1\"\",True;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CDD-CONF:0,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";   
print FILE_4G_script "xsh.Screen.send \"CHG-CDD-CONF:1,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";   
print FILE_4G_script "xsh.Screen.send \"CHG-CDD-CONF:2,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";   
print FILE_4G_script "xsh.Screen.send \"CHG-CDD-CONF:3,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";   
print FILE_4G_script "xsh.Screen.send \"CHG-CDD-CONF:4,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";   
print FILE_4G_script "xsh.Screen.send \"CHG-CDD-CONF:5,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";   
print FILE_4G_script "xsh.Screen.send \"CHG-CDD-CONF:6,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";   
print FILE_4G_script "xsh.Screen.send \"CHG-CDD-CONF:7,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";   
print FILE_4G_script "xsh.Screen.send \"CHG-CDD-CONF:8,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";   
print FILE_4G_script "xsh.Screen.send \"CHG-CDMA-CNF:0,False,10,True,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CDMA-CNF:1,False,10,True,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CDMA-CNF:2,False,10,True,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CDMA-CNF:3,False,10,True,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CDMA-CNF:4,False,10,True,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CDMA-CNF:5,False,10,True,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CDMA-CNF:6,False,10,True,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CDMA-CNF:7,False,10,True,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CDMA-CNF:8,False,10,True,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:0,,macroCell,TDD,,,,,41,,\"\"subframeAssignment_1\"\",\"\"specialSubframePattern_7\"\",False,Two;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:1,,macroCell,TDD,,,,,41,,\"\"subframeAssignment_1\"\",\"\"specialSubframePattern_7\"\",False,Two;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:2,,macroCell,TDD,,,,,41,,\"\"subframeAssignment_1\"\",\"\"specialSubframePattern_7\"\",False,Two;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:3,,macroCell,TDD,,,,,41,,\"\"subframeAssignment_1\"\",\"\"specialSubframePattern_7\"\",False,Two;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:4,,macroCell,TDD,,,,,41,,\"\"subframeAssignment_1\"\",\"\"specialSubframePattern_7\"\",False,Two;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:5,,macroCell,TDD,,,,,41,,\"\"subframeAssignment_1\"\",\"\"specialSubframePattern_7\"\",False,Two;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:6,,macroCell,TDD,,,,,41,,\"\"subframeAssignment_1\"\",\"\"specialSubframePattern_7\"\",False,Two;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:7,,macroCell,TDD,,,,,41,,\"\"subframeAssignment_1\"\",\"\"specialSubframePattern_7\"\",False,Two;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:8,,macroCell,TDD,,,,,41,,\"\"subframeAssignment_1\"\",\"\"specialSubframePattern_7\"\",False,Two;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-INFO:0,,\"\"SAMSUNG_LTE\"\",1,,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-INFO:1,,\"\"SAMSUNG_LTE\"\",1,,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-INFO:2,,\"\"SAMSUNG_LTE\"\",1,,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-INFO:3,,\"\"SAMSUNG_LTE\"\",1,,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-INFO:4,,\"\"SAMSUNG_LTE\"\",1,,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-INFO:5,,\"\"SAMSUNG_LTE\"\",1,,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-INFO:6,,\"\"SAMSUNG_LTE\"\",1,,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-INFO:7,,\"\"SAMSUNG_LTE\"\",1,,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-INFO:8,,\"\"SAMSUNG_LTE\"\",1,,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-RSEL:0,4dB,\"\"minus_6dB\"\",\"\"minus_6dB\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-RSEL:1,4dB,\"\"minus_6dB\"\",\"\"minus_6dB\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-RSEL:2,4dB,\"\"minus_6dB\"\",\"\"minus_6dB\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-RSEL:3,4dB,\"\"minus_6dB\"\",\"\"minus_6dB\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-RSEL:4,4dB,\"\"minus_6dB\"\",\"\"minus_6dB\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-RSEL:5,4dB,\"\"minus_6dB\"\",\"\"minus_6dB\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-RSEL:6,4dB,\"\"minus_6dB\"\",\"\"minus_6dB\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-RSEL:7,4dB,\"\"minus_6dB\"\",\"\"minus_6dB\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-RSEL:8,4dB,\"\"minus_6dB\"\",\"\"minus_6dB\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-SEL:0,\"\"-62\"\",\"\"no_use\"\",3,\"\"no_use\"\",0,\"\"no_use\"\",\"\"-16\"\",\"\"no_use\"\",3;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-SEL:1,\"\"-62\"\",\"\"no_use\"\",3,\"\"no_use\"\",0,\"\"no_use\"\",\"\"-16\"\",\"\"no_use\"\",3;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-SEL:2,\"\"-62\"\",\"\"no_use\"\",3,\"\"no_use\"\",0,\"\"no_use\"\",\"\"-16\"\",\"\"no_use\"\",3;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-SEL:3,\"\"-62\"\",\"\"no_use\"\",3,\"\"no_use\"\",0,\"\"no_use\"\",\"\"-16\"\",\"\"no_use\"\",3;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-SEL:4,\"\"-62\"\",\"\"no_use\"\",3,\"\"no_use\"\",0,\"\"no_use\"\",\"\"-16\"\",\"\"no_use\"\",3;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-SEL:5,\"\"-62\"\",\"\"no_use\"\",3,\"\"no_use\"\",0,\"\"no_use\"\",\"\"-16\"\",\"\"no_use\"\",3;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-SEL:6,\"\"-62\"\",\"\"no_use\"\",3,\"\"no_use\"\",0,\"\"no_use\"\",\"\"-16\"\",\"\"no_use\"\",3;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-SEL:7,\"\"-62\"\",\"\"no_use\"\",3,\"\"no_use\"\",0,\"\"no_use\"\",\"\"-16\"\",\"\"no_use\"\",3;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-SEL:8,\"\"-62\"\",\"\"no_use\"\",3,\"\"no_use\"\",0,\"\"no_use\"\",\"\"-16\"\",\"\"no_use\"\",3;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DL-SCHED:0,TM8,1,1,4;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DL-SCHED:1,TM8,1,1,4;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DL-SCHED:2,TM8,1,1,4;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DL-SCHED:3,TM8,1,1,4;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DL-SCHED:4,TM8,1,1,4;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DL-SCHED:5,TM8,1,1,4;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DL-SCHED:6,TM8,1,1,4;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DL-SCHED:7,TM8,1,1,4;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DL-SCHED:8,TM8,1,1,4;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DRX-INF:0,0,ReportCGI,psf10,psf200,psf8,sf320,Release,sf40,8,9,psf10,psf20,psf16,sf160,psf10,psf100,psf16,sf2560;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DRX-INF:0,1,ReportCGI,psf10,psf200,psf8,sf320,Release,sf40,8,9,psf10,psf20,psf16,sf160,psf10,psf100,psf16,sf2560;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DRX-INF:0,2,ReportCGI,psf10,psf200,psf8,sf320,Release,sf40,8,9,psf10,psf20,psf16,sf160,psf10,psf100,psf16,sf2560;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DRX-INF:0,3,ReportCGI,psf10,psf200,psf8,sf320,Release,sf40,8,9,psf10,psf20,psf16,sf160,psf10,psf100,psf16,sf2560;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DRX-INF:0,4,ReportCGI,psf10,psf200,psf8,sf320,Release,sf40,8,9,psf10,psf20,psf16,sf160,psf10,psf100,psf16,sf2560;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DRX-INF:0,5,ReportCGI,psf10,psf200,psf8,sf320,Release,sf40,8,9,psf10,psf20,psf16,sf160,psf10,psf100,psf16,sf2560;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DRX-INF:0,6,ReportCGI,psf10,psf200,psf8,sf320,Release,sf40,8,9,psf10,psf20,psf16,sf160,psf10,psf100,psf16,sf2560;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DRX-INF:0,7,ReportCGI,psf10,psf200,psf8,sf320,Release,sf40,8,9,psf10,psf20,psf16,sf160,psf10,psf100,psf16,sf2560;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DRX-INF:0,8,ReportCGI,psf10,psf200,psf8,sf320,Release,sf40,8,9,psf10,psf20,psf16,sf160,psf10,psf100,psf16,sf2560;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DRX-INF:0,9,ReportCGI,psf10,psf200,psf8,sf320,Release,sf40,8,9,psf10,psf20,psf16,sf160,psf10,psf100,psf16,sf2560;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-HO-OPT:1,0,1,False,0,Off,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-INACT-TIMER:0,0,6;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-INACT-TIMER:1,0,6;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-INACT-TIMER:2,0,6;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-INACT-TIMER:3,0,6;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-INACT-TIMER:4,0,6;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-INACT-TIMER:5,0,6;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-INACT-TIMER:6,0,6;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-INACT-TIMER:7,0,6;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-INACT-TIMER:8,0,6;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-INACT-TIMER:9,0,6;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-INTWO-OPT:0,,,\"\"ci_Blind_Not_Support\"\",False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-INTWO-OPT:1,,,\"\"ci_Blind_Not_Support\"\",False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-INTWO-OPT:2,,,\"\"ci_Blind_Not_Support\"\",False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-INTWO-OPT:3,,,\"\"ci_Blind_Not_Support\"\",False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-INTWO-OPT:4,,,\"\"ci_Blind_Not_Support\"\",False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-INTWO-OPT:5,,,\"\"ci_Blind_Not_Support\"\",False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-INTWO-OPT:6,,,\"\"ci_Blind_Not_Support\"\",False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-INTWO-OPT:7,,,\"\"ci_Blind_Not_Support\"\",False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-INTWO-OPT:8,,,\"\"ci_Blind_Not_Support\"\",False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-RRH-CONF:\"\"0\"\",\"\"6\"\",,,,,,,,,,,,,,,,,,,,,,,,,,,\"\"1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB\"\",,,,\"\"36,36,36,36,36,36\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-RRH-CONF:\"\"0\"\",\"\"8\"\",,,,,,,,,,,,,,,,,,,,,,,,,,,\"\"1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB\"\",,,,\"\"36,36,36,36,36,36\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-RRH-CONF:\"\"0\"\",\"\"10\"\",,,,,,,,,,,,,,,,,,,,,,,,,,,\"\"1.2dB,1.2dB,1.2dB,1.2dB,1.2dB,1.2dB\"\",,,,\"\"36,36,36,36,36,36\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-LOCH-INF:9,8kbps,300ms,12,3;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
print FILE_4G_script "xsh.Screen.send \"CHG-LOCH-INF:0,8kbps,300ms,12,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
print FILE_4G_script "xsh.Screen.send \"CHG-LOCH-INF:1,8kbps,100ms,5,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
print FILE_4G_script "xsh.Screen.send \"CHG-LOCH-INF:2,8kbps,150ms,7,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
print FILE_4G_script "xsh.Screen.send \"CHG-LOCH-INF:3,8kbps,50ms,6,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
print FILE_4G_script "xsh.Screen.send \"CHG-LOCH-INF:4,8kbps,300ms,8,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
print FILE_4G_script "xsh.Screen.send \"CHG-LOCH-INF:5,16kbps,100ms,1,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
print FILE_4G_script "xsh.Screen.send \"CHG-LOCH-INF:6,8kbps,300ms,9,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
print FILE_4G_script "xsh.Screen.send \"CHG-LOCH-INF:7,8kbps,100ms,10,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
print FILE_4G_script "xsh.Screen.send \"CHG-LOCH-INF:8,8kbps,300ms,11,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
print FILE_4G_script "xsh.Screen.send \"CHG-MEAS-FUNC:0,90,\"\"no_use\"\",oneDot0,oneDot0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-MEAS-FUNC:1,90,\"\"no_use\"\",oneDot0,oneDot0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-MEAS-FUNC:2,90,\"\"no_use\"\",oneDot0,oneDot0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-MEAS-FUNC:3,90,\"\"no_use\"\",oneDot0,oneDot0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-MEAS-FUNC:4,90,\"\"no_use\"\",oneDot0,oneDot0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-MEAS-FUNC:5,90,\"\"no_use\"\",oneDot0,oneDot0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-MEAS-FUNC:6,90,\"\"no_use\"\",oneDot0,oneDot0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-MEAS-FUNC:7,90,\"\"no_use\"\",oneDot0,oneDot0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-MEAS-FUNC:8,90,\"\"no_use\"\",oneDot0,oneDot0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-PCCH-CONF:rf128,one;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
print FILE_4G_script "xsh.Screen.send \"CHG-PUNCTMODE-IDLE:\"\"WiMAX29_18_LTE1_7_WITH_TDLTE_PUNCTURING_10650\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-PUSCH-CONF:0,1,interSubFrame,True,False,0,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
print FILE_4G_script "xsh.Screen.send \"CHG-PUSCH-CONF:1,1,interSubFrame,True,False,0,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
print FILE_4G_script "xsh.Screen.send \"CHG-PUSCH-CONF:2,1,interSubFrame,True,False,0,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
print FILE_4G_script "xsh.Screen.send \"CHG-PUSCH-CONF:3,1,interSubFrame,True,False,0,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
print FILE_4G_script "xsh.Screen.send \"CHG-PUSCH-CONF:4,1,interSubFrame,True,False,0,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
print FILE_4G_script "xsh.Screen.send \"CHG-PUSCH-CONF:5,1,interSubFrame,True,False,0,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
print FILE_4G_script "xsh.Screen.send \"CHG-PUSCH-CONF:6,1,interSubFrame,True,False,0,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
print FILE_4G_script "xsh.Screen.send \"CHG-PUSCH-CONF:7,1,interSubFrame,True,False,0,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
print FILE_4G_script "xsh.Screen.send \"CHG-PUSCH-CONF:8,1,interSubFrame,True,False,0,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
print FILE_4G_script "xsh.Screen.send \"CHG-QCI-VAL:9,EQUIP,NonGBR,9,300ms,Video,\"\"Dynamic_scheduling\"\",1,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-QCI-VAL:1,EQUIP,GBR,2,100ms,VoIP,\"\"Dynamic_scheduling\"\",1,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-QCI-VAL:2,EQUIP,GBR,4,150ms,Video,\"\"Dynamic_scheduling\"\",1,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-QCI-VAL:3,EQUIP,GBR,3,50ms,Video,\"\"Dynamic_scheduling\"\",1,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-QCI-VAL:4,EQUIP,GBR,5,300ms,Video,\"\"Dynamic_scheduling\"\",1,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-QCI-VAL:5,EQUIP,NonGBR,1,100ms,Video,\"\"Dynamic_scheduling\"\",1,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-QCI-VAL:6,EQUIP,NonGBR,6,300ms,Video,\"\"Dynamic_scheduling\"\",1,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-QCI-VAL:7,EQUIP,NonGBR,7,100ms,Video,\"\"Dynamic_scheduling\"\",1,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-QCI-VAL:8,EQUIP,NonGBR,8,300ms,Video,\"\"Dynamic_scheduling\"\",1,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-QCI-VAL:0,N_EQUIP,NonGBR,9,300ms,Video,\"\"Dynamic_scheduling\"\",1,1;\"\n";                 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DSCP-TRF:9,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DSCP-TRF:1,46;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DSCP-TRF:2,24;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DSCP-TRF:3,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DSCP-TRF:4,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DSCP-TRF:5,32;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DSCP-TRF:6,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DSCP-TRF:7,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DSCP-TRF:8,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-ROHC-INF:9,False,\"\"Max_16\"\",True,True,False,True,False,False,False,False,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SCTP-PARAM:0,1000,1400,1000,60000,4,10,5,1,1500,200;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-ENBCONN-PARA:0,4,0,0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SECU-INF:EIA2,EEA2;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SIB-INF:0,160ms,320ms,320ms,320ms,\"\"not_used\"\",\"\"not_used\"\",640ms,320ms,160ms,320ms,5120ms,\"\"not_used\"\",\"\"not_used\"\",20ms,97;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SIB-INF:1,160ms,320ms,320ms,320ms,\"\"not_used\"\",\"\"not_used\"\",640ms,320ms,160ms,320ms,5120ms,\"\"not_used\"\",\"\"not_used\"\",20ms,97;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SIB-INF:2,160ms,320ms,320ms,320ms,\"\"not_used\"\",\"\"not_used\"\",640ms,320ms,160ms,320ms,5120ms,\"\"not_used\"\",\"\"not_used\"\",20ms,97;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SIB-INF:3,160ms,320ms,320ms,320ms,\"\"not_used\"\",\"\"not_used\"\",640ms,320ms,160ms,320ms,5120ms,\"\"not_used\"\",\"\"not_used\"\",20ms,97;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SIB-INF:4,160ms,320ms,320ms,320ms,\"\"not_used\"\",\"\"not_used\"\",640ms,320ms,160ms,320ms,5120ms,\"\"not_used\"\",\"\"not_used\"\",20ms,97;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SIB-INF:5,160ms,320ms,320ms,320ms,\"\"not_used\"\",\"\"not_used\"\",640ms,320ms,160ms,320ms,5120ms,\"\"not_used\"\",\"\"not_used\"\",20ms,97;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SIB-INF:6,160ms,320ms,320ms,320ms,\"\"not_used\"\",\"\"not_used\"\",640ms,320ms,160ms,320ms,5120ms,\"\"not_used\"\",\"\"not_used\"\",20ms,97;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SIB-INF:7,160ms,320ms,320ms,320ms,\"\"not_used\"\",\"\"not_used\"\",640ms,320ms,160ms,320ms,5120ms,\"\"not_used\"\",\"\"not_used\"\",20ms,97;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SIB-INF:8,160ms,320ms,320ms,320ms,\"\"not_used\"\",\"\"not_used\"\",640ms,320ms,160ms,320ms,5120ms,\"\"not_used\"\",\"\"not_used\"\",20ms,97;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DSCP-SIG:0,\"\"S1\"\",34;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
print FILE_4G_script "xsh.Screen.send \"CHG-DSCP-SIG:0,\"\"X2\"\",34;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
print FILE_4G_script "xsh.Screen.send \"CHG-DSCP-SIG:0,\"\"S1_X2U\"\",34;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
print FILE_4G_script "xsh.Screen.send \"CHG-SON-ANR:256,False,1day,\"\"0.5\"\",False,1,0,False,100,95,1day,\"\"0.5\"\",252,2.0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
print FILE_4G_script "xsh.Screen.send \"CHG-SON-DLICIC:0,Release;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SON-DLICIC:1,Release;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SON-DLICIC:2,Release;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SON-DLICIC:3,Release;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SON-DLICIC:4,Release;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SON-DLICIC:5,Release;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SON-DLICIC:6,Release;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SON-DLICIC:7,Release;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SON-DLICIC:8,Release;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SON-SO:121000,121000;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SONFN-CELL:0,Auto,Off,Off,Off,Off,False,5,0,0,100,100,10,10,10,True;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SONFN-CELL:1,Auto,Off,Off,Off,Off,False,5,0,0,100,100,10,10,10,True;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SONFN-CELL:2,Auto,Off,Off,Off,Off,False,5,0,0,100,100,10,10,10,True;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SONFN-CELL:3,Auto,Off,Off,Off,Off,False,5,0,0,100,100,10,10,10,True;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SONFN-CELL:4,Auto,Off,Off,Off,Off,False,5,0,0,100,100,10,10,10,True;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SONFN-CELL:5,Auto,Off,Off,Off,Off,False,5,0,0,100,100,10,10,10,True;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SONFN-CELL:6,Auto,Off,Off,Off,Off,False,5,0,0,100,100,10,10,10,True;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SONFN-CELL:7,Auto,Off,Off,Off,Off,False,5,0,0,100,100,10,10,10,True;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SONFN-CELL:8,Auto,Off,Off,Off,Off,False,5,0,0,100,100,10,10,10,True;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SRB-RLC:1,45ms,Infinity,Infinity,t32,35ms,45ms;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SRB-RLC:2,45ms,Infinity,Infinity,t32,35ms,45ms;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DSCP-SYS:0,32;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DSCP-SYS:1,14;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DSCP-SYS:2,14;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DSCP-SYS:3,14;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DSCP-SYS:4,14;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DSCP-SYS:5,48;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-TIME-INF:0,400ms,400ms,4s,500ms,1000ms,1000ms,5000ms,10min,n6,n1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-TIME-INF:1,400ms,400ms,4s,500ms,1000ms,1000ms,5000ms,10min,n6,n1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-TIME-INF:2,400ms,400ms,4s,500ms,1000ms,1000ms,5000ms,10min,n6,n1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-TIME-INF:3,400ms,400ms,4s,500ms,1000ms,1000ms,5000ms,10min,n6,n1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-TIME-INF:4,400ms,400ms,4s,500ms,1000ms,1000ms,5000ms,10min,n6,n1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-TIME-INF:5,400ms,400ms,4s,500ms,1000ms,1000ms,5000ms,10min,n6,n1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-TIME-INF:6,400ms,400ms,4s,500ms,1000ms,1000ms,5000ms,10min,n6,n1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-TIME-INF:7,400ms,400ms,4s,500ms,1000ms,1000ms,5000ms,10min,n6,n1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-TIME-INF:8,400ms,400ms,4s,500ms,1000ms,1000ms,5000ms,10min,n6,n1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-TIMER-INF:1000,1500,5000,2000,2000,100,5000,300,5000,5000,Thrice,5,10000,5000,5000,3000,2000,5000,2000,5000,5,5000,Thrice,5,2000,5000,10000,2000,100,2000,40,2000,2000,2000,2000,5000,5000,5000,5000,2000,5000,100,5000,5000,1000,1000,1280,180;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-PLMNSIGTIMER-INFO:0,6;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-TRCH-BSR:0,sf10,sf320;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";   
print FILE_4G_script "xsh.Screen.send \"CHG-ULPWR-CTRL:0,0,\"\"ci_en0\"\",1,0,7,fc4;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-ULPWR-CTRL:1,0,\"\"ci_en0\"\",1,0,7,fc4;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-ULPWR-CTRL:2,0,\"\"ci_en0\"\",1,0,7,fc4;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-ULPWR-CTRL:3,0,\"\"ci_en0\"\",1,0,7,fc4;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-ULPWR-CTRL:4,0,\"\"ci_en0\"\",1,0,7,fc4;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-ULPWR-CTRL:5,0,\"\"ci_en0\"\",1,0,7,fc4;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-ULPWR-CTRL:6,0,\"\"ci_en0\"\",1,0,7,fc4;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-ULPWR-CTRL:7,0,\"\"ci_en0\"\",1,0,7,fc4;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-ULPWR-CTRL:8,0,\"\"ci_en0\"\",1,0,7,fc4;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-ULRESCONF-IDLE:0,no_use,0,0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-ULRESCONF-IDLE:1,no_use,0,0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-ULRESCONF-IDLE:2,no_use,0,0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-ULRESCONF-IDLE:3,no_use,0,0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-ULRESCONF-IDLE:4,no_use,0,0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-ULRESCONF-IDLE:5,no_use,0,0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-ULRESCONF-IDLE:6,no_use,0,0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-ULRESCONF-IDLE:7,no_use,0,0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-ULRESCONF-IDLE:8,no_use,0,0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-TPC-CONF:0,Release;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-TPC-CONF:1,Release;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-TPC-CONF:2,Release;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-TPC-CONF:3,Release;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-TPC-CONF:4,Release;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-TPC-CONF:5,Release;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-TPC-CONF:6,Release;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-TPC-CONF:7,Release;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-TPC-CONF:8,Release;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:0,0,EQUIP,,,7,\"\"-62\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw100,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A3,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:0,1,,,,7,\"\"-62\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw100,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:0,2,N_EQUIP,,,7,\"\"-62\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw100,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:0,3,EQUIP,26665,8665,5,\"\"-60\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw25,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:0,4,N_EQUIP,,,5,\"\"-60\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw25,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:0,5,EQUIP,26763,8763,4,\"\"-60\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,0,use,mbw25,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:1,0,EQUIP,,,7,\"\"-62\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw100,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A3,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:1,1,,,,7,\"\"-62\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw100,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:1,2,N_EQUIP,,,7,\"\"-62\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw100,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:1,3,EQUIP,26665,8665,5,\"\"-60\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw25,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:1,4,N_EQUIP,,,5,\"\"-60\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw25,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:1,5,EQUIP,26763,8763,4,\"\"-60\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,0,use,mbw25,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:2,0,EQUIP,,,7,\"\"-62\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw100,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A3,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:2,1,,,,7,\"\"-62\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw100,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:2,2,N_EQUIP,,,7,\"\"-62\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw100,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:2,3,EQUIP,26665,8665,5,\"\"-60\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw25,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:2,4,N_EQUIP,,,5,\"\"-60\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw25,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:2,5,EQUIP,26763,8763,4,\"\"-60\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,0,use,mbw25,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:3,0,EQUIP,,,7,\"\"-62\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw100,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A3,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:3,1,,,,7,\"\"-62\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw100,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:3,2,N_EQUIP,,,7,\"\"-62\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw100,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:3,3,EQUIP,26665,8665,5,\"\"-60\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw25,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:3,4,N_EQUIP,,,5,\"\"-60\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw25,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:3,5,EQUIP,26763,8763,4,\"\"-60\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,0,use,mbw25,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:4,0,EQUIP,,,7,\"\"-62\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw100,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A3,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:4,1,,,,7,\"\"-62\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw100,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:4,2,N_EQUIP,,,7,\"\"-62\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw100,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:4,3,EQUIP,26665,8665,5,\"\"-60\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw25,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:4,4,N_EQUIP,,,5,\"\"-60\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw25,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:4,5,EQUIP,26763,8763,4,\"\"-60\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,0,use,mbw25,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:5,0,EQUIP,,,7,\"\"-62\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw100,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A3,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:5,1,,,,7,\"\"-62\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw100,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:5,2,N_EQUIP,,,7,\"\"-62\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw100,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:5,3,EQUIP,26665,8665,5,\"\"-60\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw25,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:5,4,N_EQUIP,,,5,\"\"-60\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw25,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:5,5,EQUIP,26763,8763,4,\"\"-60\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,0,use,mbw25,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:6,0,EQUIP,,,7,\"\"-62\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw100,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A3,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:6,1,,,,7,\"\"-62\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw100,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:6,2,N_EQUIP,,,7,\"\"-62\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw100,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:6,3,EQUIP,26665,8665,5,\"\"-60\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw25,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:6,4,N_EQUIP,,,5,\"\"-60\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw25,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:6,5,EQUIP,26763,8763,4,\"\"-60\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,0,use,mbw25,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:7,0,EQUIP,,,7,\"\"-62\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw100,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A3,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:7,1,,,,7,\"\"-62\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw100,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:7,2,N_EQUIP,,,7,\"\"-62\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw100,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:7,3,EQUIP,26665,8665,5,\"\"-60\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw25,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:7,4,N_EQUIP,,,5,\"\"-60\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw25,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:7,5,EQUIP,26763,8763,4,\"\"-60\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,0,use,mbw25,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:8,0,EQUIP,,,7,\"\"-62\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw100,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A3,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:8,1,,,,7,\"\"-62\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw100,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:8,2,N_EQUIP,,,7,\"\"-62\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw100,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:8,3,EQUIP,26665,8665,5,\"\"-60\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw25,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:8,4,N_EQUIP,,,5,\"\"-60\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw25,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:8,5,EQUIP,26763,8763,4,\"\"-60\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,0,use,mbw25,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";

# Shailesh added 0130
print FILE_4G_script "xsh.Screen.send \"CHG-SONFN-CELL:0,Off;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SONFN-CELL:1,Off;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SONFN-CELL:2,Off;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SONFN-CELL:3,Off;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SONFN-CELL:4,Off;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SONFN-CELL:5,Off;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SONFN-CELL:6,Off;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SONFN-CELL:7,Off;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SONFN-CELL:8,Off;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";

# hassan added 0129
print FILE_4G_script "xsh.Screen.send \"CHG-CLOCK-CTRL:0,,99200;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CLOCK-CTRL:1,,99200;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CLOCK-CTRL:2,,99200;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CLOCK-CTRL:3,,99200;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CLOCK-CTRL:4,,99200;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CLOCK-CTRL:5,,99200;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";

# print FILE_4G_script "xsh.Screen.send \"CHG-ALM-INH:SYS,,FLOOD,INHIBIT;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 2000\n";
# print FILE_4G_script "xsh.Screen.send \"Y\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 3000\n";

# print FILE_4G_script "xsh.Screen.send \"CHG-ENBPLMN-INFO:\"\"1\"\",\"\"310\"\",\"\"120\"\",\"\"0\"\";\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 2000\n";
# print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 3000\n";

# if ($alphaPCI ne ""){
 
# print FILE_4G_script "xsh.Screen.send \"CHG-CELLPLMN-INFO:\"\"0\"\",\"\"0\"\",\"\"use\"\",\"\"reserved\"\";\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 2000\n";
# print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 3000\n";
# print FILE_4G_script "xsh.Screen.send \"CHG-CELLPLMN-INFO:\"\"0\"\",\"\"1\"\",\"\"use\"\",\"\"reserved\"\";\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 2000\n";
# print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 3000\n";
 
# } 
 
# if ($betaPCI ne ""){

# print FILE_4G_script "xsh.Screen.send \"CHG-CELLPLMN-INFO:\"\"1\"\",\"\"0\"\",\"\"use\"\",\"\"reserved\"\";\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 2000\n";
# print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 3000\n";
# print FILE_4G_script "xsh.Screen.send \"CHG-CELLPLMN-INFO:\"\"1\"\",\"\"1\"\",\"\"use\"\",\"\"reserved\"\";\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 2000\n";
# print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 3000\n";
 
 
# } 

# if ($gammaPCI ne ""){

# print FILE_4G_script "xsh.Screen.send \"CHG-CELLPLMN-INFO:\"\"2\"\",\"\"0\"\",\"\"use\"\",\"\"reserved\"\";\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 2000\n";
# print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 3000\n";
# print FILE_4G_script "xsh.Screen.send \"CHG-CELLPLMN-INFO:\"\"2\"\",\"\"1\"\",\"\"use\"\",\"\"reserved\"\";\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 2000\n";
# print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 3000\n";
 
 
# }  
 
 
} 




if (($optgp eq "2") && ($concurrent ne "concurrentnogp") && ($concurrent ne "concurrentnonbr4T") && ($concurrent ne "concurrentnonbr8T")){


print FILE_4G_script "xsh.Screen.send \"CHG-ANR-SCHED:0,Inactive,Sunday,0,0,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
print FILE_4G_script "xsh.Screen.send \"CHG-ANR-SCHED:1,Inactive,Sunday,0,0,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
print FILE_4G_script "xsh.Screen.send \"CHG-ANR-SCHED:2,Inactive,Sunday,0,0,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
print FILE_4G_script "xsh.Screen.send \"CHG-ANR-SCHED:9,Inactive,Sunday,0,0,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
print FILE_4G_script "xsh.Screen.send \"CHG-ANR-SCHED:10,Inactive,Sunday,0,0,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
print FILE_4G_script "xsh.Screen.send \"CHG-ANR-SCHED:11,Inactive,Sunday,0,0,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
print FILE_4G_script "xsh.Screen.send \"CHG-BCCH-CONF:0,n4;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
print FILE_4G_script "xsh.Screen.send \"CHG-BCCH-CONF:1,n4;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
print FILE_4G_script "xsh.Screen.send \"CHG-BCCH-CONF:2,n4;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
print FILE_4G_script "xsh.Screen.send \"CHG-BCCH-CONF:9,n4;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
print FILE_4G_script "xsh.Screen.send \"CHG-BCCH-CONF:10,n4;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
print FILE_4G_script "xsh.Screen.send \"CHG-BCCH-CONF:11,n4;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
print FILE_4G_script "xsh.Screen.send \"CHG-BF-CONF:0,False,30,0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-BF-CONF:1,False,30,0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-BF-CONF:2,False,30,0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-BF-CONF:9,False,30,0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-BF-CONF:10,False,30,0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-BF-CONF:11,False,30,0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-BHBW-QCI:9,0,0,0,0,\"\"1.0\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:0,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:1,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:2,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:3,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:4,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:5,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:6,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:7,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:8,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:9,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:10,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:11,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:12,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:13,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:14,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:15,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:16,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:17,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:18,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:19,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:20,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:21,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:22,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:23,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:24,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:25,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:26,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:27,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:28,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:29,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:30,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-BCLS:31,\"\"N_EQUIP\"\",bc0,0,16,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-ECSFB:0,0,1,24,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-ECSFB:1,0,1,24,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-ECSFB:2,0,1,24,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-ECSFB:9,0,1,24,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-ECSFB:10,0,1,24,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-ECSFB:11,0,1,24,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-ECSFB:0,1,1,24,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-ECSFB:1,1,1,24,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-ECSFB:2,1,1,24,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-ECSFB:9,1,1,24,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-ECSFB:10,1,1,24,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-ECSFB:11,1,1,24,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-FREQ:0,0,,,,,310,120,\"\"preferred_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",\"\"100.0\"\",EventB2,\"\"ci_None\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-FREQ:0,1,,,,,310,120,\"\"preferred_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",\"\"100.0\"\",EventB2,\"\"ci_None\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-FREQ:1,0,,,,,310,120,\"\"preferred_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",\"\"100.0\"\",EventB2,\"\"ci_None\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-FREQ:1,1,,,,,310,120,\"\"preferred_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",\"\"100.0\"\",EventB2,\"\"ci_None\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-FREQ:2,0,,,,,310,120,\"\"preferred_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",\"\"100.0\"\",EventB2,\"\"ci_None\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-FREQ:2,1,,,,,310,120,\"\"preferred_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",\"\"100.0\"\",EventB2,\"\"ci_None\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-FREQ:9,0,,,,,310,120,\"\"preferred_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",\"\"100.0\"\",EventB2,\"\"ci_None\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-FREQ:9,1,,,,,310,120,\"\"preferred_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",\"\"100.0\"\",EventB2,\"\"ci_None\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-FREQ:10,0,,,,,310,120,\"\"preferred_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",\"\"100.0\"\",EventB2,\"\"ci_None\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-FREQ:10,1,,,,,310,120,\"\"preferred_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",\"\"100.0\"\",EventB2,\"\"ci_None\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-FREQ:11,0,,,,,310,120,\"\"preferred_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",\"\"100.0\"\",EventB2,\"\"ci_None\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-FREQ:11,1,,,,,310,120,\"\"preferred_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",FFF,FFF,\"\"not_allowed_prefer\"\",\"\"100.0\"\",EventB2,\"\"ci_None\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-OVL:0,5,\"\"no_use\"\",oDot25,oDot25,use;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-OVL:1,5,\"\"no_use\"\",oDot25,oDot25,use;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-OVL:2,5,\"\"no_use\"\",oDot25,oDot25,use;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-OVL:9,5,\"\"no_use\"\",oDot25,oDot25,use;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-OVL:10,5,\"\"no_use\"\",oDot25,oDot25,use;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-OVL:11,5,\"\"no_use\"\",oDot25,oDot25,use;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-PRD:0,StrongestCells,Active,1,240ms,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-PRD:1,StrongestCells,Active,1,240ms,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-PRD:2,StrongestCells,Active,1,240ms,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-PRD:9,StrongestCells,Active,1,240ms,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-PRD:10,StrongestCells,Active,1,240ms,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-PRD:11,StrongestCells,Active,1,240ms,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-PREG:0,,,,True,True,True,True,True,False,True,58,,2,\"\"ci_min1\"\",True;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-PREG:1,,,,True,True,True,True,True,False,True,58,,2,\"\"ci_min1\"\",True;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-PREG:2,,,,True,True,True,True,True,False,True,58,,2,\"\"ci_min1\"\",True;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-PREG:9,,,,True,True,True,True,True,False,True,58,,2,\"\"ci_min1\"\",True;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-PREG:10,,,,True,True,True,True,True,False,True,58,,2,\"\"ci_min1\"\",True;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-C1XRTT-PREG:11,,,,True,True,True,True,True,False,True,58,,2,\"\"ci_min1\"\",True;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CDD-CONF:0,True;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CDD-CONF:1,True;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CDD-CONF:2,True;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CDD-CONF:9,True;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CDD-CONF:10,True;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CDD-CONF:11,True;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CDMA-CNF:0,False,10,True,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CDMA-CNF:1,False,10,True,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CDMA-CNF:2,False,10,True,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CDMA-CNF:9,False,10,True,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CDMA-CNF:10,False,10,True,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CDMA-CNF:11,False,10,True,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:0,,macroCell,TDD,,,,,41,,\"\"subframeAssignment_1\"\",\"\"specialSubframePattern_7\"\",False,Two;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:1,,macroCell,TDD,,,,,41,,\"\"subframeAssignment_1\"\",\"\"specialSubframePattern_7\"\",False,Two;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:2,,macroCell,TDD,,,,,41,,\"\"subframeAssignment_1\"\",\"\"specialSubframePattern_7\"\",False,Two;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:9,,macroCell,TDD,,,,,41,,\"\"subframeAssignment_1\"\",\"\"specialSubframePattern_7\"\",False,Two;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:10,,macroCell,TDD,,,,,41,,\"\"subframeAssignment_1\"\",\"\"specialSubframePattern_7\"\",False,Two;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:11,,macroCell,TDD,,,,,41,,\"\"subframeAssignment_1\"\",\"\"specialSubframePattern_7\"\",False,Two;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-INFO:0,,\"\"SAMSUNG_LTE\"\",1,,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-INFO:1,,\"\"SAMSUNG_LTE\"\",1,,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-INFO:2,,\"\"SAMSUNG_LTE\"\",1,,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-INFO:9,,\"\"SAMSUNG_LTE\"\",1,,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-INFO:10,,\"\"SAMSUNG_LTE\"\",1,,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-INFO:11,,\"\"SAMSUNG_LTE\"\",1,,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-RSEL:0,4dB,\"\"minus_6dB\"\",\"\"minus_6dB\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-RSEL:1,4dB,\"\"minus_6dB\"\",\"\"minus_6dB\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-RSEL:2,4dB,\"\"minus_6dB\"\",\"\"minus_6dB\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-RSEL:9,4dB,\"\"minus_6dB\"\",\"\"minus_6dB\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-RSEL:10,4dB,\"\"minus_6dB\"\",\"\"minus_6dB\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-RSEL:11,4dB,\"\"minus_6dB\"\",\"\"minus_6dB\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-SEL:0,\"\"-62\"\",\"\"no_use\"\",3,\"\"no_use\"\",0,\"\"no_use\"\",\"\"-16\"\",\"\"no_use\"\",3;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-SEL:1,\"\"-62\"\",\"\"no_use\"\",3,\"\"no_use\"\",0,\"\"no_use\"\",\"\"-16\"\",\"\"no_use\"\",3;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-SEL:2,\"\"-62\"\",\"\"no_use\"\",3,\"\"no_use\"\",0,\"\"no_use\"\",\"\"-16\"\",\"\"no_use\"\",3;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-SEL:9,\"\"-62\"\",\"\"no_use\"\",3,\"\"no_use\"\",0,\"\"no_use\"\",\"\"-16\"\",\"\"no_use\"\",3;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-SEL:10,\"\"-62\"\",\"\"no_use\"\",3,\"\"no_use\"\",0,\"\"no_use\"\",\"\"-16\"\",\"\"no_use\"\",3;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-SEL:11,\"\"-62\"\",\"\"no_use\"\",3,\"\"no_use\"\",0,\"\"no_use\"\",\"\"-16\"\",\"\"no_use\"\",3;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DRX-INF:0,0,ReportCGI,psf10,psf200,psf8,sf320,Release,sf40,8,9,psf10,psf20,psf16,sf160,psf10,psf100,psf16,sf2560;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DRX-INF:0,1,ReportCGI,psf10,psf200,psf8,sf320,Release,sf40,8,9,psf10,psf20,psf16,sf160,psf10,psf100,psf16,sf2560;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DRX-INF:0,2,ReportCGI,psf10,psf200,psf8,sf320,Release,sf40,8,9,psf10,psf20,psf16,sf160,psf10,psf100,psf16,sf2560;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DRX-INF:0,3,ReportCGI,psf10,psf200,psf8,sf320,Release,sf40,8,9,psf10,psf20,psf16,sf160,psf10,psf100,psf16,sf2560;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DRX-INF:0,4,ReportCGI,psf10,psf200,psf8,sf320,Release,sf40,8,9,psf10,psf20,psf16,sf160,psf10,psf100,psf16,sf2560;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DRX-INF:0,5,ReportCGI,psf10,psf200,psf8,sf320,Release,sf40,8,9,psf10,psf20,psf16,sf160,psf10,psf100,psf16,sf2560;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DRX-INF:0,6,ReportCGI,psf10,psf200,psf8,sf320,Release,sf40,8,9,psf10,psf20,psf16,sf160,psf10,psf100,psf16,sf2560;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DRX-INF:0,7,ReportCGI,psf10,psf200,psf8,sf320,Release,sf40,8,9,psf10,psf20,psf16,sf160,psf10,psf100,psf16,sf2560;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DRX-INF:0,8,ReportCGI,psf10,psf200,psf8,sf320,Release,sf40,8,9,psf10,psf20,psf16,sf160,psf10,psf100,psf16,sf2560;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DRX-INF:0,9,ReportCGI,psf10,psf200,psf8,sf320,Release,sf40,8,9,psf10,psf20,psf16,sf160,psf10,psf100,psf16,sf2560;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A1CNF:0,MeasGapDeact,Active,30,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A1CNF:1,MeasGapDeact,Active,30,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A1CNF:2,MeasGapDeact,Active,30,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A1CNF:9,MeasGapDeact,Active,30,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A1CNF:10,MeasGapDeact,Active,30,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A1CNF:11,MeasGapDeact,Active,30,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A2CNF:0,LteHo,Active,25,15,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A2CNF:1,LteHo,Active,25,15,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A2CNF:2,LteHo,Active,25,15,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A2CNF:9,LteHo,Active,25,15,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A2CNF:10,LteHo,Active,25,15,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A2CNF:11,LteHo,Active,25,15,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A2CNF:0,IRatBlind,Inactive,20,32,0,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A2CNF:1,IRatBlind,Inactive,20,32,0,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A2CNF:2,IRatBlind,Inactive,20,32,0,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A2CNF:9,IRatBlind,Inactive,20,32,0,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A2CNF:10,IRatBlind,Inactive,20,32,0,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A2CNF:11,IRatBlind,Inactive,20,32,0,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A2CNF:0,Ca,Inactive,35,32,0,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A2CNF:1,Ca,Inactive,35,32,0,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A2CNF:2,Ca,Inactive,35,32,0,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A2CNF:9,Ca,Inactive,35,32,0,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A2CNF:10,Ca,Inactive,35,32,0,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A2CNF:11,Ca,Inactive,35,32,0,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A3CNF:0,IntraLteHandover,0,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A3CNF:0,IntraLteHandover,1,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A3CNF:0,IntraLteHandover,2,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A3CNF:1,IntraLteHandover,0,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A3CNF:1,IntraLteHandover,1,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A3CNF:1,IntraLteHandover,2,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A3CNF:2,IntraLteHandover,0,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A3CNF:2,IntraLteHandover,1,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A3CNF:2,IntraLteHandover,2,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A3CNF:9,IntraLteHandover,0,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A3CNF:9,IntraLteHandover,1,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A3CNF:9,IntraLteHandover,2,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A3CNF:10,IntraLteHandover,0,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A3CNF:10,IntraLteHandover,1,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A3CNF:10,IntraLteHandover,2,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A3CNF:11,IntraLteHandover,0,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A3CNF:11,IntraLteHandover,1,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A3CNF:11,IntraLteHandover,2,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A3CNF:0,IntraFrequencyLb,0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A3CNF:1,IntraFrequencyLb,0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A3CNF:2,IntraFrequencyLb,0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A3CNF:9,IntraFrequencyLb,0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A3CNF:10,IntraFrequencyLb,0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A3CNF:11,IntraFrequencyLb,0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A3CNF:0,\"\"IntraFrequncyCre\"\",0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A3CNF:1,\"\"IntraFrequncyCre\"\",0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A3CNF:2,\"\"IntraFrequncyCre\"\",0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A3CNF:9,\"\"IntraFrequncyCre\"\",0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A3CNF:10,\"\"IntraFrequncyCre\"\",0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A3CNF:11,\"\"IntraFrequncyCre\"\",0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A5CNF:0,IntraLteHandover,1,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A5CNF:0,IntraLteHandover,2,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A5CNF:0,IntraLteHandover,3,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A5CNF:0,IntraLteHandover,4,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A5CNF:0,IntraLteHandover,5,Active,24,30,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A5CNF:1,IntraLteHandover,1,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A5CNF:1,IntraLteHandover,2,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A5CNF:1,IntraLteHandover,3,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A5CNF:1,IntraLteHandover,4,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A5CNF:1,IntraLteHandover,5,Active,24,30,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A5CNF:2,IntraLteHandover,1,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A5CNF:2,IntraLteHandover,2,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A5CNF:2,IntraLteHandover,3,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A5CNF:2,IntraLteHandover,4,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A5CNF:2,IntraLteHandover,5,Active,24,30,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A5CNF:9,IntraLteHandover,1,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A5CNF:9,IntraLteHandover,2,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A5CNF:9,IntraLteHandover,3,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A5CNF:9,IntraLteHandover,4,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A5CNF:9,IntraLteHandover,5,Active,24,30,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A5CNF:11,IntraLteHandover,1,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A5CNF:11,IntraLteHandover,2,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A5CNF:11,IntraLteHandover,3,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A5CNF:11,IntraLteHandover,4,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A5CNF:11,IntraLteHandover,5,Active,24,30,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A5CNF:10,IntraLteHandover,1,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A5CNF:10,IntraLteHandover,2,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A5CNF:10,IntraLteHandover,3,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A5CNF:10,IntraLteHandover,4,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A5CNF:10,IntraLteHandover,5,Active,24,30,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A6CNF:0,\"\"Ca\"\",0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A6CNF:1,\"\"Ca\"\",0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A6CNF:2,\"\"Ca\"\",0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A6CNF:9,\"\"Ca\"\",0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A6CNF:10,\"\"Ca\"\",0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-A6CNF:11,\"\"Ca\"\",0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-HO-OPT:1,0,1,False,0,Off,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-INACT-TIMER:0,0,6;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-INACT-TIMER:1,0,6;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-INACT-TIMER:2,0,6;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-INACT-TIMER:9,0,6;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-INACT-TIMER:10,0,6;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-INACT-TIMER:11,0,6;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-INTWO-OPT:0,,,\"\"ci_Blind_Not_Support\"\",False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-INTWO-OPT:1,,,\"\"ci_Blind_Not_Support\"\",False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-INTWO-OPT:2,,,\"\"ci_Blind_Not_Support\"\",False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-INTWO-OPT:9,,,\"\"ci_Blind_Not_Support\"\",False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-INTWO-OPT:10,,,\"\"ci_Blind_Not_Support\"\",False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-INTWO-OPT:11,,,\"\"ci_Blind_Not_Support\"\",False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-RRH-CONF:\"\"0\"\",\"\"6\"\",,,,,,,,,,,,,,,,,,,,,,,,,,,\"\"3dB,3dB,3dB,3dB,3dB,3dB\"\",,,,\"\"36,36,36,36,36,36\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-RRH-CONF:\"\"0\"\",\"\"8\"\",,,,,,,,,,,,,,,,,,,,,,,,,,,\"\"3dB,3dB,3dB,3dB,3dB,3dB\"\",,,,\"\"36,36,36,36,36,36\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-RRH-CONF:\"\"0\"\",\"\"10\"\",,,,,,,,,,,,,,,,,,,,,,,,,,,\"\"3dB,3dB,3dB,3dB,3dB,3dB\"\",,,,\"\"36,36,36,36,36,36\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-LOCH-INF:9,8kbps,300ms,12,3;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-LOCH-INF:0,8kbps,300ms,12,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-LOCH-INF:1,8kbps,100ms,5,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-LOCH-INF:2,8kbps,150ms,7,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-LOCH-INF:3,8kbps,50ms,6,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-LOCH-INF:4,8kbps,300ms,8,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-LOCH-INF:5,16kbps,100ms,1,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-LOCH-INF:6,8kbps,300ms,9,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-LOCH-INF:7,8kbps,100ms,10,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-LOCH-INF:8,8kbps,300ms,11,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-MEAS-FUNC:0,90,\"\"no_use\"\",oneDot0,oneDot0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-MEAS-FUNC:1,90,\"\"no_use\"\",oneDot0,oneDot0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-MEAS-FUNC:2,90,\"\"no_use\"\",oneDot0,oneDot0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-MEAS-FUNC:9,90,\"\"no_use\"\",oneDot0,oneDot0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-MEAS-FUNC:10,90,\"\"no_use\"\",oneDot0,oneDot0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-MEAS-FUNC:11,90,\"\"no_use\"\",oneDot0,oneDot0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-PCCH-CONF:rf128,one;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-PUNCTMODE-IDLE:\"\"WiMAX29_18_LTE1_7_WITH_TDLTE_PUNCTURING_10650\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-PUSCH-CONF:0,1,interSubFrame,True,False,0,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-PUSCH-CONF:1,1,interSubFrame,True,False,0,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-PUSCH-CONF:2,1,interSubFrame,True,False,0,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-PUSCH-CONF:9,1,interSubFrame,True,False,0,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-PUSCH-CONF:10,1,interSubFrame,True,False,0,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-PUSCH-CONF:11,1,interSubFrame,True,False,0,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-QCI-VAL:9,EQUIP,NonGBR,9,300ms,Video,\"\"Dynamic_scheduling\"\",1,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-QCI-VAL:1,EQUIP,GBR,2,100ms,VoIP,\"\"Dynamic_scheduling\"\",1,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-QCI-VAL:2,EQUIP,GBR,4,150ms,Video,\"\"Dynamic_scheduling\"\",1,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-QCI-VAL:3,EQUIP,GBR,3,50ms,Video,\"\"Dynamic_scheduling\"\",1,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-QCI-VAL:4,EQUIP,GBR,5,300ms,Video,\"\"Dynamic_scheduling\"\",1,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-QCI-VAL:5,EQUIP,NonGBR,1,100ms,Video,\"\"Dynamic_scheduling\"\",1,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-QCI-VAL:6,EQUIP,NonGBR,6,300ms,Video,\"\"Dynamic_scheduling\"\",1,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-QCI-VAL:7,EQUIP,NonGBR,7,100ms,Video,\"\"Dynamic_scheduling\"\",1,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-QCI-VAL:8,EQUIP,NonGBR,8,300ms,Video,\"\"Dynamic_scheduling\"\",1,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-QCI-VAL:0,N_EQUIP,NonGBR,9,300ms,Video,\"\"Dynamic_scheduling\"\",1,1;\"\n";                 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DSCP-TRF:9,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DSCP-TRF:1,46;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DSCP-TRF:2,24;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DSCP-TRF:3,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DSCP-TRF:4,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DSCP-TRF:5,32;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DSCP-TRF:6,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DSCP-TRF:7,16;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DSCP-TRF:8,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-ROHC-INF:9,False,\"\"Max_16\"\",True,True,False,True,False,False,False,False,False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SCTP-PARAM:0,1000,1400,1000,60000,4,10,5,1,1500,200;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-ENBCONN-PARA:0,4,0,0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SECU-INF:EIA2,EEA2;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SIB-INF:0,160ms,320ms,320ms,320ms,\"\"not_used\"\",\"\"not_used\"\",640ms,320ms,160ms,320ms,5120ms,\"\"not_used\"\",\"\"not_used\"\",20ms,97;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SIB-INF:1,160ms,320ms,320ms,320ms,\"\"not_used\"\",\"\"not_used\"\",640ms,320ms,160ms,320ms,5120ms,\"\"not_used\"\",\"\"not_used\"\",20ms,97;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SIB-INF:2,160ms,320ms,320ms,320ms,\"\"not_used\"\",\"\"not_used\"\",640ms,320ms,160ms,320ms,5120ms,\"\"not_used\"\",\"\"not_used\"\",20ms,97;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SIB-INF:9,160ms,320ms,320ms,320ms,\"\"not_used\"\",\"\"not_used\"\",640ms,320ms,160ms,320ms,5120ms,\"\"not_used\"\",\"\"not_used\"\",20ms,97;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SIB-INF:10,160ms,320ms,320ms,320ms,\"\"not_used\"\",\"\"not_used\"\",640ms,320ms,160ms,320ms,5120ms,\"\"not_used\"\",\"\"not_used\"\",20ms,97;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SIB-INF:11,160ms,320ms,320ms,320ms,\"\"not_used\"\",\"\"not_used\"\",640ms,320ms,160ms,320ms,5120ms,\"\"not_used\"\",\"\"not_used\"\",20ms,97;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DSCP-SIG:0,\"\"S1\"\",34;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
print FILE_4G_script "xsh.Screen.send \"CHG-DSCP-SIG:0,\"\"X2\"\",34;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
print FILE_4G_script "xsh.Screen.send \"CHG-DSCP-SIG:0,\"\"S1_X2U\"\",34;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
print FILE_4G_script "xsh.Screen.send \"CHG-SON-ANR:256,False,1day,\"\"0.5\"\",False,1,0,False,100,95,1day,\"\"0.5\"\",252,2.0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
print FILE_4G_script "xsh.Screen.send \"CHG-SON-DLICIC:0,Release;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SON-DLICIC:1,Release;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SON-DLICIC:2,Release;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SON-DLICIC:9,Release;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SON-DLICIC:10,Release;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SON-DLICIC:11,Release;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SON-SO:121000,121000;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SONFN-CELL:0,Auto,Off,Off,Off,Off,False,5,0,0,100,100,10,10,10,True;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SONFN-CELL:1,Auto,Off,Off,Off,Off,False,5,0,0,100,100,10,10,10,True;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SONFN-CELL:2,Auto,Off,Off,Off,Off,False,5,0,0,100,100,10,10,10,True;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SONFN-CELL:9,Auto,Off,Off,Off,Off,False,5,0,0,100,100,10,10,10,True;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SONFN-CELL:10,Auto,Off,Off,Off,Off,False,5,0,0,100,100,10,10,10,True;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SONFN-CELL:11,Auto,Off,Off,Off,Off,False,5,0,0,100,100,10,10,10,True;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SRB-RLC:1,45ms,Infinity,Infinity,t32,35ms,45ms;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SRB-RLC:2,45ms,Infinity,Infinity,t32,35ms,45ms;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DSCP-SYS:0,32;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DSCP-SYS:1,14;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DSCP-SYS:2,14;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DSCP-SYS:3,14;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DSCP-SYS:4,14;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-DSCP-SYS:5,48;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-TIME-INF:0,400ms,400ms,4s,500ms,1000ms,1000ms,5000ms,10min,n6,n1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-TIME-INF:1,400ms,400ms,4s,500ms,1000ms,1000ms,5000ms,10min,n6,n1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-TIME-INF:2,400ms,400ms,4s,500ms,1000ms,1000ms,5000ms,10min,n6,n1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-TIME-INF:9,400ms,400ms,4s,500ms,1000ms,1000ms,5000ms,10min,n6,n1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-TIME-INF:10,400ms,400ms,4s,500ms,1000ms,1000ms,5000ms,10min,n6,n1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-TIME-INF:11,400ms,400ms,4s,500ms,1000ms,1000ms,5000ms,10min,n6,n1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-TIMER-INF:1000,1500,5000,2000,2000,100,5000,300,5000,5000,Thrice,5,10000,5000,5000,3000,2000,5000,2000,5000,5,5000,Thrice,5,2000,5000,10000,2000,100,2000,40,2000,2000,2000,2000,5000,5000,5000,5000,2000,5000,100,5000,5000,1000,1000,1280,180;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-PLMNSIGTIMER-INFO:0,6;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-TRCH-BSR:0,sf10,sf320;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";   
print FILE_4G_script "xsh.Screen.send \"CHG-ULPWR-CTRL:0,0,\"\"ci_en0\"\",1,0,7,fc4;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-ULPWR-CTRL:1,0,\"\"ci_en0\"\",1,0,7,fc4;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-ULPWR-CTRL:2,0,\"\"ci_en0\"\",1,0,7,fc4;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-ULPWR-CTRL:9,0,\"\"ci_en0\"\",1,0,7,fc4;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-ULPWR-CTRL:10,0,\"\"ci_en0\"\",1,0,7,fc4;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-ULPWR-CTRL:11,0,\"\"ci_en0\"\",1,0,7,fc4;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-ULRESCONF-IDLE:0,no_use,0,0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-ULRESCONF-IDLE:1,no_use,0,0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-ULRESCONF-IDLE:2,no_use,0,0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-ULRESCONF-IDLE:9,no_use,0,0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-ULRESCONF-IDLE:10,no_use,0,0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-ULRESCONF-IDLE:11,no_use,0,0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-TPC-CONF:0,Release;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-TPC-CONF:1,Release;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-TPC-CONF:2,Release;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-TPC-CONF:9,Release;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-TPC-CONF:10,Release;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-TPC-CONF:11,Release;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:0,0,EQUIP,,,7,\"\"-62\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw100,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A3,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:0,1,,,,7,\"\"-62\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw100,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:0,2,N_EQUIP,,,7,\"\"-62\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw100,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:0,3,EQUIP,26665,8665,5,\"\"-60\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw25,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:0,4,N_EQUIP,,,5,\"\"-60\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw25,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:0,5,EQUIP,26763,8763,4,\"\"-60\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,0,use,mbw25,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:1,0,EQUIP,,,7,\"\"-62\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw100,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A3,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:1,1,,,,7,\"\"-62\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw100,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:1,2,N_EQUIP,,,7,\"\"-62\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw100,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:1,3,EQUIP,26665,8665,5,\"\"-60\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw25,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:1,4,N_EQUIP,,,5,\"\"-60\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw25,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:1,5,EQUIP,26763,8763,4,\"\"-60\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,0,use,mbw25,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:2,0,EQUIP,,,7,\"\"-62\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw100,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A3,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:2,1,,,,7,\"\"-62\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw100,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:2,2,N_EQUIP,,,7,\"\"-62\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw100,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:2,3,EQUIP,26665,8665,5,\"\"-60\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw25,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:2,4,N_EQUIP,,,5,\"\"-60\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw25,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:2,5,EQUIP,26763,8763,4,\"\"-60\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,0,use,mbw25,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:9,0,EQUIP,,,7,\"\"-62\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw100,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A3,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:9,1,,,,7,\"\"-62\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw100,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:9,2,N_EQUIP,,,7,\"\"-62\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw100,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:9,3,EQUIP,26665,8665,5,\"\"-60\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw25,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:9,4,N_EQUIP,,,5,\"\"-60\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw25,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:9,5,EQUIP,26763,8763,4,\"\"-60\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,0,use,mbw25,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:10,0,EQUIP,,,7,\"\"-62\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw100,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A3,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:10,1,,,,7,\"\"-62\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw100,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:10,2,N_EQUIP,,,7,\"\"-62\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw100,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:10,3,EQUIP,26665,8665,5,\"\"-60\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw25,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:10,4,N_EQUIP,,,5,\"\"-60\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw25,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:10,5,EQUIP,26763,8763,4,\"\"-60\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,0,use,mbw25,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:11,0,EQUIP,,,7,\"\"-62\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw100,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A3,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:11,1,,,,7,\"\"-62\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw100,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:11,2,N_EQUIP,,,7,\"\"-62\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw100,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:11,3,EQUIP,26665,8665,5,\"\"-60\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw25,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:11,4,N_EQUIP,,,5,\"\"-60\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,5,use,mbw25,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:11,5,EQUIP,26763,8763,4,\"\"-60\"\",\"\"no_use\"\",23,1,\"\"no_use\"\",oneDot0,oneDot0,use,29,use,5,3,0,0,use,mbw25,True,1,0dB,0dB,\"\"no_use\"\",29,5,\"\"no_use\"\",8,0,\"\"no_use\"\",\"\"-18\"\",\"\"no_use\"\",0,0,4,310,120,\"\"preferred_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,FFF,FFF,\"\"not_allowed_prefer\"\",0,\"\"100.0\"\",A5,sf1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";


# Shailesh added 0130
print FILE_4G_script "xsh.Screen.send \"CHG-SONFN-CELL:0,Off;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SONFN-CELL:1,Off;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SONFN-CELL:2,Off;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SONFN-CELL:3,Off;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SONFN-CELL:4,Off;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SONFN-CELL:5,Off;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SONFN-CELL:6,Off;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SONFN-CELL:7,Off;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-SONFN-CELL:8,Off;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";

# hassan added 0129
print FILE_4G_script "xsh.Screen.send \"CHG-CLOCK-CTRL:0,,99200;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CLOCK-CTRL:1,,99200;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CLOCK-CTRL:2,,99200;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CLOCK-CTRL:3,,99200;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CLOCK-CTRL:4,,99200;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CLOCK-CTRL:5,,99200;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";		
print FILE_4G_script "xsh.Session.Sleep 2000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-ALM-INH:SYS,,FLOOD,INHIBIT;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n"; 


}




print FILE_4G_script "xsh.Screen.send \"exit;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 1200\n";
print FILE_4G_script "xsh.Screen.send \"exit\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 1200\n";
print FILE_4G_script "xsh.Screen.send \"exit\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 1200\n";

if ($optgp eq "0"){
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-TIMER-INF:S1_UPDATE_TIME_TO_WAIT=\"\"5\"\",X2_SETUP_TIME_TO_WAIT=\"\"5\"\",X2_UPDATE_TIME_TO_WAIT=\"\"5\"\",S_CELL_DEACTIVATION_TIMER=\"\"1280\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 8000\n";


print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-INFO:0,large,SAMSUNG_LTE,777,888,reserved,310,120,reserved;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 8000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-INFO:1,large,SAMSUNG_LTE,777,888,reserved,310,120,reserved;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 8000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-INFO:2,large,SAMSUNG_LTE,777,888,reserved,310,120,reserved;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 8000\n";
}

# if ((($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")) && (($concurrent ne "concurrentnogp") && ($concurrent eq "concurrentnonbr4T") && ($concurrent eq "concurrentnonbr8T")) || ($concurrent eq "concurrent")){
if ((($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")) && (($concurrent eq "concurrentnonbr8T") || ($concurrent eq "concurrentnonbr4T") || ($concurrent eq "concurrent"))){

if (($concurrent ne "") && ($optgp eq "1")) {



if ($alphaPCI ne ""){
 
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-INFO:CELL_NUM=3,TRACKING_AREA_CODE=\"\"H'$TAC\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n"; 
 
} 
 
if ($betaPCI ne ""){

print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-INFO:CELL_NUM=4,TRACKING_AREA_CODE=\"\"H'$TAC\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n"; 
 
 
} 

if ($gammaPCI ne ""){

print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-INFO:CELL_NUM=5,TRACKING_AREA_CODE=\"\"H'$TAC\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n"; 
 
 
}

if (($concurrent ne "") && ($div eq "8T8R")) {
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CA-COLOC:0,0,EQUIP,32,3;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CA-COLOC:1,0,EQUIP,32,4;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CA-COLOC:2,0,EQUIP,32,5;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CA-COLOC:3,0,EQUIP,32,0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CA-COLOC:4,0,EQUIP,32,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CA-COLOC:5,0,EQUIP,32,2;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
};

if (($concurrent ne "") && ($div eq "4T4R")) {
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CA-COLOC:0,0,EQUIP,32,9;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CA-COLOC:1,0,EQUIP,32,10;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CA-COLOC:2,0,EQUIP,32,11;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CA-COLOC:3,0,EQUIP,32,0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CA-COLOC:4,0,EQUIP,32,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CA-COLOC:5,0,EQUIP,32,2;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
};

print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CACELL-INFO:0,DL_Only;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CACELL-INFO:1,DL_Only;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CACELL-INFO:2,DL_Only;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CACELL-INFO:3,DL_Only;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CACELL-INFO:4,DL_Only;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CACELL-INFO:5,DL_Only;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:0,CaInterFreq,0,Inactive,35,40;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:1,CaInterFreq,0,Inactive,35,40;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:2,CaInterFreq,0,Inactive,35,40;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:3,CaInterFreq,0,Inactive,35,40;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:4,CaInterFreq,0,Inactive,35,40;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:5,CaInterFreq,0,Inactive,35,40;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-FA:0,1,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,A5;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-FA:1,1,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,A5;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-FA:2,1,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,A5;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-FA:3,1,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,A5;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-FA:4,1,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,A5;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-FA:5,1,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,A5;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-CAC:CELL_NUM=0,MAX_CA_CALL_COUNT=400;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-CAC:CELL_NUM=1,MAX_CA_CALL_COUNT=400;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-CAC:CELL_NUM=2,MAX_CA_CALL_COUNT=400;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-CAC:CELL_NUM=3,MAX_CA_CALL_COUNT=400;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-CAC:CELL_NUM=4,MAX_CA_CALL_COUNT=400;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-CAC:CELL_NUM=5,MAX_CA_CALL_COUNT=400;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-PUCCHCONF-IDLE:0,use;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-PUCCHCONF-IDLE:1,use;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-PUCCHCONF-IDLE:2,use;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-PUCCHCONF-IDLE:3,use;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-PUCCHCONF-IDLE:4,use;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-PUCCHCONF-IDLE:5,use;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CASCHED-INF:ColocatedCell;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CABAND-INFO:0,use,use,41,BwClass_c,no_use,5,BwClass_c;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CABAND-INFO:1,no_use,no_use,41,BwClass_a,no_use,41,BwClass_a;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CABAND-INFO:2,no_use,no_use,41,BwClass_c,no_use,5,BwClass_c;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-TIMER-INF:,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-ACTIVE-LB:,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,OFF;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";



  

} 
if (($concurrent ne "") && ($optgp eq "2")) {


if ($alphaPCI ne ""){
 
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-INFO:CELL_NUM=9,TRACKING_AREA_CODE=\"\"H'$TAC\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n"; 
 
} 
 
if ($betaPCI ne ""){

print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-INFO:CELL_NUM=10,TRACKING_AREA_CODE=\"\"H'$TAC\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n"; 
 
 
} 

if ($gammaPCI ne ""){

print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-INFO:CELL_NUM=11,TRACKING_AREA_CODE=\"\"H'$TAC\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n"; 
 
 
}  
 
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CA-COLOC:0,0,EQUIP,32,9;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CA-COLOC:1,0,EQUIP,32,10;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CA-COLOC:2,0,EQUIP,32,11;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CA-COLOC:9,0,EQUIP,32,0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CA-COLOC:10,0,EQUIP,32,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CA-COLOC:11,0,EQUIP,32,2;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CACELL-INFO:0,DL_Only;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CACELL-INFO:1,DL_Only;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CACELL-INFO:2,DL_Only;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CACELL-INFO:9,DL_Only;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CACELL-INFO:10,DL_Only;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CACELL-INFO:11,DL_Only;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:0,CaInterFreq,0,Inactive,35,40;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:1,CaInterFreq,0,Inactive,35,40;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:2,CaInterFreq,0,Inactive,35,40;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:9,CaInterFreq,0,Inactive,35,40;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:10,CaInterFreq,0,Inactive,35,40;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:11,CaInterFreq,0,Inactive,35,40;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-FA:0,1,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,A5;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-FA:1,1,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,A5;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-FA:2,1,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,A5;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-FA:9,1,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,A5;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-FA:10,1,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,A5;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-FA:11,1,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,A5;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-CAC:CELL_NUM=0,MAX_CA_CALL_COUNT=400;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-CAC:CELL_NUM=1,MAX_CA_CALL_COUNT=400;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-CAC:CELL_NUM=2,MAX_CA_CALL_COUNT=400;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-CAC:CELL_NUM=9,MAX_CA_CALL_COUNT=400;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-CAC:CELL_NUM=10,MAX_CA_CALL_COUNT=400;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-CAC:CELL_NUM=11,MAX_CA_CALL_COUNT=400;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-PUCCHCONF-IDLE:0,use;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-PUCCHCONF-IDLE:1,use;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-PUCCHCONF-IDLE:2,use;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-PUCCHCONF-IDLE:9,use;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-PUCCHCONF-IDLE:10,use;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-PUCCHCONF-IDLE:11,use;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CASCHED-INF:ColocatedCell;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CABAND-INFO:0,use,use,41,BwClass_c,no_use,5,BwClass_c;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CABAND-INFO:1,no_use,no_use,41,BwClass_a,no_use,41,BwClass_a;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CABAND-INFO:2,no_use,no_use,41,BwClass_c,no_use,5,BwClass_c;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-TIMER-INF:,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-ACTIVE-LB:,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,OFF;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";




 
} 



if ($alphaPCI ne ""){
 
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-INFO:CELL_NUM=0,TRACKING_AREA_CODE=\"\"H'$TAC\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n"; 
 
} 
 
if ($betaPCI ne ""){

print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-INFO:CELL_NUM=1,TRACKING_AREA_CODE=\"\"H'$TAC\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n"; 
 
 
} 

if ($gammaPCI ne ""){

print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-INFO:CELL_NUM=2,TRACKING_AREA_CODE=\"\"H'$TAC\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n"; 
 
 
}  

# if ($optgp eq "3"){
 
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-SONFN-CELL:0,Off;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 4000\n";  
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-SONFN-CELL:1,Off;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 4000\n";  
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-SONFN-CELL:2,Off;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 4000\n";  
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-SONFN-CELL:3,Off;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 4000\n";  
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-SONFN-CELL:4,Off;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 4000\n";  
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-SONFN-CELL:5,Off;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 4000\n";  
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-SONFN-CELL:6,Off;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 4000\n";  
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-SONFN-CELL:7,Off;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 4000\n";  
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-SONFN-CELL:8,Off;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 4000\n"; 
 
# } 

# if (($optgp eq "1") || ($optgp eq "2")){ 


# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-TIMER-INF:S1_UPDATE_TIME_TO_WAIT=5,X2_SETUP_TIME_TO_WAIT=5,X2_UPDATE_TIME_TO_WAIT=5,S_CELL_DEACTIVATION_TIMER=1280;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n"; 

# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-C1XRTT-PRD:0,StrongestCells,Active,1,240ms,1;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 3000\n"; 
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-C1XRTT-PRD:1,StrongestCells,Active,1,240ms,1;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 3000\n"; 
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-C1XRTT-PRD:2,StrongestCells,Active,1,240ms,1;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 3000\n"; 
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-C1XRTT-PRD:3,StrongestCells,Active,1,240ms,1;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 3000\n"; 
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-C1XRTT-PRD:4,StrongestCells,Active,1,240ms,1;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 3000\n"; 
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-C1XRTT-PRD:5,StrongestCells,Active,1,240ms,1;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 3000\n"; 
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-C1XRTT-PRD:6,StrongestCells,Active,1,240ms,1;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 3000\n"; 
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-C1XRTT-PRD:7,StrongestCells,Active,1,240ms,1;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 3000\n"; 
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-C1XRTT-PRD:8,StrongestCells,Active,1,240ms,1;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 3000\n"; 






# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A1CNF:0,MeasGapDeact,Active,30,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 4000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A1CNF:1,MeasGapDeact,Active,30,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 4000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A1CNF:2,MeasGapDeact,Active,30,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 4000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A1CNF:3,MeasGapDeact,Active,30,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A1CNF:4,MeasGapDeact,Active,30,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A1CNF:5,MeasGapDeact,Active,30,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A1CNF:6,MeasGapDeact,Active,30,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A1CNF:7,MeasGapDeact,Active,30,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A1CNF:8,MeasGapDeact,Active,30,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:0,LteHo,Active,25,15,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 4000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:1,LteHo,Active,25,15,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 4000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:2,LteHo,Active,25,15,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 4000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:3,LteHo,Active,25,15,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:4,LteHo,Active,25,15,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:5,LteHo,Active,25,15,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:6,LteHo,Active,25,15,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:7,LteHo,Active,25,15,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:8,LteHo,Active,25,15,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:0,IRatBlind,Inactive,20,32,0,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 4000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:1,IRatBlind,Inactive,20,32,0,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 4000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:2,IRatBlind,Inactive,20,32,0,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 4000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:3,IRatBlind,Inactive,20,32,0,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:4,IRatBlind,Inactive,20,32,0,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:5,IRatBlind,Inactive,20,32,0,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:6,IRatBlind,Inactive,20,32,0,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:7,IRatBlind,Inactive,20,32,0,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:8,IRatBlind,Inactive,20,32,0,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:0,Ca,Inactive,35,32,0,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 4000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:1,Ca,Inactive,35,32,0,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 4000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:2,Ca,Inactive,35,32,0,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 4000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:3,Ca,Inactive,35,32,0,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:4,Ca,Inactive,35,32,0,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:5,Ca,Inactive,35,32,0,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:6,Ca,Inactive,35,32,0,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:7,Ca,Inactive,35,32,0,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:8,Ca,Inactive,35,32,0,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:0,IntraLteHandover,0,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:0,IntraLteHandover,1,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:0,IntraLteHandover,2,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:1,IntraLteHandover,0,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:1,IntraLteHandover,1,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:1,IntraLteHandover,2,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:2,IntraLteHandover,0,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:2,IntraLteHandover,1,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:2,IntraLteHandover,2,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:3,IntraLteHandover,0,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:3,IntraLteHandover,1,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:3,IntraLteHandover,2,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:4,IntraLteHandover,0,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:4,IntraLteHandover,1,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:4,IntraLteHandover,2,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:5,IntraLteHandover,0,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:5,IntraLteHandover,1,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:5,IntraLteHandover,2,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:6,IntraLteHandover,0,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:6,IntraLteHandover,1,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:6,IntraLteHandover,2,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:7,IntraLteHandover,0,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:7,IntraLteHandover,1,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:7,IntraLteHandover,2,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:8,IntraLteHandover,0,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:8,IntraLteHandover,1,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:8,IntraLteHandover,2,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:0,IntraFrequencyLb,0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:1,IntraFrequencyLb,0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:2,IntraFrequencyLb,0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:3,IntraFrequencyLb,0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:4,IntraFrequencyLb,0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:5,IntraFrequencyLb,0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:6,IntraFrequencyLb,0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:7,IntraFrequencyLb,0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:8,IntraFrequencyLb,0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:0,\"\"IntraFrequncyCre\"\",0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:1,\"\"IntraFrequncyCre\"\",0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:2,\"\"IntraFrequncyCre\"\",0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:3,\"\"IntraFrequncyCre\"\",0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:4,\"\"IntraFrequncyCre\"\",0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:5,\"\"IntraFrequncyCre\"\",0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:6,\"\"IntraFrequncyCre\"\",0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:7,\"\"IntraFrequncyCre\"\",0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:8,\"\"IntraFrequncyCre\"\",0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:0,IntraLteHandover,1,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:0,IntraLteHandover,2,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:0,IntraLteHandover,3,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:0,IntraLteHandover,4,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:0,IntraLteHandover,5,Active,24,30,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:1,IntraLteHandover,1,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:1,IntraLteHandover,2,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:1,IntraLteHandover,3,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:1,IntraLteHandover,4,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:1,IntraLteHandover,5,Active,24,30,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:2,IntraLteHandover,1,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:2,IntraLteHandover,2,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:2,IntraLteHandover,3,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:2,IntraLteHandover,4,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:2,IntraLteHandover,5,Active,24,30,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:3,IntraLteHandover,1,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:3,IntraLteHandover,2,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:3,IntraLteHandover,3,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:3,IntraLteHandover,4,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:3,IntraLteHandover,5,Active,24,30,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:4,IntraLteHandover,1,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:4,IntraLteHandover,2,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:4,IntraLteHandover,3,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:4,IntraLteHandover,4,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:4,IntraLteHandover,5,Active,24,30,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:5,IntraLteHandover,1,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:5,IntraLteHandover,2,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:5,IntraLteHandover,3,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:5,IntraLteHandover,4,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:5,IntraLteHandover,5,Active,24,30,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:6,IntraLteHandover,1,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:6,IntraLteHandover,2,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:6,IntraLteHandover,3,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:6,IntraLteHandover,4,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:6,IntraLteHandover,5,Active,24,30,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:7,IntraLteHandover,1,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:7,IntraLteHandover,2,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:7,IntraLteHandover,3,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:7,IntraLteHandover,4,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:7,IntraLteHandover,5,Active,24,30,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:8,IntraLteHandover,1,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:8,IntraLteHandover,2,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:8,IntraLteHandover,3,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:8,IntraLteHandover,4,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:8,IntraLteHandover,5,Active,24,30,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A6CNF:0,\"\"Ca\"\",0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A6CNF:1,\"\"Ca\"\",0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A6CNF:2,\"\"Ca\"\",0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A6CNF:3,\"\"Ca\"\",0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A6CNF:4,\"\"Ca\"\",0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A6CNF:5,\"\"Ca\"\",0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A6CNF:6,\"\"Ca\"\",0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A6CNF:7,\"\"Ca\"\",0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A6CNF:8,\"\"Ca\"\",0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 6000\n";







# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-C1XRTT-MOBIL:CELL_NUM=0,MULT_SIDS=1,MULT_NIDS=1,TOTAL_ZONES=2,ZONE_TIMER=1,PACKET_ZONE_ID=0,P_ZIDHYST_PARAM_INCLUDED=0,P_ZHYST_ENABLED=0,P_ZHYST_INFO_INCL=0,P_ZHYST_LIST_LEN=0,P_ZHYST_ACT_TIMER=0,P_ZHYST_TIMER_MUL=0,PZ_HYST_TIMER_EXP=0,P_REV=6,MIN_PREV=1,NEG_SLOT_CYCLE_INDEX_SUP=-1,ENCRYPT_MODE=-1,ENC_SUPPORTED=-1,SIG_ENCRYPT_SUP=-1,MSG_INTEGRITY_SUP=-1,SIG_INTEGRITY_SUPINCL=-1,SIG_INTEGRITY_SUP=-1,AUTH=1,MAX_NUM_ALT_SO=2,USE_SYNC_ID=-1,MS_INIT_POS_LOC_SUP_IND=-1,MOB_QOS=-1,BAND_CLASS_INFO_REQ=-1,BAND_CLASS=3,BYPASS_REG_IND=-1,ALT_BAND_CLASS=-1,MAX_ADD_SERV_INSTANCE=-1,HOME_REG=1,FOR_SIDREG=1,FOR_NIDREG=1,POWER_UP_REG=1,POWER_DOWN_REG=1,PARAMETER_REG=0,REG_PRD=58,REG_DIST=-1,PREF_MSIDTYPE=3,EXT_PREF_MSIDTYPE=-1,MEID_REQD=-1,MCC=310,IMSI1112=0,IMSI_TSUPPORTED=0,RECONNECT_MSG_IND=-1,RER_MODE_SUPPORTED=-1,TKZ_MODE_SUPPORTED=-1,TKZ_ID=-1,PILOT_REPORT=-1,SDB_SUPPORTED=-1,AUTO_FCSOALLOWED=-1,SDB_IN_RCNMIND=-1,FPC_FCH_INCLUDED=1,FPC_FCH_INIT_SETPT_RC3=56,FPC_FCH_INIT_SETPT_RC4=64,FPC_FCH_INIT_SETPT_RC5=56,FPC_FCH_INIT_SETPT_RC11=56,FPC_FCH_INIT_SETPT_RC12=0,T_ADD=28,PILOT_INC=3,RAND_CDMA2000_INCLUDED=0,RAND_CDMA2000=0,G_CSNAL2_ACK_TIMER=10,G_CSNASEQ_CONTEXT_TIMER=30;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-C1XRTT-MOBIL:CELL_NUM=1,MULT_SIDS=1,MULT_NIDS=1,TOTAL_ZONES=2,ZONE_TIMER=1,PACKET_ZONE_ID=0,P_ZIDHYST_PARAM_INCLUDED=0,P_ZHYST_ENABLED=0,P_ZHYST_INFO_INCL=0,P_ZHYST_LIST_LEN=0,P_ZHYST_ACT_TIMER=0,P_ZHYST_TIMER_MUL=0,PZ_HYST_TIMER_EXP=0,P_REV=6,MIN_PREV=1,NEG_SLOT_CYCLE_INDEX_SUP=-1,ENCRYPT_MODE=-1,ENC_SUPPORTED=-1,SIG_ENCRYPT_SUP=-1,MSG_INTEGRITY_SUP=-1,SIG_INTEGRITY_SUPINCL=-1,SIG_INTEGRITY_SUP=-1,AUTH=1,MAX_NUM_ALT_SO=2,USE_SYNC_ID=-1,MS_INIT_POS_LOC_SUP_IND=-1,MOB_QOS=-1,BAND_CLASS_INFO_REQ=-1,BAND_CLASS=3,BYPASS_REG_IND=-1,ALT_BAND_CLASS=-1,MAX_ADD_SERV_INSTANCE=-1,HOME_REG=1,FOR_SIDREG=1,FOR_NIDREG=1,POWER_UP_REG=1,POWER_DOWN_REG=1,PARAMETER_REG=0,REG_PRD=58,REG_DIST=-1,PREF_MSIDTYPE=3,EXT_PREF_MSIDTYPE=-1,MEID_REQD=-1,MCC=310,IMSI1112=0,IMSI_TSUPPORTED=0,RECONNECT_MSG_IND=-1,RER_MODE_SUPPORTED=-1,TKZ_MODE_SUPPORTED=-1,TKZ_ID=-1,PILOT_REPORT=-1,SDB_SUPPORTED=-1,AUTO_FCSOALLOWED=-1,SDB_IN_RCNMIND=-1,FPC_FCH_INCLUDED=1,FPC_FCH_INIT_SETPT_RC3=56,FPC_FCH_INIT_SETPT_RC4=64,FPC_FCH_INIT_SETPT_RC5=56,FPC_FCH_INIT_SETPT_RC11=56,FPC_FCH_INIT_SETPT_RC12=0,T_ADD=28,PILOT_INC=3,RAND_CDMA2000_INCLUDED=0,RAND_CDMA2000=0,G_CSNAL2_ACK_TIMER=10,G_CSNASEQ_CONTEXT_TIMER=30;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-C1XRTT-MOBIL:CELL_NUM=2,MULT_SIDS=1,MULT_NIDS=1,TOTAL_ZONES=2,ZONE_TIMER=1,PACKET_ZONE_ID=0,P_ZIDHYST_PARAM_INCLUDED=0,P_ZHYST_ENABLED=0,P_ZHYST_INFO_INCL=0,P_ZHYST_LIST_LEN=0,P_ZHYST_ACT_TIMER=0,P_ZHYST_TIMER_MUL=0,PZ_HYST_TIMER_EXP=0,P_REV=6,MIN_PREV=1,NEG_SLOT_CYCLE_INDEX_SUP=-1,ENCRYPT_MODE=-1,ENC_SUPPORTED=-1,SIG_ENCRYPT_SUP=-1,MSG_INTEGRITY_SUP=-1,SIG_INTEGRITY_SUPINCL=-1,SIG_INTEGRITY_SUP=-1,AUTH=1,MAX_NUM_ALT_SO=2,USE_SYNC_ID=-1,MS_INIT_POS_LOC_SUP_IND=-1,MOB_QOS=-1,BAND_CLASS_INFO_REQ=-1,BAND_CLASS=3,BYPASS_REG_IND=-1,ALT_BAND_CLASS=-1,MAX_ADD_SERV_INSTANCE=-1,HOME_REG=1,FOR_SIDREG=1,FOR_NIDREG=1,POWER_UP_REG=1,POWER_DOWN_REG=1,PARAMETER_REG=0,REG_PRD=58,REG_DIST=-1,PREF_MSIDTYPE=3,EXT_PREF_MSIDTYPE=-1,MEID_REQD=-1,MCC=310,IMSI1112=0,IMSI_TSUPPORTED=0,RECONNECT_MSG_IND=-1,RER_MODE_SUPPORTED=-1,TKZ_MODE_SUPPORTED=-1,TKZ_ID=-1,PILOT_REPORT=-1,SDB_SUPPORTED=-1,AUTO_FCSOALLOWED=-1,SDB_IN_RCNMIND=-1,FPC_FCH_INCLUDED=1,FPC_FCH_INIT_SETPT_RC3=56,FPC_FCH_INIT_SETPT_RC4=64,FPC_FCH_INIT_SETPT_RC5=56,FPC_FCH_INIT_SETPT_RC11=56,FPC_FCH_INIT_SETPT_RC12=0,T_ADD=28,PILOT_INC=3,RAND_CDMA2000_INCLUDED=0,RAND_CDMA2000=0,G_CSNAL2_ACK_TIMER=10,G_CSNASEQ_CONTEXT_TIMER=30;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-C1XRTT-MOBIL:CELL_NUM=3,MULT_SIDS=1,MULT_NIDS=1,TOTAL_ZONES=2,ZONE_TIMER=1,PACKET_ZONE_ID=0,P_ZIDHYST_PARAM_INCLUDED=0,P_ZHYST_ENABLED=0,P_ZHYST_INFO_INCL=0,P_ZHYST_LIST_LEN=0,P_ZHYST_ACT_TIMER=0,P_ZHYST_TIMER_MUL=0,PZ_HYST_TIMER_EXP=0,P_REV=6,MIN_PREV=1,NEG_SLOT_CYCLE_INDEX_SUP=-1,ENCRYPT_MODE=-1,ENC_SUPPORTED=-1,SIG_ENCRYPT_SUP=-1,MSG_INTEGRITY_SUP=-1,SIG_INTEGRITY_SUPINCL=-1,SIG_INTEGRITY_SUP=-1,AUTH=1,MAX_NUM_ALT_SO=2,USE_SYNC_ID=-1,MS_INIT_POS_LOC_SUP_IND=-1,MOB_QOS=-1,BAND_CLASS_INFO_REQ=-1,BAND_CLASS=3,BYPASS_REG_IND=-1,ALT_BAND_CLASS=-1,MAX_ADD_SERV_INSTANCE=-1,HOME_REG=1,FOR_SIDREG=1,FOR_NIDREG=1,POWER_UP_REG=1,POWER_DOWN_REG=1,PARAMETER_REG=0,REG_PRD=58,REG_DIST=-1,PREF_MSIDTYPE=3,EXT_PREF_MSIDTYPE=-1,MEID_REQD=-1,MCC=310,IMSI1112=0,IMSI_TSUPPORTED=0,RECONNECT_MSG_IND=-1,RER_MODE_SUPPORTED=-1,TKZ_MODE_SUPPORTED=-1,TKZ_ID=-1,PILOT_REPORT=-1,SDB_SUPPORTED=-1,AUTO_FCSOALLOWED=-1,SDB_IN_RCNMIND=-1,FPC_FCH_INCLUDED=1,FPC_FCH_INIT_SETPT_RC3=56,FPC_FCH_INIT_SETPT_RC4=64,FPC_FCH_INIT_SETPT_RC5=56,FPC_FCH_INIT_SETPT_RC11=56,FPC_FCH_INIT_SETPT_RC12=0,T_ADD=28,PILOT_INC=3,RAND_CDMA2000_INCLUDED=0,RAND_CDMA2000=0,G_CSNAL2_ACK_TIMER=10,G_CSNASEQ_CONTEXT_TIMER=30;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-C1XRTT-MOBIL:CELL_NUM=4,MULT_SIDS=1,MULT_NIDS=1,TOTAL_ZONES=2,ZONE_TIMER=1,PACKET_ZONE_ID=0,P_ZIDHYST_PARAM_INCLUDED=0,P_ZHYST_ENABLED=0,P_ZHYST_INFO_INCL=0,P_ZHYST_LIST_LEN=0,P_ZHYST_ACT_TIMER=0,P_ZHYST_TIMER_MUL=0,PZ_HYST_TIMER_EXP=0,P_REV=6,MIN_PREV=1,NEG_SLOT_CYCLE_INDEX_SUP=-1,ENCRYPT_MODE=-1,ENC_SUPPORTED=-1,SIG_ENCRYPT_SUP=-1,MSG_INTEGRITY_SUP=-1,SIG_INTEGRITY_SUPINCL=-1,SIG_INTEGRITY_SUP=-1,AUTH=1,MAX_NUM_ALT_SO=2,USE_SYNC_ID=-1,MS_INIT_POS_LOC_SUP_IND=-1,MOB_QOS=-1,BAND_CLASS_INFO_REQ=-1,BAND_CLASS=3,BYPASS_REG_IND=-1,ALT_BAND_CLASS=-1,MAX_ADD_SERV_INSTANCE=-1,HOME_REG=1,FOR_SIDREG=1,FOR_NIDREG=1,POWER_UP_REG=1,POWER_DOWN_REG=1,PARAMETER_REG=0,REG_PRD=58,REG_DIST=-1,PREF_MSIDTYPE=3,EXT_PREF_MSIDTYPE=-1,MEID_REQD=-1,MCC=310,IMSI1112=0,IMSI_TSUPPORTED=0,RECONNECT_MSG_IND=-1,RER_MODE_SUPPORTED=-1,TKZ_MODE_SUPPORTED=-1,TKZ_ID=-1,PILOT_REPORT=-1,SDB_SUPPORTED=-1,AUTO_FCSOALLOWED=-1,SDB_IN_RCNMIND=-1,FPC_FCH_INCLUDED=1,FPC_FCH_INIT_SETPT_RC3=56,FPC_FCH_INIT_SETPT_RC4=64,FPC_FCH_INIT_SETPT_RC5=56,FPC_FCH_INIT_SETPT_RC11=56,FPC_FCH_INIT_SETPT_RC12=0,T_ADD=28,PILOT_INC=3,RAND_CDMA2000_INCLUDED=0,RAND_CDMA2000=0,G_CSNAL2_ACK_TIMER=10,G_CSNASEQ_CONTEXT_TIMER=30;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-C1XRTT-MOBIL:CELL_NUM=5,MULT_SIDS=1,MULT_NIDS=1,TOTAL_ZONES=2,ZONE_TIMER=1,PACKET_ZONE_ID=0,P_ZIDHYST_PARAM_INCLUDED=0,P_ZHYST_ENABLED=0,P_ZHYST_INFO_INCL=0,P_ZHYST_LIST_LEN=0,P_ZHYST_ACT_TIMER=0,P_ZHYST_TIMER_MUL=0,PZ_HYST_TIMER_EXP=0,P_REV=6,MIN_PREV=1,NEG_SLOT_CYCLE_INDEX_SUP=-1,ENCRYPT_MODE=-1,ENC_SUPPORTED=-1,SIG_ENCRYPT_SUP=-1,MSG_INTEGRITY_SUP=-1,SIG_INTEGRITY_SUPINCL=-1,SIG_INTEGRITY_SUP=-1,AUTH=1,MAX_NUM_ALT_SO=2,USE_SYNC_ID=-1,MS_INIT_POS_LOC_SUP_IND=-1,MOB_QOS=-1,BAND_CLASS_INFO_REQ=-1,BAND_CLASS=3,BYPASS_REG_IND=-1,ALT_BAND_CLASS=-1,MAX_ADD_SERV_INSTANCE=-1,HOME_REG=1,FOR_SIDREG=1,FOR_NIDREG=1,POWER_UP_REG=1,POWER_DOWN_REG=1,PARAMETER_REG=0,REG_PRD=58,REG_DIST=-1,PREF_MSIDTYPE=3,EXT_PREF_MSIDTYPE=-1,MEID_REQD=-1,MCC=310,IMSI1112=0,IMSI_TSUPPORTED=0,RECONNECT_MSG_IND=-1,RER_MODE_SUPPORTED=-1,TKZ_MODE_SUPPORTED=-1,TKZ_ID=-1,PILOT_REPORT=-1,SDB_SUPPORTED=-1,AUTO_FCSOALLOWED=-1,SDB_IN_RCNMIND=-1,FPC_FCH_INCLUDED=1,FPC_FCH_INIT_SETPT_RC3=56,FPC_FCH_INIT_SETPT_RC4=64,FPC_FCH_INIT_SETPT_RC5=56,FPC_FCH_INIT_SETPT_RC11=56,FPC_FCH_INIT_SETPT_RC12=0,T_ADD=28,PILOT_INC=3,RAND_CDMA2000_INCLUDED=0,RAND_CDMA2000=0,G_CSNAL2_ACK_TIMER=10,G_CSNASEQ_CONTEXT_TIMER=30;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-C1XRTT-MOBIL:CELL_NUM=9,MULT_SIDS=1,MULT_NIDS=1,TOTAL_ZONES=2,ZONE_TIMER=1,PACKET_ZONE_ID=0,P_ZIDHYST_PARAM_INCLUDED=0,P_ZHYST_ENABLED=0,P_ZHYST_INFO_INCL=0,P_ZHYST_LIST_LEN=0,P_ZHYST_ACT_TIMER=0,P_ZHYST_TIMER_MUL=0,PZ_HYST_TIMER_EXP=0,P_REV=6,MIN_PREV=1,NEG_SLOT_CYCLE_INDEX_SUP=-1,ENCRYPT_MODE=-1,ENC_SUPPORTED=-1,SIG_ENCRYPT_SUP=-1,MSG_INTEGRITY_SUP=-1,SIG_INTEGRITY_SUPINCL=-1,SIG_INTEGRITY_SUP=-1,AUTH=1,MAX_NUM_ALT_SO=2,USE_SYNC_ID=-1,MS_INIT_POS_LOC_SUP_IND=-1,MOB_QOS=-1,BAND_CLASS_INFO_REQ=-1,BAND_CLASS=3,BYPASS_REG_IND=-1,ALT_BAND_CLASS=-1,MAX_ADD_SERV_INSTANCE=-1,HOME_REG=1,FOR_SIDREG=1,FOR_NIDREG=1,POWER_UP_REG=1,POWER_DOWN_REG=1,PARAMETER_REG=0,REG_PRD=58,REG_DIST=-1,PREF_MSIDTYPE=3,EXT_PREF_MSIDTYPE=-1,MEID_REQD=-1,MCC=310,IMSI1112=0,IMSI_TSUPPORTED=0,RECONNECT_MSG_IND=-1,RER_MODE_SUPPORTED=-1,TKZ_MODE_SUPPORTED=-1,TKZ_ID=-1,PILOT_REPORT=-1,SDB_SUPPORTED=-1,AUTO_FCSOALLOWED=-1,SDB_IN_RCNMIND=-1,FPC_FCH_INCLUDED=1,FPC_FCH_INIT_SETPT_RC3=56,FPC_FCH_INIT_SETPT_RC4=64,FPC_FCH_INIT_SETPT_RC5=56,FPC_FCH_INIT_SETPT_RC11=56,FPC_FCH_INIT_SETPT_RC12=0,T_ADD=28,PILOT_INC=3,RAND_CDMA2000_INCLUDED=0,RAND_CDMA2000=0,G_CSNAL2_ACK_TIMER=10,G_CSNASEQ_CONTEXT_TIMER=30;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-C1XRTT-MOBIL:CELL_NUM=10,MULT_SIDS=1,MULT_NIDS=1,TOTAL_ZONES=2,ZONE_TIMER=1,PACKET_ZONE_ID=0,P_ZIDHYST_PARAM_INCLUDED=0,P_ZHYST_ENABLED=0,P_ZHYST_INFO_INCL=0,P_ZHYST_LIST_LEN=0,P_ZHYST_ACT_TIMER=0,P_ZHYST_TIMER_MUL=0,PZ_HYST_TIMER_EXP=0,P_REV=6,MIN_PREV=1,NEG_SLOT_CYCLE_INDEX_SUP=-1,ENCRYPT_MODE=-1,ENC_SUPPORTED=-1,SIG_ENCRYPT_SUP=-1,MSG_INTEGRITY_SUP=-1,SIG_INTEGRITY_SUPINCL=-1,SIG_INTEGRITY_SUP=-1,AUTH=1,MAX_NUM_ALT_SO=2,USE_SYNC_ID=-1,MS_INIT_POS_LOC_SUP_IND=-1,MOB_QOS=-1,BAND_CLASS_INFO_REQ=-1,BAND_CLASS=3,BYPASS_REG_IND=-1,ALT_BAND_CLASS=-1,MAX_ADD_SERV_INSTANCE=-1,HOME_REG=1,FOR_SIDREG=1,FOR_NIDREG=1,POWER_UP_REG=1,POWER_DOWN_REG=1,PARAMETER_REG=0,REG_PRD=58,REG_DIST=-1,PREF_MSIDTYPE=3,EXT_PREF_MSIDTYPE=-1,MEID_REQD=-1,MCC=310,IMSI1112=0,IMSI_TSUPPORTED=0,RECONNECT_MSG_IND=-1,RER_MODE_SUPPORTED=-1,TKZ_MODE_SUPPORTED=-1,TKZ_ID=-1,PILOT_REPORT=-1,SDB_SUPPORTED=-1,AUTO_FCSOALLOWED=-1,SDB_IN_RCNMIND=-1,FPC_FCH_INCLUDED=1,FPC_FCH_INIT_SETPT_RC3=56,FPC_FCH_INIT_SETPT_RC4=64,FPC_FCH_INIT_SETPT_RC5=56,FPC_FCH_INIT_SETPT_RC11=56,FPC_FCH_INIT_SETPT_RC12=0,T_ADD=28,PILOT_INC=3,RAND_CDMA2000_INCLUDED=0,RAND_CDMA2000=0,G_CSNAL2_ACK_TIMER=10,G_CSNASEQ_CONTEXT_TIMER=30;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-C1XRTT-MOBIL:CELL_NUM=11,MULT_SIDS=1,MULT_NIDS=1,TOTAL_ZONES=2,ZONE_TIMER=1,PACKET_ZONE_ID=0,P_ZIDHYST_PARAM_INCLUDED=0,P_ZHYST_ENABLED=0,P_ZHYST_INFO_INCL=0,P_ZHYST_LIST_LEN=0,P_ZHYST_ACT_TIMER=0,P_ZHYST_TIMER_MUL=0,PZ_HYST_TIMER_EXP=0,P_REV=6,MIN_PREV=1,NEG_SLOT_CYCLE_INDEX_SUP=-1,ENCRYPT_MODE=-1,ENC_SUPPORTED=-1,SIG_ENCRYPT_SUP=-1,MSG_INTEGRITY_SUP=-1,SIG_INTEGRITY_SUPINCL=-1,SIG_INTEGRITY_SUP=-1,AUTH=1,MAX_NUM_ALT_SO=2,USE_SYNC_ID=-1,MS_INIT_POS_LOC_SUP_IND=-1,MOB_QOS=-1,BAND_CLASS_INFO_REQ=-1,BAND_CLASS=3,BYPASS_REG_IND=-1,ALT_BAND_CLASS=-1,MAX_ADD_SERV_INSTANCE=-1,HOME_REG=1,FOR_SIDREG=1,FOR_NIDREG=1,POWER_UP_REG=1,POWER_DOWN_REG=1,PARAMETER_REG=0,REG_PRD=58,REG_DIST=-1,PREF_MSIDTYPE=3,EXT_PREF_MSIDTYPE=-1,MEID_REQD=-1,MCC=310,IMSI1112=0,IMSI_TSUPPORTED=0,RECONNECT_MSG_IND=-1,RER_MODE_SUPPORTED=-1,TKZ_MODE_SUPPORTED=-1,TKZ_ID=-1,PILOT_REPORT=-1,SDB_SUPPORTED=-1,AUTO_FCSOALLOWED=-1,SDB_IN_RCNMIND=-1,FPC_FCH_INCLUDED=1,FPC_FCH_INIT_SETPT_RC3=56,FPC_FCH_INIT_SETPT_RC4=64,FPC_FCH_INIT_SETPT_RC5=56,FPC_FCH_INIT_SETPT_RC11=56,FPC_FCH_INIT_SETPT_RC12=0,T_ADD=28,PILOT_INC=3,RAND_CDMA2000_INCLUDED=0,RAND_CDMA2000=0,G_CSNAL2_ACK_TIMER=10,G_CSNASEQ_CONTEXT_TIMER=30;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 5000\n";
}
} 

# print "\n\noptgp:   $optgp\n\n";
if (($optgp eq "1") || ($optgp eq "2") || ($optgp eq "3")){ 


# print "FILE_4G_script TEST\n";

# print FILE_4G_script "test\n";

if ($alphaPCI ne ""){
 
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-INFO:CELL_NUM=0,TRACKING_AREA_CODE=\"\"H'$TAC\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n"; 
 
} 
 
if ($betaPCI ne ""){

print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-INFO:CELL_NUM=1,TRACKING_AREA_CODE=\"\"H'$TAC\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n"; 
 
 
} 

if ($gammaPCI ne ""){

print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-INFO:CELL_NUM=2,TRACKING_AREA_CODE=\"\"H'$TAC\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n"; 
 
 
}  

# if ($optgp eq "3"){
 
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-SONFN-CELL:0,Off;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 4000\n";  
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-SONFN-CELL:1,Off;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 4000\n";  
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-SONFN-CELL:2,Off;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 4000\n";  
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-SONFN-CELL:3,Off;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 4000\n";  
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-SONFN-CELL:4,Off;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 4000\n";  
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-SONFN-CELL:5,Off;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 4000\n";  
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-SONFN-CELL:6,Off;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 4000\n";  
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-SONFN-CELL:7,Off;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 4000\n";  
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-SONFN-CELL:8,Off;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 4000\n"; 
 
# } 

if (($optgp eq "1") || ($optgp eq "2")){ 


print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-TIMER-INF:S1_UPDATE_TIME_TO_WAIT=5,X2_SETUP_TIME_TO_WAIT=5,X2_UPDATE_TIME_TO_WAIT=5,S_CELL_DEACTIVATION_TIMER=1280;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n"; 

print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-C1XRTT-PRD:0,StrongestCells,Active,1,240ms,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n"; 
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-C1XRTT-PRD:1,StrongestCells,Active,1,240ms,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n"; 
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-C1XRTT-PRD:2,StrongestCells,Active,1,240ms,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n"; 
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-C1XRTT-PRD:3,StrongestCells,Active,1,240ms,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n"; 
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-C1XRTT-PRD:4,StrongestCells,Active,1,240ms,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n"; 
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-C1XRTT-PRD:5,StrongestCells,Active,1,240ms,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n"; 
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-C1XRTT-PRD:6,StrongestCells,Active,1,240ms,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n"; 
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-C1XRTT-PRD:7,StrongestCells,Active,1,240ms,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n"; 
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-C1XRTT-PRD:8,StrongestCells,Active,1,240ms,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n"; 






print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A1CNF:0,MeasGapDeact,Active,30,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A1CNF:1,MeasGapDeact,Active,30,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A1CNF:2,MeasGapDeact,Active,30,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A1CNF:3,MeasGapDeact,Active,30,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A1CNF:4,MeasGapDeact,Active,30,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A1CNF:5,MeasGapDeact,Active,30,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A1CNF:6,MeasGapDeact,Active,30,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A1CNF:7,MeasGapDeact,Active,30,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A1CNF:8,MeasGapDeact,Active,30,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:0,LteHo,Active,25,15,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:1,LteHo,Active,25,15,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:2,LteHo,Active,25,15,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:3,LteHo,Active,25,15,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:4,LteHo,Active,25,15,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:5,LteHo,Active,25,15,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:6,LteHo,Active,25,15,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:7,LteHo,Active,25,15,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:8,LteHo,Active,25,15,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:0,IRatBlind,Inactive,20,32,0,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:1,IRatBlind,Inactive,20,32,0,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:2,IRatBlind,Inactive,20,32,0,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:3,IRatBlind,Inactive,20,32,0,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:4,IRatBlind,Inactive,20,32,0,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:5,IRatBlind,Inactive,20,32,0,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:6,IRatBlind,Inactive,20,32,0,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:7,IRatBlind,Inactive,20,32,0,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:8,IRatBlind,Inactive,20,32,0,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:0,Ca,Inactive,35,32,0,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:1,Ca,Inactive,35,32,0,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:2,Ca,Inactive,35,32,0,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:3,Ca,Inactive,35,32,0,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:4,Ca,Inactive,35,32,0,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:5,Ca,Inactive,35,32,0,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:6,Ca,Inactive,35,32,0,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:7,Ca,Inactive,35,32,0,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A2CNF:8,Ca,Inactive,35,32,0,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:0,IntraLteHandover,0,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:0,IntraLteHandover,1,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:0,IntraLteHandover,2,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:1,IntraLteHandover,0,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:1,IntraLteHandover,1,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:1,IntraLteHandover,2,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:2,IntraLteHandover,0,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:2,IntraLteHandover,1,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:2,IntraLteHandover,2,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:3,IntraLteHandover,0,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:3,IntraLteHandover,1,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:3,IntraLteHandover,2,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:4,IntraLteHandover,0,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:4,IntraLteHandover,1,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:4,IntraLteHandover,2,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:5,IntraLteHandover,0,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:5,IntraLteHandover,1,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:5,IntraLteHandover,2,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:6,IntraLteHandover,0,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:6,IntraLteHandover,1,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:6,IntraLteHandover,2,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:7,IntraLteHandover,0,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:7,IntraLteHandover,1,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:7,IntraLteHandover,2,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:8,IntraLteHandover,0,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:8,IntraLteHandover,1,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:8,IntraLteHandover,2,Active,2,False,2,320ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:0,IntraFrequencyLb,0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:1,IntraFrequencyLb,0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:2,IntraFrequencyLb,0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:3,IntraFrequencyLb,0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:4,IntraFrequencyLb,0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:5,IntraFrequencyLb,0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:6,IntraFrequencyLb,0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:7,IntraFrequencyLb,0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:8,IntraFrequencyLb,0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:0,\"\"IntraFrequncyCre\"\",0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:1,\"\"IntraFrequncyCre\"\",0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:2,\"\"IntraFrequncyCre\"\",0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:3,\"\"IntraFrequncyCre\"\",0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:4,\"\"IntraFrequncyCre\"\",0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:5,\"\"IntraFrequncyCre\"\",0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:6,\"\"IntraFrequncyCre\"\",0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:7,\"\"IntraFrequncyCre\"\",0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A3CNF:8,\"\"IntraFrequncyCre\"\",0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:0,IntraLteHandover,1,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:0,IntraLteHandover,2,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:0,IntraLteHandover,3,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:0,IntraLteHandover,4,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:0,IntraLteHandover,5,Active,24,30,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:1,IntraLteHandover,1,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:1,IntraLteHandover,2,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:1,IntraLteHandover,3,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:1,IntraLteHandover,4,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:1,IntraLteHandover,5,Active,24,30,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:2,IntraLteHandover,1,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:2,IntraLteHandover,2,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:2,IntraLteHandover,3,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:2,IntraLteHandover,4,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:2,IntraLteHandover,5,Active,24,30,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:3,IntraLteHandover,1,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:3,IntraLteHandover,2,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:3,IntraLteHandover,3,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:3,IntraLteHandover,4,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:3,IntraLteHandover,5,Active,24,30,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:4,IntraLteHandover,1,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:4,IntraLteHandover,2,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:4,IntraLteHandover,3,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:4,IntraLteHandover,4,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:4,IntraLteHandover,5,Active,24,30,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:5,IntraLteHandover,1,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:5,IntraLteHandover,2,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:5,IntraLteHandover,3,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:5,IntraLteHandover,4,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:5,IntraLteHandover,5,Active,24,30,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:6,IntraLteHandover,1,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:6,IntraLteHandover,2,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:6,IntraLteHandover,3,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:6,IntraLteHandover,4,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:6,IntraLteHandover,5,Active,24,30,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:7,IntraLteHandover,1,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:7,IntraLteHandover,2,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:7,IntraLteHandover,3,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:7,IntraLteHandover,4,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:7,IntraLteHandover,5,Active,24,30,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:8,IntraLteHandover,1,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:8,IntraLteHandover,2,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:8,IntraLteHandover,3,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:8,IntraLteHandover,4,Active,24,34,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:8,IntraLteHandover,5,Active,24,30,32,32,2,480ms,rsrp,both,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A6CNF:0,\"\"Ca\"\",0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A6CNF:1,\"\"Ca\"\",0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A6CNF:2,\"\"Ca\"\",0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A6CNF:3,\"\"Ca\"\",0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A6CNF:4,\"\"Ca\"\",0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A6CNF:5,\"\"Ca\"\",0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A6CNF:6,\"\"Ca\"\",0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A6CNF:7,\"\"Ca\"\",0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A6CNF:8,\"\"Ca\"\",0,Inactive,4,False,0,480ms,rsrp,sameAsTriggerQuantity,8,240ms,8;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 6000\n";







print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-C1XRTT-MOBIL:CELL_NUM=0,MULT_SIDS=1,MULT_NIDS=1,TOTAL_ZONES=2,ZONE_TIMER=1,PACKET_ZONE_ID=0,P_ZIDHYST_PARAM_INCLUDED=0,P_ZHYST_ENABLED=0,P_ZHYST_INFO_INCL=0,P_ZHYST_LIST_LEN=0,P_ZHYST_ACT_TIMER=0,P_ZHYST_TIMER_MUL=0,PZ_HYST_TIMER_EXP=0,P_REV=6,MIN_PREV=1,NEG_SLOT_CYCLE_INDEX_SUP=-1,ENCRYPT_MODE=-1,ENC_SUPPORTED=-1,SIG_ENCRYPT_SUP=-1,MSG_INTEGRITY_SUP=-1,SIG_INTEGRITY_SUPINCL=-1,SIG_INTEGRITY_SUP=-1,AUTH=1,MAX_NUM_ALT_SO=2,USE_SYNC_ID=-1,MS_INIT_POS_LOC_SUP_IND=-1,MOB_QOS=-1,BAND_CLASS_INFO_REQ=-1,BAND_CLASS=3,BYPASS_REG_IND=-1,ALT_BAND_CLASS=-1,MAX_ADD_SERV_INSTANCE=-1,HOME_REG=1,FOR_SIDREG=1,FOR_NIDREG=1,POWER_UP_REG=1,POWER_DOWN_REG=1,PARAMETER_REG=0,REG_PRD=58,REG_DIST=-1,PREF_MSIDTYPE=3,EXT_PREF_MSIDTYPE=-1,MEID_REQD=-1,MCC=310,IMSI1112=0,IMSI_TSUPPORTED=0,RECONNECT_MSG_IND=-1,RER_MODE_SUPPORTED=-1,TKZ_MODE_SUPPORTED=-1,TKZ_ID=-1,PILOT_REPORT=-1,SDB_SUPPORTED=-1,AUTO_FCSOALLOWED=-1,SDB_IN_RCNMIND=-1,FPC_FCH_INCLUDED=1,FPC_FCH_INIT_SETPT_RC3=56,FPC_FCH_INIT_SETPT_RC4=64,FPC_FCH_INIT_SETPT_RC5=56,FPC_FCH_INIT_SETPT_RC11=56,FPC_FCH_INIT_SETPT_RC12=0,T_ADD=28,PILOT_INC=3,RAND_CDMA2000_INCLUDED=0,RAND_CDMA2000=0,G_CSNAL2_ACK_TIMER=10,G_CSNASEQ_CONTEXT_TIMER=30;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-C1XRTT-MOBIL:CELL_NUM=1,MULT_SIDS=1,MULT_NIDS=1,TOTAL_ZONES=2,ZONE_TIMER=1,PACKET_ZONE_ID=0,P_ZIDHYST_PARAM_INCLUDED=0,P_ZHYST_ENABLED=0,P_ZHYST_INFO_INCL=0,P_ZHYST_LIST_LEN=0,P_ZHYST_ACT_TIMER=0,P_ZHYST_TIMER_MUL=0,PZ_HYST_TIMER_EXP=0,P_REV=6,MIN_PREV=1,NEG_SLOT_CYCLE_INDEX_SUP=-1,ENCRYPT_MODE=-1,ENC_SUPPORTED=-1,SIG_ENCRYPT_SUP=-1,MSG_INTEGRITY_SUP=-1,SIG_INTEGRITY_SUPINCL=-1,SIG_INTEGRITY_SUP=-1,AUTH=1,MAX_NUM_ALT_SO=2,USE_SYNC_ID=-1,MS_INIT_POS_LOC_SUP_IND=-1,MOB_QOS=-1,BAND_CLASS_INFO_REQ=-1,BAND_CLASS=3,BYPASS_REG_IND=-1,ALT_BAND_CLASS=-1,MAX_ADD_SERV_INSTANCE=-1,HOME_REG=1,FOR_SIDREG=1,FOR_NIDREG=1,POWER_UP_REG=1,POWER_DOWN_REG=1,PARAMETER_REG=0,REG_PRD=58,REG_DIST=-1,PREF_MSIDTYPE=3,EXT_PREF_MSIDTYPE=-1,MEID_REQD=-1,MCC=310,IMSI1112=0,IMSI_TSUPPORTED=0,RECONNECT_MSG_IND=-1,RER_MODE_SUPPORTED=-1,TKZ_MODE_SUPPORTED=-1,TKZ_ID=-1,PILOT_REPORT=-1,SDB_SUPPORTED=-1,AUTO_FCSOALLOWED=-1,SDB_IN_RCNMIND=-1,FPC_FCH_INCLUDED=1,FPC_FCH_INIT_SETPT_RC3=56,FPC_FCH_INIT_SETPT_RC4=64,FPC_FCH_INIT_SETPT_RC5=56,FPC_FCH_INIT_SETPT_RC11=56,FPC_FCH_INIT_SETPT_RC12=0,T_ADD=28,PILOT_INC=3,RAND_CDMA2000_INCLUDED=0,RAND_CDMA2000=0,G_CSNAL2_ACK_TIMER=10,G_CSNASEQ_CONTEXT_TIMER=30;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-C1XRTT-MOBIL:CELL_NUM=2,MULT_SIDS=1,MULT_NIDS=1,TOTAL_ZONES=2,ZONE_TIMER=1,PACKET_ZONE_ID=0,P_ZIDHYST_PARAM_INCLUDED=0,P_ZHYST_ENABLED=0,P_ZHYST_INFO_INCL=0,P_ZHYST_LIST_LEN=0,P_ZHYST_ACT_TIMER=0,P_ZHYST_TIMER_MUL=0,PZ_HYST_TIMER_EXP=0,P_REV=6,MIN_PREV=1,NEG_SLOT_CYCLE_INDEX_SUP=-1,ENCRYPT_MODE=-1,ENC_SUPPORTED=-1,SIG_ENCRYPT_SUP=-1,MSG_INTEGRITY_SUP=-1,SIG_INTEGRITY_SUPINCL=-1,SIG_INTEGRITY_SUP=-1,AUTH=1,MAX_NUM_ALT_SO=2,USE_SYNC_ID=-1,MS_INIT_POS_LOC_SUP_IND=-1,MOB_QOS=-1,BAND_CLASS_INFO_REQ=-1,BAND_CLASS=3,BYPASS_REG_IND=-1,ALT_BAND_CLASS=-1,MAX_ADD_SERV_INSTANCE=-1,HOME_REG=1,FOR_SIDREG=1,FOR_NIDREG=1,POWER_UP_REG=1,POWER_DOWN_REG=1,PARAMETER_REG=0,REG_PRD=58,REG_DIST=-1,PREF_MSIDTYPE=3,EXT_PREF_MSIDTYPE=-1,MEID_REQD=-1,MCC=310,IMSI1112=0,IMSI_TSUPPORTED=0,RECONNECT_MSG_IND=-1,RER_MODE_SUPPORTED=-1,TKZ_MODE_SUPPORTED=-1,TKZ_ID=-1,PILOT_REPORT=-1,SDB_SUPPORTED=-1,AUTO_FCSOALLOWED=-1,SDB_IN_RCNMIND=-1,FPC_FCH_INCLUDED=1,FPC_FCH_INIT_SETPT_RC3=56,FPC_FCH_INIT_SETPT_RC4=64,FPC_FCH_INIT_SETPT_RC5=56,FPC_FCH_INIT_SETPT_RC11=56,FPC_FCH_INIT_SETPT_RC12=0,T_ADD=28,PILOT_INC=3,RAND_CDMA2000_INCLUDED=0,RAND_CDMA2000=0,G_CSNAL2_ACK_TIMER=10,G_CSNASEQ_CONTEXT_TIMER=30;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-C1XRTT-MOBIL:CELL_NUM=3,MULT_SIDS=1,MULT_NIDS=1,TOTAL_ZONES=2,ZONE_TIMER=1,PACKET_ZONE_ID=0,P_ZIDHYST_PARAM_INCLUDED=0,P_ZHYST_ENABLED=0,P_ZHYST_INFO_INCL=0,P_ZHYST_LIST_LEN=0,P_ZHYST_ACT_TIMER=0,P_ZHYST_TIMER_MUL=0,PZ_HYST_TIMER_EXP=0,P_REV=6,MIN_PREV=1,NEG_SLOT_CYCLE_INDEX_SUP=-1,ENCRYPT_MODE=-1,ENC_SUPPORTED=-1,SIG_ENCRYPT_SUP=-1,MSG_INTEGRITY_SUP=-1,SIG_INTEGRITY_SUPINCL=-1,SIG_INTEGRITY_SUP=-1,AUTH=1,MAX_NUM_ALT_SO=2,USE_SYNC_ID=-1,MS_INIT_POS_LOC_SUP_IND=-1,MOB_QOS=-1,BAND_CLASS_INFO_REQ=-1,BAND_CLASS=3,BYPASS_REG_IND=-1,ALT_BAND_CLASS=-1,MAX_ADD_SERV_INSTANCE=-1,HOME_REG=1,FOR_SIDREG=1,FOR_NIDREG=1,POWER_UP_REG=1,POWER_DOWN_REG=1,PARAMETER_REG=0,REG_PRD=58,REG_DIST=-1,PREF_MSIDTYPE=3,EXT_PREF_MSIDTYPE=-1,MEID_REQD=-1,MCC=310,IMSI1112=0,IMSI_TSUPPORTED=0,RECONNECT_MSG_IND=-1,RER_MODE_SUPPORTED=-1,TKZ_MODE_SUPPORTED=-1,TKZ_ID=-1,PILOT_REPORT=-1,SDB_SUPPORTED=-1,AUTO_FCSOALLOWED=-1,SDB_IN_RCNMIND=-1,FPC_FCH_INCLUDED=1,FPC_FCH_INIT_SETPT_RC3=56,FPC_FCH_INIT_SETPT_RC4=64,FPC_FCH_INIT_SETPT_RC5=56,FPC_FCH_INIT_SETPT_RC11=56,FPC_FCH_INIT_SETPT_RC12=0,T_ADD=28,PILOT_INC=3,RAND_CDMA2000_INCLUDED=0,RAND_CDMA2000=0,G_CSNAL2_ACK_TIMER=10,G_CSNASEQ_CONTEXT_TIMER=30;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-C1XRTT-MOBIL:CELL_NUM=4,MULT_SIDS=1,MULT_NIDS=1,TOTAL_ZONES=2,ZONE_TIMER=1,PACKET_ZONE_ID=0,P_ZIDHYST_PARAM_INCLUDED=0,P_ZHYST_ENABLED=0,P_ZHYST_INFO_INCL=0,P_ZHYST_LIST_LEN=0,P_ZHYST_ACT_TIMER=0,P_ZHYST_TIMER_MUL=0,PZ_HYST_TIMER_EXP=0,P_REV=6,MIN_PREV=1,NEG_SLOT_CYCLE_INDEX_SUP=-1,ENCRYPT_MODE=-1,ENC_SUPPORTED=-1,SIG_ENCRYPT_SUP=-1,MSG_INTEGRITY_SUP=-1,SIG_INTEGRITY_SUPINCL=-1,SIG_INTEGRITY_SUP=-1,AUTH=1,MAX_NUM_ALT_SO=2,USE_SYNC_ID=-1,MS_INIT_POS_LOC_SUP_IND=-1,MOB_QOS=-1,BAND_CLASS_INFO_REQ=-1,BAND_CLASS=3,BYPASS_REG_IND=-1,ALT_BAND_CLASS=-1,MAX_ADD_SERV_INSTANCE=-1,HOME_REG=1,FOR_SIDREG=1,FOR_NIDREG=1,POWER_UP_REG=1,POWER_DOWN_REG=1,PARAMETER_REG=0,REG_PRD=58,REG_DIST=-1,PREF_MSIDTYPE=3,EXT_PREF_MSIDTYPE=-1,MEID_REQD=-1,MCC=310,IMSI1112=0,IMSI_TSUPPORTED=0,RECONNECT_MSG_IND=-1,RER_MODE_SUPPORTED=-1,TKZ_MODE_SUPPORTED=-1,TKZ_ID=-1,PILOT_REPORT=-1,SDB_SUPPORTED=-1,AUTO_FCSOALLOWED=-1,SDB_IN_RCNMIND=-1,FPC_FCH_INCLUDED=1,FPC_FCH_INIT_SETPT_RC3=56,FPC_FCH_INIT_SETPT_RC4=64,FPC_FCH_INIT_SETPT_RC5=56,FPC_FCH_INIT_SETPT_RC11=56,FPC_FCH_INIT_SETPT_RC12=0,T_ADD=28,PILOT_INC=3,RAND_CDMA2000_INCLUDED=0,RAND_CDMA2000=0,G_CSNAL2_ACK_TIMER=10,G_CSNASEQ_CONTEXT_TIMER=30;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-C1XRTT-MOBIL:CELL_NUM=5,MULT_SIDS=1,MULT_NIDS=1,TOTAL_ZONES=2,ZONE_TIMER=1,PACKET_ZONE_ID=0,P_ZIDHYST_PARAM_INCLUDED=0,P_ZHYST_ENABLED=0,P_ZHYST_INFO_INCL=0,P_ZHYST_LIST_LEN=0,P_ZHYST_ACT_TIMER=0,P_ZHYST_TIMER_MUL=0,PZ_HYST_TIMER_EXP=0,P_REV=6,MIN_PREV=1,NEG_SLOT_CYCLE_INDEX_SUP=-1,ENCRYPT_MODE=-1,ENC_SUPPORTED=-1,SIG_ENCRYPT_SUP=-1,MSG_INTEGRITY_SUP=-1,SIG_INTEGRITY_SUPINCL=-1,SIG_INTEGRITY_SUP=-1,AUTH=1,MAX_NUM_ALT_SO=2,USE_SYNC_ID=-1,MS_INIT_POS_LOC_SUP_IND=-1,MOB_QOS=-1,BAND_CLASS_INFO_REQ=-1,BAND_CLASS=3,BYPASS_REG_IND=-1,ALT_BAND_CLASS=-1,MAX_ADD_SERV_INSTANCE=-1,HOME_REG=1,FOR_SIDREG=1,FOR_NIDREG=1,POWER_UP_REG=1,POWER_DOWN_REG=1,PARAMETER_REG=0,REG_PRD=58,REG_DIST=-1,PREF_MSIDTYPE=3,EXT_PREF_MSIDTYPE=-1,MEID_REQD=-1,MCC=310,IMSI1112=0,IMSI_TSUPPORTED=0,RECONNECT_MSG_IND=-1,RER_MODE_SUPPORTED=-1,TKZ_MODE_SUPPORTED=-1,TKZ_ID=-1,PILOT_REPORT=-1,SDB_SUPPORTED=-1,AUTO_FCSOALLOWED=-1,SDB_IN_RCNMIND=-1,FPC_FCH_INCLUDED=1,FPC_FCH_INIT_SETPT_RC3=56,FPC_FCH_INIT_SETPT_RC4=64,FPC_FCH_INIT_SETPT_RC5=56,FPC_FCH_INIT_SETPT_RC11=56,FPC_FCH_INIT_SETPT_RC12=0,T_ADD=28,PILOT_INC=3,RAND_CDMA2000_INCLUDED=0,RAND_CDMA2000=0,G_CSNAL2_ACK_TIMER=10,G_CSNASEQ_CONTEXT_TIMER=30;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-C1XRTT-MOBIL:CELL_NUM=9,MULT_SIDS=1,MULT_NIDS=1,TOTAL_ZONES=2,ZONE_TIMER=1,PACKET_ZONE_ID=0,P_ZIDHYST_PARAM_INCLUDED=0,P_ZHYST_ENABLED=0,P_ZHYST_INFO_INCL=0,P_ZHYST_LIST_LEN=0,P_ZHYST_ACT_TIMER=0,P_ZHYST_TIMER_MUL=0,PZ_HYST_TIMER_EXP=0,P_REV=6,MIN_PREV=1,NEG_SLOT_CYCLE_INDEX_SUP=-1,ENCRYPT_MODE=-1,ENC_SUPPORTED=-1,SIG_ENCRYPT_SUP=-1,MSG_INTEGRITY_SUP=-1,SIG_INTEGRITY_SUPINCL=-1,SIG_INTEGRITY_SUP=-1,AUTH=1,MAX_NUM_ALT_SO=2,USE_SYNC_ID=-1,MS_INIT_POS_LOC_SUP_IND=-1,MOB_QOS=-1,BAND_CLASS_INFO_REQ=-1,BAND_CLASS=3,BYPASS_REG_IND=-1,ALT_BAND_CLASS=-1,MAX_ADD_SERV_INSTANCE=-1,HOME_REG=1,FOR_SIDREG=1,FOR_NIDREG=1,POWER_UP_REG=1,POWER_DOWN_REG=1,PARAMETER_REG=0,REG_PRD=58,REG_DIST=-1,PREF_MSIDTYPE=3,EXT_PREF_MSIDTYPE=-1,MEID_REQD=-1,MCC=310,IMSI1112=0,IMSI_TSUPPORTED=0,RECONNECT_MSG_IND=-1,RER_MODE_SUPPORTED=-1,TKZ_MODE_SUPPORTED=-1,TKZ_ID=-1,PILOT_REPORT=-1,SDB_SUPPORTED=-1,AUTO_FCSOALLOWED=-1,SDB_IN_RCNMIND=-1,FPC_FCH_INCLUDED=1,FPC_FCH_INIT_SETPT_RC3=56,FPC_FCH_INIT_SETPT_RC4=64,FPC_FCH_INIT_SETPT_RC5=56,FPC_FCH_INIT_SETPT_RC11=56,FPC_FCH_INIT_SETPT_RC12=0,T_ADD=28,PILOT_INC=3,RAND_CDMA2000_INCLUDED=0,RAND_CDMA2000=0,G_CSNAL2_ACK_TIMER=10,G_CSNASEQ_CONTEXT_TIMER=30;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-C1XRTT-MOBIL:CELL_NUM=10,MULT_SIDS=1,MULT_NIDS=1,TOTAL_ZONES=2,ZONE_TIMER=1,PACKET_ZONE_ID=0,P_ZIDHYST_PARAM_INCLUDED=0,P_ZHYST_ENABLED=0,P_ZHYST_INFO_INCL=0,P_ZHYST_LIST_LEN=0,P_ZHYST_ACT_TIMER=0,P_ZHYST_TIMER_MUL=0,PZ_HYST_TIMER_EXP=0,P_REV=6,MIN_PREV=1,NEG_SLOT_CYCLE_INDEX_SUP=-1,ENCRYPT_MODE=-1,ENC_SUPPORTED=-1,SIG_ENCRYPT_SUP=-1,MSG_INTEGRITY_SUP=-1,SIG_INTEGRITY_SUPINCL=-1,SIG_INTEGRITY_SUP=-1,AUTH=1,MAX_NUM_ALT_SO=2,USE_SYNC_ID=-1,MS_INIT_POS_LOC_SUP_IND=-1,MOB_QOS=-1,BAND_CLASS_INFO_REQ=-1,BAND_CLASS=3,BYPASS_REG_IND=-1,ALT_BAND_CLASS=-1,MAX_ADD_SERV_INSTANCE=-1,HOME_REG=1,FOR_SIDREG=1,FOR_NIDREG=1,POWER_UP_REG=1,POWER_DOWN_REG=1,PARAMETER_REG=0,REG_PRD=58,REG_DIST=-1,PREF_MSIDTYPE=3,EXT_PREF_MSIDTYPE=-1,MEID_REQD=-1,MCC=310,IMSI1112=0,IMSI_TSUPPORTED=0,RECONNECT_MSG_IND=-1,RER_MODE_SUPPORTED=-1,TKZ_MODE_SUPPORTED=-1,TKZ_ID=-1,PILOT_REPORT=-1,SDB_SUPPORTED=-1,AUTO_FCSOALLOWED=-1,SDB_IN_RCNMIND=-1,FPC_FCH_INCLUDED=1,FPC_FCH_INIT_SETPT_RC3=56,FPC_FCH_INIT_SETPT_RC4=64,FPC_FCH_INIT_SETPT_RC5=56,FPC_FCH_INIT_SETPT_RC11=56,FPC_FCH_INIT_SETPT_RC12=0,T_ADD=28,PILOT_INC=3,RAND_CDMA2000_INCLUDED=0,RAND_CDMA2000=0,G_CSNAL2_ACK_TIMER=10,G_CSNASEQ_CONTEXT_TIMER=30;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-C1XRTT-MOBIL:CELL_NUM=11,MULT_SIDS=1,MULT_NIDS=1,TOTAL_ZONES=2,ZONE_TIMER=1,PACKET_ZONE_ID=0,P_ZIDHYST_PARAM_INCLUDED=0,P_ZHYST_ENABLED=0,P_ZHYST_INFO_INCL=0,P_ZHYST_LIST_LEN=0,P_ZHYST_ACT_TIMER=0,P_ZHYST_TIMER_MUL=0,PZ_HYST_TIMER_EXP=0,P_REV=6,MIN_PREV=1,NEG_SLOT_CYCLE_INDEX_SUP=-1,ENCRYPT_MODE=-1,ENC_SUPPORTED=-1,SIG_ENCRYPT_SUP=-1,MSG_INTEGRITY_SUP=-1,SIG_INTEGRITY_SUPINCL=-1,SIG_INTEGRITY_SUP=-1,AUTH=1,MAX_NUM_ALT_SO=2,USE_SYNC_ID=-1,MS_INIT_POS_LOC_SUP_IND=-1,MOB_QOS=-1,BAND_CLASS_INFO_REQ=-1,BAND_CLASS=3,BYPASS_REG_IND=-1,ALT_BAND_CLASS=-1,MAX_ADD_SERV_INSTANCE=-1,HOME_REG=1,FOR_SIDREG=1,FOR_NIDREG=1,POWER_UP_REG=1,POWER_DOWN_REG=1,PARAMETER_REG=0,REG_PRD=58,REG_DIST=-1,PREF_MSIDTYPE=3,EXT_PREF_MSIDTYPE=-1,MEID_REQD=-1,MCC=310,IMSI1112=0,IMSI_TSUPPORTED=0,RECONNECT_MSG_IND=-1,RER_MODE_SUPPORTED=-1,TKZ_MODE_SUPPORTED=-1,TKZ_ID=-1,PILOT_REPORT=-1,SDB_SUPPORTED=-1,AUTO_FCSOALLOWED=-1,SDB_IN_RCNMIND=-1,FPC_FCH_INCLUDED=1,FPC_FCH_INIT_SETPT_RC3=56,FPC_FCH_INIT_SETPT_RC4=64,FPC_FCH_INIT_SETPT_RC5=56,FPC_FCH_INIT_SETPT_RC11=56,FPC_FCH_INIT_SETPT_RC12=0,T_ADD=28,PILOT_INC=3,RAND_CDMA2000_INCLUDED=0,RAND_CDMA2000=0,G_CSNAL2_ACK_TIMER=10,G_CSNASEQ_CONTEXT_TIMER=30;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";



}


print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-SONFN-CELL:0,Off;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";  
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-SONFN-CELL:1,Off;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";  
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-SONFN-CELL:2,Off;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";  
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-SONFN-CELL:3,Off;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";  
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-SONFN-CELL:4,Off;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";  
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-SONFN-CELL:5,Off;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";  
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-SONFN-CELL:9,Off;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";  
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-SONFN-CELL:10,Off;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";  
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-SONFN-CELL:11,Off;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n"; 

my ($boolnbr);
$boolnbr = "false";

if (($concurrent ne "concurrentnonbr8T") ||  ($concurrent ne "concurrentnonbr4T") || ($optgp eq "3")){
     $boolnbr = "true";
    if (($alphaPCI ne "") && ($betaPCI ne "") && ($gammaPCI ne "")){
    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"0\"\",\"\"0\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"1\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
     print FILE_4G_script "xsh.Screen.Send VbCr\n";		
     print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"0\"\",\"\"1\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"2\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
     print FILE_4G_script "xsh.Screen.Send VbCr\n";		
     print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"1\"\",\"\"0\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"0\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
     print FILE_4G_script "xsh.Screen.Send VbCr\n";		
     print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"1\"\",\"\"1\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"2\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
     print FILE_4G_script "xsh.Screen.Send VbCr\n";		
     print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"2\"\",\"\"0\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"0\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
     print FILE_4G_script "xsh.Screen.Send VbCr\n";		
     print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"2\"\",\"\"1\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"1\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
     print FILE_4G_script "xsh.Screen.Send VbCr\n";		
     print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

   }


    if (($alphaPCI ne "") && ($betaPCI ne "") && ($gammaPCI eq "")){
    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"0\"\",\"\"0\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"1\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
     print FILE_4G_script "xsh.Screen.Send VbCr\n";		
     print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"1\"\",\"\"0\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"0\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
     print FILE_4G_script "xsh.Screen.Send VbCr\n";		
     print FILE_4G_script "xsh.Session.Sleep 2000\n"; 



   }     
}


if (($concurrent eq "concurrentnonbr8T") || (($concurrent eq "concurrent") && ($div eq "8T8R"))) {
 
    # print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"0\"\",\"\"0\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"1\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    # print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    # print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    # print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"0\"\",\"\"1\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"2\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    # print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    # print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"0\"\",\"\"2\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"3\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"0\"\",\"\"3\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"4\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"0\"\",\"\"4\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"5\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 


    # print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"1\"\",\"\"0\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"0\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    # print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    # print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    # print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"1\"\",\"\"1\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"2\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    # print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    # print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"1\"\",\"\"2\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"3\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"1\"\",\"\"3\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"4\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"1\"\",\"\"4\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"5\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
    
    # print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"2\"\",\"\"0\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"0\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    # print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    # print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    # print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"2\"\",\"\"1\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"1\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    # print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    # print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"2\"\",\"\"2\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"3\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"2\"\",\"\"3\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"4\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"2\"\",\"\"4\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"5\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 




    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"3\"\",\"\"0\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"4\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"3\"\",\"\"1\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"5\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"3\"\",\"\"2\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"0\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"3\"\",\"\"3\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"1\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"3\"\",\"\"4\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"2\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 




    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"4\"\",\"\"0\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"3\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"4\"\",\"\"1\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"5\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"4\"\",\"\"2\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"0\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"4\"\",\"\"3\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"1\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"4\"\",\"\"4\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"2\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 



    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"5\"\",\"\"0\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"3\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"5\"\",\"\"1\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"4\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"5\"\",\"\"2\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"0\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"5\"\",\"\"3\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"1\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"5\"\",\"\"4\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"2\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
        
    print FILE_4G_script "xsh.Screen.Send VbCr\n";
    print FILE_4G_script "xsh.Session.StopLog\n";
 
 }

if (($concurrent eq "concurrentnonbr4T") || (($concurrent eq "concurrent") && ($div eq "4T4R"))) {
 
     # print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"0\"\",\"\"0\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"1\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    # print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    # print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    # print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"0\"\",\"\"1\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"2\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    # print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    # print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"0\"\",\"\"2\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"9\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"0\"\",\"\"3\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"10\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"0\"\",\"\"4\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"11\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 


    # print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"1\"\",\"\"0\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"0\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    # print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    # print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    # print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"1\"\",\"\"1\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"2\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    # print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    # print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"1\"\",\"\"2\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"9\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"1\"\",\"\"3\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"10\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"1\"\",\"\"4\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"11\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
    
    # print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"2\"\",\"\"0\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"0\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    # print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    # print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    # print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"2\"\",\"\"1\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"1\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    # print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    # print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"2\"\",\"\"2\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"9\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"2\"\",\"\"3\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"10\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"2\"\",\"\"4\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"11\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 




    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"9\"\",\"\"0\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"10\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"9\"\",\"\"1\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"11\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"9\"\",\"\"2\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"0\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"9\"\",\"\"3\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"1\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"9\"\",\"\"4\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"2\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 




    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"10\"\",\"\"0\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"9\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"10\"\",\"\"1\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"11\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"10\"\",\"\"2\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"0\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"10\"\",\"\"3\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"1\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"10\"\",\"\"4\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"2\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 



    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"11\"\",\"\"0\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"9\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"11\"\",\"\"1\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"10\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"11\"\",\"\"2\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"0\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"11\"\",\"\"3\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"1\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"11\"\",\"\"4\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"2\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
 
} 
 
if ($pkg eq "0"){

print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-NBR-EUTRAN:CELL_NUM=0,RELATION_IDX=0,ENB_MCC=310,ENB_MNC=120,MCC0=310,MNC0=120,MCC1=FFF,MNC1=FFF;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-NBR-EUTRAN:CELL_NUM=0,RELATION_IDX=1,ENB_MCC=310,ENB_MNC=120,MCC0=310,MNC0=120,MCC1=FFF,MNC1=FFF;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-NBR-EUTRAN:CELL_NUM=1,RELATION_IDX=0,ENB_MCC=310,ENB_MNC=120,MCC0=310,MNC0=120,MCC1=FFF,MNC1=FFF;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-NBR-EUTRAN:CELL_NUM=1,RELATION_IDX=1,ENB_MCC=310,ENB_MNC=120,MCC0=310,MNC0=120,MCC1=FFF,MNC1=FFF;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-NBR-EUTRAN:CELL_NUM=2,RELATION_IDX=0,ENB_MCC=310,ENB_MNC=120,MCC0=310,MNC0=120,MCC1=FFF,MNC1=FFF;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-NBR-EUTRAN:CELL_NUM=2,RELATION_IDX=1,ENB_MCC=310,ENB_MNC=120,MCC0=310,MNC0=120,MCC1=FFF,MNC1=FFF;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
}

print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName UPLD-CONF-FILE:,\"\"*\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 60000\n";

print FILE_4G_script "xsh.Screen.send \"exit;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 1200\n";
print FILE_4G_script "xsh.Screen.send \"pld.otm input 0x00220140[0].mcc=777\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
print FILE_4G_script "xsh.Screen.send \"pld.otm input 0x00220140[0].mnc=888\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
print FILE_4G_script "xsh.Screen.send \"cli.otm\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";



# print FILE_4G_script "xsh.Screen.send \"su - lsm\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 2000\n";

# print FILE_4G_script "xsh.Screen.send \"root123\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 2000\n";
 print FILE_4G_script "xsh.Screen.send \"cd /log/STATools/Scripts/PLDAUDIT/\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 1200\n";

# print FILE_4G_script "xsh.Screen.send \"PLDAUDIT.ksh /log/STATools/Output/PLDAUDIT/TDLTEdesign2_GP.csv /log/cm/oss/upload /log/STATools/Output/PLDAUDIT/Audit_report.csv  All 0 5 PVAL=5\"\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /log/STATools/Scripts/PLDAUDIT/PLDAUDIT.ksh /log/STATools/Output/PLDAUDIT/TDLTEdesign2_GP.csv /log/conf/ENB /log/STATools/Output/PLDAUDIT/Audit_report.csv  All 0 5 PVAL=5\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 1200\n";
print FILE_4G_script "xsh.Screen.send \"cd /log/STATools/Output/PLDAUDIT/\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 1200\n";
print FILE_4G_script "xsh.Screen.send \"ls -lrt\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.StopLog\n";
print FILE_4G_script "End Sub\n";


print "4G 2.5 Commissioning Script Loaded to C:\\3G_4G_TOOL_Scripts\\2.5\\Comm_Script\n";
close FILE_4G_script;
sleep 2;
}



if (($optgp eq "4") && ($concurrent eq "")){


    
    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"0\"\",\"\"0\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"1\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"0\"\",\"\"1\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"2\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"1\"\",\"\"0\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"0\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"1\"\",\"\"1\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"2\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"2\"\",\"\"0\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"0\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"2\"\",\"\"1\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"1\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.Send VbCr\n";
    print FILE_4G_script "xsh.Session.StopLog\n";
    print FILE_4G_script "End Sub\n";


    print "4G 2.5 Commissioning Script Loaded to C:\\3G_4G_TOOL_Scripts\\2.5\\Comm_Script\n";
    close FILE_4G_script;
    sleep 2;   
   

}


if (($optgp eq "4") && ($concurrent eq "concurrentnonbr8T")) {


    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"0\"\",\"\"0\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"1\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"0\"\",\"\"1\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"2\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"0\"\",\"\"2\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"3\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"0\"\",\"\"3\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"4\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"0\"\",\"\"4\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"5\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 


    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"1\"\",\"\"0\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"0\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"1\"\",\"\"1\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"2\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"1\"\",\"\"2\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"3\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"1\"\",\"\"3\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"4\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"1\"\",\"\"4\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"5\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
    
    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"2\"\",\"\"0\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"0\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"2\"\",\"\"1\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"1\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"2\"\",\"\"2\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"3\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"2\"\",\"\"3\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"4\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"2\"\",\"\"4\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"5\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 




    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"3\"\",\"\"0\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"4\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"3\"\",\"\"1\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"5\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"3\"\",\"\"2\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"0\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"3\"\",\"\"3\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"1\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"3\"\",\"\"4\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"2\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 




    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"4\"\",\"\"0\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"3\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"4\"\",\"\"1\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"5\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"4\"\",\"\"2\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"0\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"4\"\",\"\"3\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"1\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"4\"\",\"\"4\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"2\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 



    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"5\"\",\"\"0\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"3\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"5\"\",\"\"1\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"4\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"5\"\",\"\"2\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"0\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"5\"\",\"\"3\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"1\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"5\"\",\"\"4\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"2\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
        
    print FILE_4G_script "xsh.Screen.Send VbCr\n";
    print FILE_4G_script "xsh.Session.StopLog\n";
    print FILE_4G_script "End Sub\n";


    print "4G 2.5 Commissioning Script Loaded to C:\\3G_4G_TOOL_Scripts\\2.5\\Comm_Script\n";
    close FILE_4G_script;
    sleep 2;   
   

}

if (($optgp eq "4") && ($concurrent eq "concurrentnonbr4T")){



    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"0\"\",\"\"0\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"1\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"0\"\",\"\"1\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"2\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"0\"\",\"\"2\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"9\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"0\"\",\"\"3\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"10\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"0\"\",\"\"4\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"11\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 


    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"1\"\",\"\"0\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"0\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"1\"\",\"\"1\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"2\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"1\"\",\"\"2\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"9\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"1\"\",\"\"3\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"10\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"1\"\",\"\"4\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"11\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
    
    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"2\"\",\"\"0\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"0\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"2\"\",\"\"1\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"1\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"2\"\",\"\"2\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"9\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"2\"\",\"\"3\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"10\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"2\"\",\"\"4\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"11\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 




    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"9\"\",\"\"0\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"10\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"9\"\",\"\"1\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"11\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"9\"\",\"\"2\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"0\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"9\"\",\"\"3\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"1\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"9\"\",\"\"4\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"2\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 




    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"10\"\",\"\"0\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"9\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"10\"\",\"\"1\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"11\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"10\"\",\"\"2\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"0\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"10\"\",\"\"3\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"1\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"10\"\",\"\"4\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"2\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 



    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"11\"\",\"\"0\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"9\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"11\"\",\"\"1\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"10\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"11\"\",\"\"2\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"0\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"11\"\",\"\"3\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"1\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"11\"\",\"\"4\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"2\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
        
    print FILE_4G_script "xsh.Screen.Send VbCr\n";
    print FILE_4G_script "xsh.Session.StopLog\n";
    print FILE_4G_script "End Sub\n";


    print "4G 2.5 Commissioning Script Loaded to C:\\3G_4G_TOOL_Scripts\\2.5\\Comm_Script\n";
    close FILE_4G_script;
    sleep 2;   
   

}

                                        }		#end if optgrp ne 6 and 7
										
#############
# START 4.0 #
#############										
if (($optgp eq "6") || ($optgp eq "7")) {		#start if optgrp eq 6 or 7
print FILE_4G_script "Sub Main\n";             
print FILE_4G_script "xsh.Session.LogFilePath =\"C:\\3G_4G_TOOL_Scripts\\2.5\\Comm_Log\\$cascadeID\_$eNBID\_Log_$now.txt\"\n";  
print FILE_4G_script "xsh.Session.StartLog\n";

print FILE_4G_script "xsh.Screen.send \"ssh lteuser\@$mmbsOAMIP\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"yes\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 8000\n";
print FILE_4G_script "xsh.Screen.send \"samsunglte\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"su -\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"$passroot\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"cd /pkg\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Screen.send \"cd $version\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Screen.send \"cd ENB\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Screen.send \"cd r-01\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Screen.send \"cd bin\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Screen.send \"pld.otm input 0x00220140\[0].mcc=310\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
print FILE_4G_script "xsh.Screen.send \"pld.otm input 0x00220140\[0].mnc=120\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
print FILE_4G_script "xsh.Screen.send \"cli.otm\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";


if (($market eq "CHI") || ($market eq "AKR")) { 	#start chicago & akron mme
print FILE_4G_script "xsh.Screen.send \"CHG-MME-CONF:MME_INDEX=0,STATUS=EQUIP,ACTIVE_STATE=Active,MME_IPV4=10.158.211.12;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-MME-CONF:MME_INDEX=1,STATUS=EQUIP,ACTIVE_STATE=Active,MME_IPV4=10.156.35.12;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-MME-CONF:MME_INDEX=2,STATUS=EQUIP,ACTIVE_STATE=Active,MME_IPV4=10.158.211.172;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-MME-CONF:MME_INDEX=3,STATUS=EQUIP,ACTIVE_STATE=Active,MME_IPV4=10.156.35.172;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-MME-CONF:MME_INDEX=4,STATUS=EQUIP,ACTIVE_STATE=Active,MME_IPV4=10.158.211.188;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-MME-CONF:MME_INDEX=5,STATUS=EQUIP,ACTIVE_STATE=Active,MME_IPV4=10.156.35.188;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-MME-CONF:MME_INDEX=6,STATUS=EQUIP,ACTIVE_STATE=Active,MME_IPV4=10.158.211.204;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-MME-CONF:MME_INDEX=7,STATUS=EQUIP,ACTIVE_STATE=Active,MME_IPV4=10.156.35.204;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-MME-CONF:MME_INDEX=8,STATUS=EQUIP,ACTIVE_STATE=Active,MME_IPV4=10.158.211.220;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-MME-CONF:MME_INDEX=9,STATUS=EQUIP,ACTIVE_STATE=Active,MME_IPV4=10.156.35.220;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-MME-CONF:MME_INDEX=10,STATUS=EQUIP,ACTIVE_STATE=Active,MME_IPV4=10.158.212.4;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-MME-CONF:MME_INDEX=11,STATUS=EQUIP,ACTIVE_STATE=Active,MME_IPV4=10.156.35.44;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-MME-CONF:MME_INDEX=12,STATUS=EQUIP,ACTIVE_STATE=Active,MME_IPV4=10.158.212.20;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-MME-CONF:MME_INDEX=13,STATUS=EQUIP,ACTIVE_STATE=Active,MME_IPV4=10.156.34.28;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
} 	#end chicago & akron mme

if ($market eq "CAL") {	#start cal mme
               
print FILE_4G_script "xsh.Screen.send \"CHG-MME-CONF:MME_INDEX=0,STATUS=EQUIP,ACTIVE_STATE=Active,MME_IPV4=10.156.11.12;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-MME-CONF:MME_INDEX=1,STATUS=EQUIP,ACTIVE_STATE=Active,MME_IPV4=10.156.3.12;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-MME-CONF:MME_INDEX=2,STATUS=EQUIP,ACTIVE_STATE=Active,MME_IPV4=10.156.11.172;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-MME-CONF:MME_INDEX=3,STATUS=EQUIP,ACTIVE_STATE=Active,MME_IPV4=10.156.3.172;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-MME-CONF:MME_INDEX=4,STATUS=EQUIP,ACTIVE_STATE=Active,MME_IPV4=10.156.11.188;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-MME-CONF:MME_INDEX=5,STATUS=EQUIP,ACTIVE_STATE=Active,MME_IPV4=10.156.3.188;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
}	#end cal mme

if ($market eq "PR") {	#start pr mme
               
print FILE_4G_script "xsh.Screen.send \"CHG-MME-CONF:MME_INDEX=0,STATUS=EQUIP,ACTIVE_STATE=Active,MME_IPV4=10.156.75.12;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-MME-CONF:MME_INDEX=1,STATUS=EQUIP,ACTIVE_STATE=Active,MME_IPV4=10.156.43.12;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";

}	#end pr mme

if ($div eq "8T8R") {
print FILE_4G_script "xsh.Screen.send \"CHG-RRH-CONF:CONNECT_BOARD_ID=0,CONNECT_PORT_ID=6,NUM_OF_ALD=1;\"\n";
}
if ($div eq "4T4R") {
print FILE_4G_script "xsh.Screen.send \"CHG-RRH-CONF:CONNECT_BOARD_ID=0,CONNECT_PORT_ID=6,NUM_OF_ALD=0;\"\n";
}
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";

if ($div eq "8T8R") {
print FILE_4G_script "xsh.Screen.send \"CHG-RRH-CONF:CONNECT_BOARD_ID=0,CONNECT_PORT_ID=8,NUM_OF_ALD=1;\"\n";
}
if ($div eq "4T4R") {
print FILE_4G_script "xsh.Screen.send \"CHG-RRH-CONF:CONNECT_BOARD_ID=0,CONNECT_PORT_ID=8,NUM_OF_ALD=0;\"\n";
}
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";


if ($div eq "8T8R") {
print FILE_4G_script "xsh.Screen.send \"CHG-RRH-CONF:CONNECT_BOARD_ID=0,CONNECT_PORT_ID=10,NUM_OF_ALD=1;\"\n";
}
if ($div eq "4T4R") {
print FILE_4G_script "xsh.Screen.send \"CHG-RRH-CONF:CONNECT_BOARD_ID=0,CONNECT_PORT_ID=10,NUM_OF_ALD=0;\"\n";
}
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";

print FILE_4G_script "xsh.Screen.send \"CRTE-VLAN-CONF:DB_INDEX=1,VR_ID=0,IF_NAME=ge_3_0_1,VLAN_ID=42,ADMINISTRATIVE_STATE=linkUnlocked,DESCRIPTION=\"\"NON_OAM\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 20000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-IP-ADDR:DB_INDEX=1,LTE_SIGNAL_S1=False,LTE_SIGNAL_X2=False,LTE_BEARER_S1=False,LTE_BEARER_X2=False;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 

print FILE_4G_script "xsh.Screen.send \"CRTE-IP-ADDR:DB_INDEX=2,IF_NAME=ge_3_0_1.42,IP_ADDR=$mmbsSBIP,IP_PFX_LEN=30,OAM=False,LTE_SIGNAL_S1=True,LTE_SIGNAL_X2=True,LTE_BEARER_S1=True,LTE_BEARER_X2=True;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";

if ($market eq "CHI") { 
print FILE_4G_script "xsh.Screen.send \"CRTE-IP-ROUTE:VR_ID=0,DB_INDEX=2,IP_PREFIX=10.158.0.0,IP_PFX_LEN=16,IP_GW=$csrIP,DISTANCE=1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 

print FILE_4G_script "xsh.Screen.send \"CRTE-IP-ROUTE:VR_ID=0,DB_INDEX=3,IP_PREFIX=10.156.0.0,IP_PFX_LEN=16,IP_GW=$csrIP,DISTANCE=1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 

print FILE_4G_script "xsh.Screen.send \"CRTE-IP-ROUTE:VR_ID=0,DB_INDEX=4,IP_PREFIX=10.145.0.0,IP_PFX_LEN=16,IP_GW=$csrIP,DISTANCE=1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 

print FILE_4G_script "xsh.Screen.send \"CRTE-IP-ROUTE:VR_ID=0,DB_INDEX=5,IP_PREFIX=10.149.0.0,IP_PFX_LEN=16,IP_GW=$csrIP,DISTANCE=1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 


}


if ($market eq "AKR") { 
print FILE_4G_script "xsh.Screen.send \"CRTE-IP-ROUTE:VR_ID=0,DB_INDEX=2,IP_PREFIX=10.158.211.0,IP_PFX_LEN=24,IP_GW=$csrIP,DISTANCE=1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 

print FILE_4G_script "xsh.Screen.send \"CRTE-IP-ROUTE:VR_ID=0,DB_INDEX=3,IP_PREFIX=10.158.212.0,IP_PFX_LEN=24,IP_GW=$csrIP,DISTANCE=1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 

print FILE_4G_script "xsh.Screen.send \"CRTE-IP-ROUTE:VR_ID=0,DB_INDEX=4,IP_PREFIX=10.156.0.0,IP_PFX_LEN=16,IP_GW=$csrIP,DISTANCE=1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 

print FILE_4G_script "xsh.Screen.send \"CRTE-IP-ROUTE:VR_ID=0,DB_INDEX=5,IP_PREFIX=10.145.0.0,IP_PFX_LEN=16,IP_GW=$csrIP,DISTANCE=1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 

print FILE_4G_script "xsh.Screen.send \"CRTE-IP-ROUTE:VR_ID=0,DB_INDEX=6,IP_PREFIX=10.149.0.0,IP_PFX_LEN=16,IP_GW=$csrIP,DISTANCE=1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 


}


if ($market eq "CAL") {
                       
print FILE_4G_script "xsh.Screen.send \"CRTE-IP-ROUTE:VR_ID=0,DB_INDEX=2,IP_PREFIX=10.156.0.0,IP_PFX_LEN=16,IP_GW=$csrIP,DISTANCE=1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 

print FILE_4G_script "xsh.Screen.send \"CRTE-IP-ROUTE:VR_ID=0,DB_INDEX=3,IP_PREFIX=10.145.0.0,IP_PFX_LEN=16,IP_GW=$csrIP,DISTANCE=1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 

print FILE_4G_script "xsh.Screen.send \"CRTE-IP-ROUTE:VR_ID=0,DB_INDEX=4,IP_PREFIX=10.149.0.0,IP_PFX_LEN=16,IP_GW=$csrIP,DISTANCE=1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 

  
}

if ($market eq "PR") { 
print FILE_4G_script "xsh.Screen.send \"CRTE-IP-ROUTE:VR_ID=0,DB_INDEX=2,IP_PREFIX=10.149.0.0,IP_PFX_LEN=16,IP_GW=$csrIP,DISTANCE=1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 

print FILE_4G_script "xsh.Screen.send \"CRTE-IP-ROUTE:VR_ID=0,DB_INDEX=3,IP_PREFIX=10.156.0.0,IP_PFX_LEN=16,IP_GW=$csrIP,DISTANCE=1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 



}

# added 10/12/16

print FILE_4G_script "xsh.Screen.send \"exit;\"\n"; 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 1200\n";
print FILE_4G_script "xsh.Screen.send \"pld.otm input 0x00220140[0].mcc=777\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
print FILE_4G_script "xsh.Screen.send \"pld.otm input 0x00220140[0].mnc=888\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
print FILE_4G_script "xsh.Screen.send \"cli.otm\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 120000\n";



# end of added 10/12/16

print FILE_4G_script "xsh.Screen.send \"CHG-NTP-CONF:SVR_TYPE=PRIMARY_NTP_SERVER,IP_VER=IPV4,NTP_IPV4=112.255.255.252;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 

print FILE_4G_script "xsh.Screen.send \"CHG-NTP-CONF:SVR_TYPE=SECONDARY_NTP_SERVER,IP_VER=IPV4,NTP_IPV4=112.255.255.253;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 

if ($market eq "CHI") { 
print FILE_4G_script "xsh.Screen.send \"CRTE-IP-ROUTE:VR_ID=0,DB_INDEX=6,IP_PREFIX=10.202.0.0,IP_PFX_LEN=16,IP_GW=$csrIP,DISTANCE=1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 


print FILE_4G_script "xsh.Screen.send \"CRTE-IP-ROUTE:VR_ID=0,DB_INDEX=7,IP_PREFIX=0.0.0.0,IP_PFX_LEN=0,IP_GW=$csrIP,DISTANCE=1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
                     }
					 
if ($market eq "AKR") { 
print FILE_4G_script "xsh.Screen.send \"CRTE-IP-ROUTE:VR_ID=0,DB_INDEX=7,IP_PREFIX=10.202.0.0,IP_PFX_LEN=16,IP_GW=$csrIP,DISTANCE=1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 


print FILE_4G_script "xsh.Screen.send \"CRTE-IP-ROUTE:VR_ID=0,DB_INDEX=8,IP_PREFIX=0.0.0.0,IP_PFX_LEN=0,IP_GW=$csrIP,DISTANCE=1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
                     }
					 
					 
if ($market eq "CAL") { 
print FILE_4G_script "xsh.Screen.send \"CRTE-IP-ROUTE:VR_ID=0,DB_INDEX=5,IP_PREFIX=10.202.0.0,IP_PFX_LEN=16,IP_GW=$csrIP,DISTANCE=1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 


print FILE_4G_script "xsh.Screen.send \"CRTE-IP-ROUTE:VR_ID=0,DB_INDEX=6,IP_PREFIX=0.0.0.0,IP_PFX_LEN=0,IP_GW=$csrIP,DISTANCE=1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
                     }

					 
if ($market eq "PR") { 
#print FILE_4G_script "xsh.Screen.send \"CRTE-IP-ROUTE:VR_ID=0,DB_INDEX=4,IP_PREFIX=10.202.0.0,IP_PFX_LEN=16,IP_GW=$csrIP,DISTANCE=1;\"\n";
#print FILE_4G_script "xsh.Screen.Send VbCr\n";
#print FILE_4G_script "xsh.Session.Sleep 2000\n";
#print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
#print FILE_4G_script "xsh.Screen.Send VbCr\n";
#print FILE_4G_script "xsh.Session.Sleep 5000\n";

print FILE_4G_script "xsh.Screen.send \"CRTE-IP-ROUTE:VR_ID=0,DB_INDEX=4,IP_PREFIX=0.0.0.0,IP_PFX_LEN=0,IP_GW=$csrIP,DISTANCE=1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 

                     }
					 
					 
print FILE_4G_script "xsh.Screen.send \"CHG-ENBPLMN-INFO:\"\"1\"\",\"\"310\"\",\"\"120\"\",\"\"0\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";


if ($alphaPCI ne ""){

if (($optgp eq "6") || ($optgp eq "7")) { 
print FILE_4G_script "xsh.Screen.send \"CHG-CELLPLMN-INFO:\"\"0\"\",\"\"0\"\",\"\"use\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELLPLMN-INFO:\"\"0\"\",\"\"1\"\",\"\"use\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-CELL-ACS:CELL_NUM=0,CELL_RESERVED_OP_USE=\"\"reserved,reserved,notReserved,notReserved,notReserved,notReserved\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 1500\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 1500\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";

                                      } 														 
                   } 
 
if ($betaPCI ne ""){

if (($optgp eq "6") || ($optgp eq "7")){ 
print FILE_4G_script "xsh.Screen.send \"CHG-CELLPLMN-INFO:\"\"1\"\",\"\"0\"\",\"\"use\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELLPLMN-INFO:\"\"1\"\",\"\"1\"\",\"\"use\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-CELL-ACS:CELL_NUM=1,CELL_RESERVED_OP_USE=\"\"reserved,reserved,notReserved,notReserved,notReserved,notReserved\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 1500\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 1500\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";

                                      } 																	 
                   } 

if ($gammaPCI ne ""){

if (($optgp eq "6") || ($optgp eq "7")) { 
print FILE_4G_script "xsh.Screen.send \"CHG-CELLPLMN-INFO:\"\"2\"\",\"\"0\"\",\"\"use\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELLPLMN-INFO:\"\"2\"\",\"\"1\"\",\"\"use\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-CELL-ACS:CELL_NUM=2,CELL_RESERVED_OP_USE=\"\"reserved,reserved,notReserved,notReserved,notReserved,notReserved\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 1500\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 1500\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";

                                        } 																	 
 
                   }  

if (($optgp eq "7") && ($concurrent eq "concurrentnonbr8T")) {	#start $concurrent eq "concurrentnonbr8T"
if ($alphaPCI ne "") {

print FILE_4G_script "xsh.Screen.send \"CHG-CELLPLMN-INFO:\"\"3\"\",\"\"0\"\",\"\"use\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELLPLMN-INFO:\"\"3\"\",\"\"1\"\",\"\"use\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-CELL-ACS:CELL_NUM=3,CELL_RESERVED_OP_USE=\"\"reserved,reserved,notReserved,notReserved,notReserved,notReserved\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 1500\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 1500\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";

                    } 
 
if ($betaPCI ne "") {

print FILE_4G_script "xsh.Screen.send \"CHG-CELLPLMN-INFO:\"\"4\"\",\"\"0\"\",\"\"use\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELLPLMN-INFO:\"\"4\"\",\"\"1\"\",\"\"use\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-CELL-ACS:CELL_NUM=4,CELL_RESERVED_OP_USE=\"\"reserved,reserved,notReserved,notReserved,notReserved,notReserved\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 1500\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 1500\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";


 
                   } 

if ($gammaPCI ne ""){

print FILE_4G_script "xsh.Screen.send \"CHG-CELLPLMN-INFO:\"\"5\"\",\"\"0\"\",\"\"use\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELLPLMN-INFO:\"\"5\"\",\"\"1\"\",\"\"use\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-CELL-ACS:CELL_NUM=5,CELL_RESERVED_OP_USE=\"\"reserved,reserved,notReserved,notReserved,notReserved,notReserved\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 1500\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 1500\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";

 
                    }  


                                        }	#end $concurrent eq "concurrentnonbr8T"
				   
if (($optgp eq "7") && ($concurrent eq "concurrentnonbr4T")) {	#start $concurrent eq "concurrentnonbr4T"				   

if ($alphaPCI ne "") {

print FILE_4G_script "xsh.Screen.send \"CHG-CELLPLMN-INFO:\"\"9\"\",\"\"0\"\",\"\"use\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELLPLMN-INFO:\"\"9\"\",\"\"1\"\",\"\"use\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-CELL-ACS:CELL_NUM=9,CELL_RESERVED_OP_USE=\"\"reserved,reserved,notReserved,notReserved,notReserved,notReserved\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 1500\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 1500\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";

                    } 
 
if ($betaPCI ne "") {

print FILE_4G_script "xsh.Screen.send \"CHG-CELLPLMN-INFO:\"\"10\"\",\"\"0\"\",\"\"use\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELLPLMN-INFO:\"\"10\"\",\"\"1\"\",\"\"use\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-CELL-ACS:CELL_NUM=10,CELL_RESERVED_OP_USE=\"\"reserved,reserved,notReserved,notReserved,notReserved,notReserved\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 1500\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 1500\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";


 
                   } 

if ($gammaPCI ne ""){

print FILE_4G_script "xsh.Screen.send \"CHG-CELLPLMN-INFO:\"\"11\"\",\"\"0\"\",\"\"use\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"CHG-CELLPLMN-INFO:\"\"11\"\",\"\"1\"\",\"\"use\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-CELL-ACS:CELL_NUM=11,CELL_RESERVED_OP_USE=\"\"reserved,reserved,notReserved,notReserved,notReserved,notReserved\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 1500\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 1500\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";

 
                    }  


                                                             }	#end $concurrent eq "concurrentnonbr4T"


															 
print FILE_4G_script "xsh.Screen.send \"CHG-RRH-CONF:CONNECT_BOARD_ID=0,CONNECT_PORT_ID=6,ANTENNA_PROFILE_ID=$aplhaid;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";															 
															 
print FILE_4G_script "xsh.Screen.send \"CHG-RRH-CONF:CONNECT_BOARD_ID=0,CONNECT_PORT_ID=8,ANTENNA_PROFILE_ID=$betaid;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
															 
print FILE_4G_script "xsh.Screen.send \"CHG-RRH-CONF:CONNECT_BOARD_ID=0,CONNECT_PORT_ID=10,ANTENNA_PROFILE_ID=$gammaid;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";




if ($concurrent eq ""){	#start $concurrent eq ""
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:CELL_NUM=0,PHY_CELL_ID=$alphaPCI;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:CELL_NUM=1,PHY_CELL_ID=$betaPCI;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
				   
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:CELL_NUM=2,PHY_CELL_ID=$gammaPCI;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
 
print FILE_4G_script "xsh.Screen.send \"CHG-PRACH-CONF:CELL_NUM=0,ZERO_CORREL_ZONE_CONFIG=$ncs,ROOT_SEQUENCE_INDEX=$alphaRSI;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";

				   
print FILE_4G_script "xsh.Screen.send \"CHG-PRACH-CONF:CELL_NUM=1,ZERO_CORREL_ZONE_CONFIG=$ncs,ROOT_SEQUENCE_INDEX=$betaRSI;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
				   
print FILE_4G_script "xsh.Screen.send \"CHG-PRACH-CONF:CELL_NUM=2,ZERO_CORREL_ZONE_CONFIG=$ncs,ROOT_SEQUENCE_INDEX=$gammaRSI;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
 
print FILE_4G_script "xsh.Screen.send \"CHG-POS-CONF:CELL_NUM=0,LATITUDE=\"\"$lat\"\",LONGITUDE=\"\"$long\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-POS-CONF:CELL_NUM=1,LATITUDE=\"\"$lat\"\",LONGITUDE=\"\"$long\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-POS-CONF:CELL_NUM=2,LATITUDE=\"\"$lat\"\",LONGITUDE=\"\"$long\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:CELL_NUM=0,EARFCN_DL=$earfcn,EARFCN_UL=$earfcn;\"\n"; 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
				   
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:CELL_NUM=1,EARFCN_DL=$earfcn,EARFCN_UL=$earfcn;\"\n"; 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";

				   
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:CELL_NUM=2,EARFCN_DL=$earfcn,EARFCN_UL=$earfcn;\"\n"; 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";	
	
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:CELL_NUM=0,FA_INDEX=0,EARFCN_UL=$earfcn,EARFCN_DL=$earfcn;\"\n"; 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
				   
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:CELL_NUM=1,FA_INDEX=0,EARFCN_UL=$earfcn,EARFCN_DL=$earfcn;\"\n"; 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";

				   
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:CELL_NUM=2,FA_INDEX=0,EARFCN_UL=$earfcn,EARFCN_DL=$earfcn;\"\n"; 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";

				   
print FILE_4G_script "xsh.Screen.send \"CHG-RRH-CONF:CONNECT_BOARD_ID=0,CONNECT_PORT_ID=6,START_EARFCN1=$startear;\"\n"; 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
	
print FILE_4G_script "xsh.Screen.send \"CHG-RRH-CONF:CONNECT_BOARD_ID=0,CONNECT_PORT_ID=8,START_EARFCN1=$startear;\"\n"; 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
	
print FILE_4G_script "xsh.Screen.send \"CHG-RRH-CONF:CONNECT_BOARD_ID=0,CONNECT_PORT_ID=10,START_EARFCN1=$startear;\"\n"; 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";

}	#end $concurrent eq ""





if ($concurrent ne ""){


print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:CELL_NUM=0,PHY_CELL_ID=$alphaPCI;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";

				   
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:CELL_NUM=1,PHY_CELL_ID=$betaPCI;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:CELL_NUM=2,PHY_CELL_ID=$gammaPCI;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
 
if (($optgp eq "7") && ($concurrent eq "concurrentnonbr8T")) {
 
 
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:CELL_NUM=3,PHY_CELL_ID=$alphaPCI;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";

				   
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:CELL_NUM=4,PHY_CELL_ID=$betaPCI;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";

				   
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:CELL_NUM=5,PHY_CELL_ID=$gammaPCI;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";  
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";

				   
 }
 
 
if (($optgp eq "7") && ($concurrent eq "concurrentnonbr4T")) {
 
 
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:CELL_NUM=9,PHY_CELL_ID=$alphaPCI;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
				   
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:CELL_NUM=10,PHY_CELL_ID=$betaPCI;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
				   
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:CELL_NUM=11,PHY_CELL_ID=$gammaPCI;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";  
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
				   
 }


print FILE_4G_script "xsh.Screen.send \"CHG-PRACH-CONF:CELL_NUM=0,ZERO_CORREL_ZONE_CONFIG=$ncs,ROOT_SEQUENCE_INDEX=$alphaRSI;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
				   
print FILE_4G_script "xsh.Screen.send \"CHG-PRACH-CONF:CELL_NUM=1,ZERO_CORREL_ZONE_CONFIG=$ncs,ROOT_SEQUENCE_INDEX=$betaRSI;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
				   
print FILE_4G_script "xsh.Screen.send \"CHG-PRACH-CONF:CELL_NUM=2,ZERO_CORREL_ZONE_CONFIG=$ncs,ROOT_SEQUENCE_INDEX=$gammaRSI;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n"; 
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
 
if (($optgp eq "7") && ($concurrent eq "concurrentnonbr8T")) {
 
print FILE_4G_script "xsh.Screen.send \"CHG-PRACH-CONF:CELL_NUM=3,ZERO_CORREL_ZONE_CONFIG=$ncs,ROOT_SEQUENCE_INDEX=$alphaRSI;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-PRACH-CONF:CELL_NUM=4,ZERO_CORREL_ZONE_CONFIG=$ncs,ROOT_SEQUENCE_INDEX=$betaRSI;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
				   
print FILE_4G_script "xsh.Screen.send \"CHG-PRACH-CONF:CELL_NUM=5,ZERO_CORREL_ZONE_CONFIG=$ncs,ROOT_SEQUENCE_INDEX=$gammaRSI;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
 
}  
 
if (($optgp eq "7") && ($concurrent eq "concurrentnonbr4T")) {
 
print FILE_4G_script "xsh.Screen.send \"CHG-PRACH-CONF:CELL_NUM=9,ZERO_CORREL_ZONE_CONFIG=$ncs,ROOT_SEQUENCE_INDEX=$alphaRSI;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
				   
print FILE_4G_script "xsh.Screen.send \"CHG-PRACH-CONF:CELL_NUM=10,ZERO_CORREL_ZONE_CONFIG=$ncs,ROOT_SEQUENCE_INDEX=$betaRSI;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-PRACH-CONF:CELL_NUM=11,ZERO_CORREL_ZONE_CONFIG=$ncs,ROOT_SEQUENCE_INDEX=$gammaRSI;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 5000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
 
}  
 
 
print FILE_4G_script "xsh.Screen.send \"CHG-POS-CONF:CELL_NUM=0,LATITUDE=\"\"$lat\"\",LONGITUDE=\"\"$long\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-POS-CONF:CELL_NUM=1,LATITUDE=\"\"$lat\"\",LONGITUDE=\"\"$long\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-POS-CONF:CELL_NUM=2,LATITUDE=\"\"$lat\"\",LONGITUDE=\"\"$long\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";

if (($optgp eq "7") && ($concurrent eq "concurrentnonbr8T")) {
print FILE_4G_script "xsh.Screen.send \"CHG-POS-CONF:CELL_NUM=3,LATITUDE=\"\"$lat\"\",LONGITUDE=\"\"$long\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-POS-CONF:CELL_NUM=4,LATITUDE=\"\"$lat\"\",LONGITUDE=\"\"$long\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-POS-CONF:CELL_NUM=5,LATITUDE=\"\"$lat\"\",LONGITUDE=\"\"$long\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";

}


if (($optgp eq "7") && ($concurrent eq "concurrentnonbr4T")) {
print FILE_4G_script "xsh.Screen.send \"CHG-POS-CONF:CELL_NUM=9,LATITUDE=\"\"$lat\"\",LONGITUDE=\"\"$long\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-POS-CONF:CELL_NUM=10,LATITUDE=\"\"$lat\"\",LONGITUDE=\"\"$long\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-POS-CONF:CELL_NUM=11,LATITUDE=\"\"$lat\"\",LONGITUDE=\"\"$long\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";


} 
 

print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:CELL_NUM=0,EARFCN_DL=$earfcn,EARFCN_UL=$earfcn;\"\n"; 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";

				   
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:CELL_NUM=1,EARFCN_DL=$earfcn,EARFCN_UL=$earfcn;\"\n"; 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:CELL_NUM=2,EARFCN_DL=$earfcn,EARFCN_UL=$earfcn;\"\n"; 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";	
	
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:CELL_NUM=0,FA_INDEX=0,EARFCN_UL=$earfcn,EARFCN_DL=$earfcn;\"\n"; 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
				   
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:CELL_NUM=1,FA_INDEX=0,EARFCN_UL=$earfcn,EARFCN_DL=$earfcn;\"\n"; 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
				   
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:CELL_NUM=2,FA_INDEX=0,EARFCN_UL=$earfcn,EARFCN_DL=$earfcn;\"\n"; 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
				   




print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:CELL_NUM=0,FA_INDEX=1,STATUS=EQUIP,EARFCN_UL=$earfcnend,EARFCN_DL=$earfcnend;\"\n"; 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
				   
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:CELL_NUM=1,FA_INDEX=1,STATUS=EQUIP,EARFCN_UL=$earfcnend,EARFCN_DL=$earfcnend;\"\n"; 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
				   
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:CELL_NUM=2,FA_INDEX=1,STATUS=EQUIP,EARFCN_UL=$earfcnend,EARFCN_DL=$earfcnend;\"\n"; 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";

				   




print FILE_4G_script "xsh.Screen.send \"CHG-RRH-CONF:CONNECT_BOARD_ID=0,CONNECT_PORT_ID=6,START_EARFCN1=$startear;\"\n"; 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
	
print FILE_4G_script "xsh.Screen.send \"CHG-RRH-CONF:CONNECT_BOARD_ID=0,CONNECT_PORT_ID=8,START_EARFCN1=$startear;\"\n"; 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
	
print FILE_4G_script "xsh.Screen.send \"CHG-RRH-CONF:CONNECT_BOARD_ID=0,CONNECT_PORT_ID=10,START_EARFCN1=$startear;\"\n"; 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";


if (($optgp eq "7") && ($concurrent eq "concurrentnonbr8T")) {
 
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:CELL_NUM=3,EARFCN_DL=$earfcnend,EARFCN_UL=$earfcnend;\"\n"; 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:CELL_NUM=4,EARFCN_DL=$earfcnend,EARFCN_UL=$earfcnend;\"\n"; 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
	
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:CELL_NUM=5,EARFCN_DL=$earfcnend,EARFCN_UL=$earfcnend;\"\n"; 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";	
	
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:CELL_NUM=3,FA_INDEX=0,EARFCN_UL=$earfcnend,EARFCN_DL=$earfcnend;\"\n"; 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
	
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:CELL_NUM=4,FA_INDEX=0,EARFCN_UL=$earfcnend,EARFCN_DL=$earfcnend;\"\n"; 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:CELL_NUM=5,FA_INDEX=0,EARFCN_UL=$earfcnend,EARFCN_DL=$earfcnend;\"\n"; 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";	 


print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:CELL_NUM=0,FA_INDEX=1,STATUS=EQUIP,EARFCN_UL=$earfcnend,EARFCN_DL=$earfcnend;\"\n"; 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:CELL_NUM=1,FA_INDEX=1,STATUS=EQUIP,EARFCN_UL=$earfcnend,EARFCN_DL=$earfcnend;\"\n"; 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
	
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:CELL_NUM=2,FA_INDEX=1,STATUS=EQUIP,EARFCN_UL=$earfcnend,EARFCN_DL=$earfcnend;\"\n"; 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
	
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:CELL_NUM=3,FA_INDEX=1,STATUS=EQUIP,EARFCN_UL=$earfcn,EARFCN_DL=$earfcn;\"\n"; 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
	
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:CELL_NUM=4,FA_INDEX=1,STATUS=EQUIP,EARFCN_UL=$earfcn,EARFCN_DL=$earfcn;\"\n"; 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
	
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:CELL_NUM=5,FA_INDEX=1,STATUS=EQUIP,EARFCN_UL=$earfcn,EARFCN_DL=$earfcn;\"\n"; 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
	 

}



if (($optgp eq "7") && ($concurrent eq "concurrentnonbr4T")) {
 
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:CELL_NUM=9,EARFCN_DL=$earfcnend,EARFCN_UL=$earfcnend;\"\n"; 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";

print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:CELL_NUM=10,EARFCN_DL=$earfcnend,EARFCN_UL=$earfcnend;\"\n"; 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
	
print FILE_4G_script "xsh.Screen.send \"CHG-CELL-IDLE:CELL_NUM=11,EARFCN_DL=$earfcnend,EARFCN_UL=$earfcnend;\"\n"; 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";		
	
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:CELL_NUM=9,FA_INDEX=0,EARFCN_UL=$earfcnend,EARFCN_DL=$earfcnend;\"\n"; 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
	
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:CELL_NUM=10,FA_INDEX=0,EARFCN_UL=$earfcnend,EARFCN_DL=$earfcnend;\"\n"; 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
	
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:CELL_NUM=11,FA_INDEX=0,EARFCN_UL=$earfcnend,EARFCN_DL=$earfcnend;\"\n"; 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
 

print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:CELL_NUM=9,FA_INDEX=1,STATUS=EQUIP,EARFCN_UL=$earfcn,EARFCN_DL=$earfcn;\"\n"; 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
	
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:CELL_NUM=10,FA_INDEX=1,STATUS=EQUIP,EARFCN_UL=$earfcn,EARFCN_DL=$earfcn;\"\n"; 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
	
print FILE_4G_script "xsh.Screen.send \"CHG-EUTRA-FA:CELL_NUM=11,FA_INDEX=1,STATUS=EQUIP,EARFCN_UL=$earfcn,EARFCN_DL=$earfcn;\"\n"; 
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
print FILE_4G_script "xsh.Screen.send \"ROOT\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n";
print FILE_4G_script "xsh.Screen.send \"Y\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 2000\n";
	 

} 



 
 
}


print FILE_4G_script "xsh.Screen.send \"exit;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 1200\n";
print FILE_4G_script "xsh.Screen.send \"exit\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 1200\n";
print FILE_4G_script "xsh.Screen.send \"exit\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 1200\n";

if ($alphaPCI ne ""){
 
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-INFO:CELL_NUM=0,TRACKING_AREA_CODE=\"\"H'$TAC\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n"; 
 
} 
 
if ($betaPCI ne ""){

print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-INFO:CELL_NUM=1,TRACKING_AREA_CODE=\"\"H'$TAC\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n"; 
 
 
} 

if ($gammaPCI ne ""){

print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-INFO:CELL_NUM=2,TRACKING_AREA_CODE=\"\"H'$TAC\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n"; 
 
 
}  


if (($optgp eq "7") && ($concurrent eq "concurrentnonbr8T")) {

if ($alphaPCI ne ""){
 
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-INFO:CELL_NUM=3,TRACKING_AREA_CODE=\"\"H'$TAC\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n"; 
 
} 
 
if ($betaPCI ne ""){

print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-INFO:CELL_NUM=4,TRACKING_AREA_CODE=\"\"H'$TAC\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n"; 
 
 
} 

if ($gammaPCI ne ""){

print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-INFO:CELL_NUM=5,TRACKING_AREA_CODE=\"\"H'$TAC\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n"; 
 
 
}


print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CA-COLOC:0,0,EQUIP,32,3;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CA-COLOC:1,0,EQUIP,32,4;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CA-COLOC:2,0,EQUIP,32,5;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CA-COLOC:3,0,EQUIP,32,0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CA-COLOC:4,0,EQUIP,32,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CA-COLOC:5,0,EQUIP,32,2;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CACELL-INFO:0,DL_Only;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CACELL-INFO:1,DL_Only;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CACELL-INFO:2,DL_Only;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CACELL-INFO:3,DL_Only;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CACELL-INFO:4,DL_Only;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CACELL-INFO:5,DL_Only;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:0,CaInterFreq,0,Inactive,35,40;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:1,CaInterFreq,0,Inactive,35,40;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:2,CaInterFreq,0,Inactive,35,40;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:3,CaInterFreq,0,Inactive,35,40;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:4,CaInterFreq,0,Inactive,35,40;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:5,CaInterFreq,0,Inactive,35,40;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-CAC:CELL_NUM=0,MAX_CA_CALL_COUNT=600;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 4000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-CAC:CELL_NUM=1,MAX_CA_CALL_COUNT=600;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 4000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-CAC:CELL_NUM=2,MAX_CA_CALL_COUNT=600;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 4000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-CAC:CELL_NUM=3,MAX_CA_CALL_COUNT=600;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 4000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-CAC:CELL_NUM=4,MAX_CA_CALL_COUNT=600;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 4000\n";
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-CAC:CELL_NUM=5,MAX_CA_CALL_COUNT=600;\"\n";
# print FILE_4G_script "xsh.Screen.Send VbCr\n";
# print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-PUCCHCONF-IDLE:0,,use;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-PUCCHCONF-IDLE:1,,use;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-PUCCHCONF-IDLE:2,,use;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-PUCCHCONF-IDLE:3,,use;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-PUCCHCONF-IDLE:4,,use;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-PUCCHCONF-IDLE:5,,use;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CASCHED-INF:IntraEnb;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CABAND-INFO:0,use,use,41,BwClass_c,no_use,5,BwClass_c;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CABAND-INFO:1,no_use,no_use,41,BwClass_a,no_use,41,BwClass_a;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CABAND-INFO:2,no_use,no_use,41,BwClass_c,no_use,5,BwClass_c;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
# changed 10/12/16
# print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-ACTIVE-LB:,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,OFF;\"\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-ACTIVE-LB:CA_UE_CANDIDATE_FLAG=\"OFF\";\"\n";
#
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";

                                                             }


if (($optgp eq "7") && ($concurrent eq "concurrentnonbr4T")) {

if ($alphaPCI ne ""){
 
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-INFO:CELL_NUM=9,TRACKING_AREA_CODE=\"\"H'$TAC\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n"; 
 
} 
 
if ($betaPCI ne ""){

print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-INFO:CELL_NUM=10,TRACKING_AREA_CODE=\"\"H'$TAC\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n"; 
 
 
} 

if ($gammaPCI ne ""){

print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-INFO:CELL_NUM=11,TRACKING_AREA_CODE=\"\"H'$TAC\"\";\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 3000\n"; 
 
 
}


print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CA-COLOC:0,0,EQUIP,32,9;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CA-COLOC:1,0,EQUIP,32,10;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CA-COLOC:2,0,EQUIP,32,11;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CA-COLOC:9,0,EQUIP,32,0;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CA-COLOC:10,0,EQUIP,32,1;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CA-COLOC:11,0,EQUIP,32,2;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CACELL-INFO:0,DL_Only;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CACELL-INFO:1,DL_Only;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CACELL-INFO:2,DL_Only;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CACELL-INFO:9,DL_Only;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CACELL-INFO:10,DL_Only;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CACELL-INFO:11,DL_Only;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:0,CaInterFreq,0,Inactive,35,40;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:1,CaInterFreq,0,Inactive,35,40;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:2,CaInterFreq,0,Inactive,35,40;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:9,CaInterFreq,0,Inactive,35,40;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:10,CaInterFreq,0,Inactive,35,40;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-EUTRA-A5CNF:11,CaInterFreq,0,Inactive,35,40;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
#print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-CAC:CELL_NUM=0,MAX_CA_CALL_COUNT=400;\"\n";
#print FILE_4G_script "xsh.Screen.Send VbCr\n";
#print FILE_4G_script "xsh.Session.Sleep 4000\n";
#print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-CAC:CELL_NUM=1,MAX_CA_CALL_COUNT=400;\"\n";
#print FILE_4G_script "xsh.Screen.Send VbCr\n";
#print FILE_4G_script "xsh.Session.Sleep 4000\n";
#print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-CAC:CELL_NUM=2,MAX_CA_CALL_COUNT=400;\"\n";
#print FILE_4G_script "xsh.Screen.Send VbCr\n";
#print FILE_4G_script "xsh.Session.Sleep 4000\n";
#print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-CAC:CELL_NUM=9,MAX_CA_CALL_COUNT=400;\"\n";
#print FILE_4G_script "xsh.Screen.Send VbCr\n";
#print FILE_4G_script "xsh.Session.Sleep 4000\n";
#print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-CAC:CELL_NUM=10,MAX_CA_CALL_COUNT=400;\"\n";
#print FILE_4G_script "xsh.Screen.Send VbCr\n";
#print FILE_4G_script "xsh.Session.Sleep 4000\n";
#print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CELL-CAC:CELL_NUM=11,MAX_CA_CALL_COUNT=400;\"\n";
#print FILE_4G_script "xsh.Screen.Send VbCr\n";
#print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-PUCCHCONF-IDLE:0,,use;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-PUCCHCONF-IDLE:1,,use;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-PUCCHCONF-IDLE:2,,use;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-PUCCHCONF-IDLE:9,,use;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-PUCCHCONF-IDLE:10,,use;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-PUCCHCONF-IDLE:11,,use;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CASCHED-INF:IntraEnb;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CABAND-INFO:0,use,use,41,BwClass_c,no_use,5,BwClass_c;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CABAND-INFO:1,no_use,no_use,41,BwClass_a,no_use,41,BwClass_a;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-CABAND-INFO:2,no_use,no_use,41,BwClass_c,no_use,5,BwClass_c;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-ACTIVE-LB:,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,OFF;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";



  

                                                             }


print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-SONFN-CELL:0,Off;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";  
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-SONFN-CELL:1,Off;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";  
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-SONFN-CELL:2,Off;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";  
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-SONFN-CELL:3,Off;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";  
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-SONFN-CELL:4,Off;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";  
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-SONFN-CELL:5,Off;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";  
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-SONFN-CELL:9,Off;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";  
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-SONFN-CELL:10,Off;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n";  
print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CHG-SONFN-CELL:11,Off;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 4000\n"; 

if (($concurrent ne "concurrentnonbr8T") ||  ($concurrent ne "concurrentnonbr4T")) {
    if (($alphaPCI ne "") && ($betaPCI ne "") && ($gammaPCI ne "")){
    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"0\"\",\"\"0\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"1\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
     print FILE_4G_script "xsh.Screen.Send VbCr\n";		
     print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"0\"\",\"\"1\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"2\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
     print FILE_4G_script "xsh.Screen.Send VbCr\n";		
     print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"1\"\",\"\"0\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"0\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
     print FILE_4G_script "xsh.Screen.Send VbCr\n";		
     print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"1\"\",\"\"1\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"2\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
     print FILE_4G_script "xsh.Screen.Send VbCr\n";		
     print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"2\"\",\"\"0\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"0\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
     print FILE_4G_script "xsh.Screen.Send VbCr\n";		
     print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"2\"\",\"\"1\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"1\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
     print FILE_4G_script "xsh.Screen.Send VbCr\n";		
     print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

   }


    if (($alphaPCI ne "") && ($betaPCI ne "") && ($gammaPCI eq "")){
    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"0\"\",\"\"0\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"1\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
     print FILE_4G_script "xsh.Screen.Send VbCr\n";		
     print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"1\"\",\"\"0\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"0\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
     print FILE_4G_script "xsh.Screen.Send VbCr\n";		
     print FILE_4G_script "xsh.Session.Sleep 2000\n"; 



   }    

                                                                                   }															 
if (($concurrent eq "concurrentnonbr8T") || (($concurrent eq "concurrent") && ($div eq "8T8R"))) {

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"0\"\",\"\"2\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"3\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"0\"\",\"\"3\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"4\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"0\"\",\"\"4\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"5\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"1\"\",\"\"2\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"3\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"1\"\",\"\"3\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"4\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"1\"\",\"\"4\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"5\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"2\"\",\"\"2\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"3\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"2\"\",\"\"3\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"4\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"2\"\",\"\"4\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"5\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 




    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"3\"\",\"\"0\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"4\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"3\"\",\"\"1\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"5\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"3\"\",\"\"2\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"0\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"3\"\",\"\"3\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"1\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"3\"\",\"\"4\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"2\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 




    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"4\"\",\"\"0\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"3\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"4\"\",\"\"1\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"5\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"4\"\",\"\"2\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"0\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"4\"\",\"\"3\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"1\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"4\"\",\"\"4\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"2\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 



    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"5\"\",\"\"0\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"3\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"5\"\",\"\"1\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"4\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"5\"\",\"\"2\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"0\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"5\"\",\"\"3\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"1\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"5\"\",\"\"4\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"2\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
                                                                                                 }
																				   


if (($concurrent eq "concurrentnonbr4T") || (($concurrent eq "concurrent") && ($div eq "4T4R"))) {

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"0\"\",\"\"2\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"9\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"0\"\",\"\"3\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"10\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"0\"\",\"\"4\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"11\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"1\"\",\"\"2\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"9\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"1\"\",\"\"3\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"10\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"1\"\",\"\"4\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"11\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"2\"\",\"\"2\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"9\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"2\"\",\"\"3\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"10\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"2\"\",\"\"4\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"11\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 




    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"9\"\",\"\"0\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"10\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"9\"\",\"\"1\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"11\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"9\"\",\"\"2\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"0\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"9\"\",\"\"3\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"1\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"9\"\",\"\"4\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"2\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 




    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"10\"\",\"\"0\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"9\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"10\"\",\"\"1\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"11\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"10\"\",\"\"2\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"0\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"10\"\",\"\"3\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"1\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"10\"\",\"\"4\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"2\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 



    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"11\"\",\"\"0\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"9\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"11\"\",\"\"1\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"10\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcnend\"\",\"\"$earfcnend\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"11\"\",\"\"2\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"0\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$alphaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"11\"\",\"\"3\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"1\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$betaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 

    print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName CRTE-NBR-EUTRAN:\"\"11\"\",\"\"4\"\",\"\"EQUIP\"\",\"\"$eNBID\"\",\"\"2\"\",\"\"Macro_eNB\"\",\"\"310\"\",\"\"120\"\",\"\"$gammaPCI\"\",\"\"H'$TAC\"\",\"\"310\"\",\"\"120\"\",,,,,,,,,,,\"\"$earfcn\"\",\"\"$earfcn\"\",\"\"20MHz\"\",\"\"20MHz\"\",\"\"0dB\"\",\"\"0dB\"\",\"\"False\"\",\"\"True\"\",\"\"CreatedByUserCommand\"\",,,\"\"False\"\";\"\n"; 
    print FILE_4G_script "xsh.Screen.Send VbCr\n";		
    print FILE_4G_script "xsh.Session.Sleep 2000\n"; 
 
} 																				   



print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /home/lsm/aceman/bin/cmd.sprint $eNBName UPLD-CONF-FILE;\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 60000\n";

print FILE_4G_script "xsh.Screen.send \"cd /log/STATools/Scripts/PLDAUDIT/\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 1200\n";

print FILE_4G_script "xsh.Screen.send \"/usr/bin/sudo -u lsm /log/STATools/Scripts/PLDAUDIT/PLDAUDIT.ksh /log/STATools/Output/PLDAUDIT/TDLTEdesign2_GP.csv /log/conf/ENB /log/STATools/Output/PLDAUDIT/Audit_report.csv  All 0 5 PVAL=5\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 1200\n";
print FILE_4G_script "xsh.Screen.send \"cd /log/STATools/Output/PLDAUDIT/\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.Sleep 1200\n";
print FILE_4G_script "xsh.Screen.send \"ls -lrt\"\n";
print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.StopLog\n";
print FILE_4G_script "End Sub\n";

print FILE_4G_script "xsh.Screen.Send VbCr\n";
print FILE_4G_script "xsh.Session.StopLog\n";

print "\n\n4G 2.5 Commissioning Script Loaded to C:\\3G_4G_TOOL_Scripts\\2.5\\Comm_Script\n";
																				   
close FILE_4G_script;

                   }		#end if optgrp eq 6 or 7										
										
#############
#  END 4.0  #
#############										
										

}		     