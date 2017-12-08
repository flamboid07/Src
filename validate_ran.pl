use POSIX;
#use Win32::OLE qw(in with); 
#use Win32::OLE::Const 'Microsoft Outlook'; 
use Sys::Hostname;
#use Net::FTP;

my ($host,$returnvalue);


$host = hostname;

my($now);
#$now = strftime("%m%d%Y",localtime);
$now = strftime("%Y%m%d",localtime);

my ($finddate);

$find = "false";
$finddate = "not_expired";

#if (($now < "12302015") || ($now > "01102016")){
if (($now < "20160422") || ($now > "20170829")){
	$finddate = "expired";
	print STDOUT "expired\n";	
					       }
if ($finddate ne "expired"){	


if ($host eq "sdsa4202394"){

#Mark Pastor
print STDOUT "true\n";
$find = "true";

			}

if ($host eq "sysplan"){

#Colin Weir
print STDOUT "true\n";
$find = "true";

			}

if ($host eq "SDSA4202394"){

#colin weir
print STDOUT "true\n";
$find = "true";

			}

if ($host eq "STA112689"){

#Luis Rivera
print STDOUT "true\n";
$find = "true";

}

if ($host eq "STA109946"){

#eric clark
print STDOUT "true\n";
$find = "true";

			}
if ($host eq "STA106398"){

#sasha kanani
print STDOUT "true\n";
$find = "true";

			}
     


if ($host eq "STA114863"){

#"Hello Roderick Sunico Salum!\n";
print STDOUT "true\n";
$find = "true";

}

if ($host eq "STA114671"){

#"Hello Rawa Alton!\n";
print STDOUT "true\n";
$find = "true";

}

if ($host eq "STA116326"){

#"Hello Yashas Prakash!\n";
print STDOUT "true\n";
$find = "true";

}

if ($host eq "STA110143"){

#"Hello JF!\n";
print STDOUT "true\n";
$find = "true";

}

if ($host eq "STA110417"){

#"Hello Upinder!\n";
print STDOUT "true\n";
$find = "true";

}


if ($host eq "h-frisco-comm03"){

#"Hello Desktop 3!\n";
print STDOUT "true\n";
$find = "true";

}

if ($host eq "h-frisco-comm04"){

#"Hello Desktop 4!\n";
print STDOUT "true\n";
$find = "true";

}

if ($host eq "h-frisco-comm05"){

#"Hello Desktop 5!\n";
print STDOUT "true\n";
$find = "true";

}

if ($host eq "h-frisco-comm08"){

#"Hello Desktop 8!\n";
print STDOUT "true\n";
$find = "true";

}

if ($host eq "h-frisco-comm07"){

#"Hello Desktop 7!\n";
print STDOUT "true\n";
$find = "true";

}

if ($host eq "h-frisco-comm06"){

#"Hello Desktop 6!\n";
print STDOUT "true\n";
$find = "true";

}

if ($host eq "h-frisco-comm01"){

#"Hello Desktop 1!\n";
print STDOUT "true\n";
$find = "true";

}

if ($host eq "STA117262"){

#"Hello Arlene Cabatingan-Obregon!\n";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA117831"){

#"Victor Rohena";
print STDOUT "true\n";
$find = "true";

}

if ($host eq "STA102812"){

#"Hello Aarthi Raj!\n";
print STDOUT "true\n";
$find = "true";

}

if ($host eq "STA114495"){

#"Hello Abiodun Adeboye!\n";
print STDOUT "true\n";
$find = "true";

}

if ($host eq "STA109679"){

#"Hello Albert Tan!\n";
print STDOUT "true\n";
$find = "true";

}

if ($host eq "STA114144"){

#"Hello Albert Tan2!\n";
print STDOUT "true\n";
$find = "true";

}

if ($host eq "STA112394"){

#"Hello Allan Garin!\n";
print STDOUT "true\n";
$find = "true";

}

if ($host eq "STA101555"){

#"Hello Ana Ostolaza!\n";
print STDOUT "true\n";
$find = "true";

}

if ($host eq "STA116374"){

#Victor Rohena
print STDOUT "true\n";
$find = "true";

  }

if ($host eq "STA117465"){

#"Hello Ana Ostolaza!\n";
print STDOUT "true\n";
$find = "true";


}

if ($host eq "STA108857"){

#"Hello Andrew Marshall!\n";
print STDOUT "true\n";
$find = "true";

}


if ($host eq "STA112277"){

#"Hello Art Newby!\n";
print STDOUT "true\n";
$find = "true";

}

if ($host eq "STA109320"){

#"Hello Carmina Remorca!\n";
print STDOUT "true\n";
$find = "true";

}

if ($host eq "STA112731"){

#"Hello BOSS :)\n";
print STDOUT "true\n";
$find = "true";

}

if ($host eq "STA116301"){

#"Hello Daniel Sifrit!\n";
print STDOUT "true\n";
$find = "true";

}


if ($host eq "STA116286"){

#"Hello Dean Gumpay!\n";
print STDOUT "true\n";
$find = "true";

}


if ($host eq "STA112373"){

#"Hello Divya Sappidi!\n";
print STDOUT "true\n";
$find = "true";

}

if ($host eq "STA116355"){

#"Hello Edwin T. Gonzales!\n";
print STDOUT "true\n";
$find = "true";

}

if ($host eq "STA114227"){

#"Hello Firas Muwanes!\n";
print STDOUT "true\n";
$find = "true";

}

if ($host eq "STA118102"){

#"Hello Firas Muwanes!\n";
print STDOUT "true\n";
$find = "true";

}


if ($host eq "STA110142"){

#"Hello George Kis!\n";
print STDOUT "true\n";
$find = "true";

}

if ($host eq "STA109809"){

#"Hello Gilbert Nolasco!\n";
print STDOUT "true\n";
$find = "true";

}

if ($host eq "STA112276"){

#"Hello Gio Nava!\n";
print STDOUT "true\n";
$find = "true";

}

if ($host eq "STA110431"){

#"Hello Hassan Filty!\n";
print STDOUT "true\n";
$find = "true";

}

if ($host eq "STA116294"){

#"Hello Jan Wong!\n";
print STDOUT "true\n";
$find = "true";

}

if ($host eq "STA114226"){

#"Hello Janet Boneta!\n";
print STDOUT "true\n";
$find = "true";

}


if ($host eq "STA114443"){

#"Hello Jimmy Tran!\n";
print STDOUT "true\n";
$find = "true";

}


if ($host eq "STA115587"){

#"Hello Jonathan Crebillo!\n";
print STDOUT "true\n";
$find = "true";

}

if ($host eq "STA116295"){

#"Hello Joy Salum!\n";
print STDOUT "true\n";
$find = "true";

}


if ($host eq "STA116362"){

#"Hello Leo Carig!\n";
print STDOUT "true\n";
$find = "true";

}


if ($host eq "STA116363"){

#"Hello Leo Martinez!\n";
print STDOUT "true\n";
$find = "true";

}


if ($host eq "STA110384"){

#"Hello Manny Sarra!\n";
print STDOUT "true\n";
$find = "true";

}


if ($host eq "STA107017"){

#"Hello Mar John Baliwag!\n";
print STDOUT "true\n";
$find = "true";

}


if ($host eq "STA109810"){

#"Hello Maria Salpid!\n";
print STDOUT "true\n";
$find = "true";

}


if ($host eq "STA104642"){

#"Hello Mark Sunderland !\n";
print STDOUT "true\n";
$find = "true";

}


if ($host eq "STA114674"){

#"Hello Mike Church!\n";
print STDOUT "true\n";
$find = "true";

}


if ($host eq "STA109945"){

#"Hello Neil Enorme!\n";
print STDOUT "true\n";
$find = "true";

}


# if ($host eq "STA112152"){

# #"Hello Niket Shah!\n";
# print STDOUT "true\n";
# $find = "true";

# }


# if ($host eq "STA106495"){

# #"Hello Noel Lacson!\n";
# print STDOUT "true\n";
# $find = "true";

# }


# if ($host eq "STA116286"){

# #"Hello Noel Mananghaya!\n";
# print STDOUT "true\n";
# $find = "true";

# }


if ($host eq "SDSA4202416"){

#"Hello Pablo Cabrera!\n";
print STDOUT "true\n";
$find = "true";

}

# if ($host eq "STA114882"){

# #"Hello Paul Chy!\n";
# print STDOUT "true\n";
# $find = "true";

# }


if ($host eq "STA108696"){

#"Hello Rene Gonzales!\n";
print STDOUT "true\n";
$find = "true";

}


if ($host eq "STA104818"){

#"Hello Renee Ashoty!\n";
print STDOUT "true\n";
$find = "true";

}


if ($host eq "STA112374"){

#"Hello Rick Segura!\n";
print STDOUT "true\n";
$find = "true";

}



if ($host eq "STA116296"){

#"Hello Rodel Montaner!\n";
print STDOUT "true\n";
$find = "true";

}


if ($host eq "STA114133"){

#"Hello Roem Ponio!\n";
print STDOUT "true\n";
$find = "true";

}


# if ($host eq "STA110497"){

# #"Hello Rowell Saldia!\n";
# print STDOUT "true\n";
# $find = "true";

# }



if ($host eq "STA105195"){

#"Hello Shailesh Kumar!\n";
print STDOUT "true\n";
$find = "true";

}


if ($host eq "STA114173"){

#"Hello Suruchi Gupta! STARBUCKS WITHOUT INVITING ME!!!!!!!!!! :)\n";
print STDOUT "true\n";
$find = "true";

}


if ($host eq "STA112733"){

#"Hello Syed Mehdi!\n";
print STDOUT "true\n";
$find = "true";

}


if ($host eq "STA107461"){

#"Hello Tresa Tieu!\n";
print STDOUT "true\n";
$find = "true";

}


if ($host eq "STA116357"){

#"Hello Tung Dao!\n";
print STDOUT "true\n";
$find = "true";

}


if ($host eq "STA110501"){

#"Hello Uday Nallamalli!\n";
print STDOUT "true\n";
$find = "true";

}


if ($host eq "STA114735"){

#"Hello Vu Duong!\n";
print STDOUT "true\n";
$find = "true";

}


if ($host eq "STA109780"){

#"Hello Yousuf Mohammed!\n";
print STDOUT "true\n";
$find = "true";

}


if ($host eq "STA114456"){

#"Hello Justin Hart!\n";
print STDOUT "true\n";
$find = "true";

}


if ($host eq "STA114414"){

#"Hello Minh Bui!\n";
print STDOUT "true\n";
$find = "true";

}


if ($host eq "STA114447"){

#"Hello Zachary Mayfield!\n";
print STDOUT "true\n";
$find = "true";

}


if ($host eq "STA114840"){

#"Hello Monty Kinard!\n";
print STDOUT "true\n";
$find = "true";

}


if ($host eq "STA114827"){

#"Hello Eric Modrzakowski!\n";
print STDOUT "true\n";
$find = "true";

}


if ($host eq "STA114803"){

#"Hello Michael Netherland!\n";
print STDOUT "true\n";
$find = "true";

}


if ($host eq "STA105194"){

#"Hello Joseph Lynch!\n";
print STDOUT "true\n";
$find = "true";

}


if ($host eq "STA115589"){

#"Hello Mark Mantooth!\n";
print STDOUT "true\n";
$find = "true";

}


if ($host eq "STA115621"){

#"Hello Rassamee Wisitsora!\n";
print STDOUT "true\n";
$find = "true";

}



if ($host eq "STA116552"){

#"Hello Johnnie Barry!\n";
print STDOUT "true\n";
$find = "true";

}



if ($host eq "STA116548"){

#"Hello Joseph Ingrams Jr.!\n";
print STDOUT "true\n";
$find = "true";

}

if ($host eq "STA116555"){

#"Hello Jason Nazarovich!\n";
print STDOUT "true\n";
$find = "true";

}

if ($host eq "STA116790"){

#"Hello Carlos Mendez!\n";
print STDOUT "true\n";
$find = "true";

}


if ($host eq "STA116575"){

#"Hello Ezekiel Bawah!\n";
print STDOUT "true\n";
$find = "true";

}


if ($host eq "STA116763"){

#"Hello Bobby Crenshaw!\n";
print STDOUT "true\n";
$find = "true";

}


if ($host eq "STA116591"){

#"Hello Robert Motley!\n";
print STDOUT "true\n";
$find = "true";

}



if ($host eq "STA117817"){

#"Hello Shawn Fagan!\n";
print STDOUT "true\n";
$find = "true";

}        
 if ($host eq "STA114417"){

#"Hello Tung Pham";
print STDOUT "true\n";
$find = "true";

}
 if ($host eq "STA117420"){

#"Hello edwin";
print STDOUT "true\n";
$find = "true";

}



			   }
     
	  
if (($find eq "false") && ($finddate ne "expired")){

      if (-e "C:\\3G_4G_TOOL_Scripts\\RANCOMM_SprintNV_MasterTool_3G_4G_v14.0.xlsm"){
	     
            `DEL C:\\3G_4G_TOOL_Scripts\\RANCOMM_SprintNV_MasterTool_3G_4G_v14.0.xlsm`;  
            
                                      }	

      if (-e "C:\\3G_4G_TOOL_Scripts\\RANCOMM_SprintNV_MasterTool_3G_4G_v7.0.xlsm"){
	     
            `DEL C:\\3G_4G_TOOL_Scripts\\RANCOMM_SprintNV_MasterTool_3G_4G_v7.0.xlsm`;  
            
                                      }	
  &delete_all_tools;
  &delete_batch;        
  &send_email; 	
  print "**********************************************************************\n";
  print "**********************************************************************\n";  
  print "**********************************************************************\n";  
  
  print "YOUR COMPUTER IS NOT REGISTERED!!!!\n";            

  print "**********************************************************************\n";
  print "**********************************************************************\n";  
  print "**********************************************************************\n"; 
                                                                                      
  sleep 10;     		
	
	
	
		     }
	
	




sub send_email {
       
	#my $objOutlook = Win32::OLE->GetActiveObject('Outlook.Application') || Win32::OLE->new('Outlook.Application', 'Quit'); 

	#my $objOutlookMsg = $objOutlook->CreateItem(olMailItem);        
	#$objOutlookMsg->{'To'} = "e.clark\@sta.samsung.com"; 
	#$objOutlookMsg->{'Subject'} = "$host not authorized user"; 
	#$objOutlookMsg->{'Body'} = "\n\n Automatic Email"; 
	#$objOutlookMsg->send();	

}      		



sub delete_all_tools{
   
      if (-e "C:\\3G_4G_TOOL_Scripts\\RANCOMM_SprintNV_MasterTool_3G_4G_v15.0.xlsm"){
	     
            `DEL C:\\3G_4G_TOOL_Scripts\\RANCOMM_SprintNV_MasterTool_3G_4G_v15.0.xlsm`;  
            
                                      }	 


      if (-e "C:\\3G_4G_TOOL_Scripts\\RANCOMM_SprintNV_MasterTool_3G_4G_v14.5.xlsm"){
	     
            `DEL C:\\3G_4G_TOOL_Scripts\\RANCOMM_SprintNV_MasterTool_3G_4G_v14.5.xlsm`;  
            
                                      }	 
 
 
   
      if (-e "C:\\3G_4G_TOOL_Scripts\\RANCOMM_SprintNV_MasterTool_3G_4G_v14.0.xlsm"){
	     
            `DEL C:\\3G_4G_TOOL_Scripts\\RANCOMM_SprintNV_MasterTool_3G_4G_v14.0.xlsm`;  
            
                                      }	
                                      
     if (-e "C:\\3G_4G_TOOL_Scripts\\RANCOMM_SprintNV_MasterTool_3G_4G_v6.5.xlsm"){
	     
            `DEL C:\\3G_4G_TOOL_Scripts\\RANCOMM_SprintNV_MasterTool_3G_4G_v6.5.xlsm`;  
            
                                      }	
     if (-e "C:\\3G_4G_TOOL_Scripts\\RANCOMM_SprintNV_MasterTool_3G_4G_v7.0.xlsm"){
	     
            `DEL C:\\3G_4G_TOOL_Scripts\\RANCOMM_SprintNV_MasterTool_3G_4G_v7.0.xlsm`;  
            
                                      }	   
                                      
     if (-e "C:\\3G_4G_TOOL_Scripts\\RANCOMM_SprintNV_MasterTool_3G_4G_v12.0.xlsm"){
	     
            `DEL C:\\3G_4G_TOOL_Scripts\\RANCOMM_SprintNV_MasterTool_3G_4G_v12.0.xlsm`;  
            
                                      }	      
   
   
if (-e "C:\\3G_4G_TOOL_Scripts\\2.5\\LSM_Tilt_2.5\\LSM_TILT_TOOL_2_5.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\2.5\\LSM_Tilt_2.5\\LSM_TILT_TOOL_2_5.exe`;                  
 }
 
 if (-e "C:\\3G_4G_TOOL_Scripts\\2.5\\BC10_C1XRTT_FREQ\\BC10_C1XRTT_FREQ.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\2.5\\BC10_C1XRTT_FREQ\\BC10_C1XRTT_FREQ.exe`;                  
 }
 
 if (-e "C:\\3G_4G_TOOL_Scripts\\2.5\\Cabinet_Audit\\Cabinet_Audit.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\2.5\\Cabinet_Audit\\Cabinet_Audit.exe`;                  
 }
 
 if (-e "C:\\3G_4G_TOOL_Scripts\\2.5\\Cell_IDLE_Audit\\Cell_IDLE_Audit.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\2.5\\Cell_IDLE_Audit\\Cell_IDLE_Audit.exe`;                  
 }
 
 if (-e "C:\\3G_4G_TOOL_Scripts\\2.5\\CLOCK_CTRL_AUDIT\\CLOCK_CTRL_AUDIT.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\2.5\\CLOCK_CTRL_AUDIT\\CLOCK_CTRL_AUDIT.exe`;                  
 }
 
 if (-e "C:\\3G_4G_TOOL_Scripts\\2.5\\eCSFB_NV_LSM_Audit\\eCSFB_LSM_AUDIT.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\2.5\\eCSFB_NV_LSM_Audit\\eCSFB_LSM_AUDIT.exe`;                  
 }
 
 if (-e "C:\\3G_4G_TOOL_Scripts\\2.5\\eCSFB_NV_LSM_Audit\\eCSFB_LSM_AUDIT.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\2.5\\eCSFB_NV_LSM_Audit\\eCSFB_LSM_AUDIT.exe`;                  
 }
 
 if (-e "C:\\3G_4G_TOOL_Scripts\\2.5\\eCSFB_SCRIPT_Audit\\eCSFB_SCRIPT_AUDIT.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\2.5\\eCSFB_SCRIPT_Audit\\eCSFB_SCRIPT_AUDIT.exe`;                  
 }
 
 if (-e "C:\\3G_4G_TOOL_Scripts\\2.5\\eUTRA_FA_AUDIT\\eUTRA_FA.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\2.5\\eUTRA_FA_AUDIT\\eUTRA_FA.exe`;                  
 }
 
 if (-e "C:\\3G_4G_TOOL_Scripts\\2.5\\START_EARFCN_Audit\\START_EARFCN_AUDIT.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\2.5\\START_EARFCN_Audit\\START_EARFCN_AUDIT.exe`;                  
 }
 
 if (-e "C:\\3G_4G_TOOL_Scripts\\2.5\\START_EARFCN_Audit\\Tilt_Ald_Audit.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\2.5\\START_EARFCN_Audit\\Tilt_Ald_Audit.exe`;                  
 }
 
 if (-e "C:\\3G_4G_TOOL_Scripts\\3G_CARRIER_ADD_AUDIT\\CARRIER_ADD_AUDIT.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\3G_CARRIER_ADD_AUDIT\\CARRIER_ADD_AUDIT.exe`;                  
 }
 
 if (-e "C:\\3G_4G_TOOL_Scripts\\3G_SUBCELL_AUDIT\\3G_SUBCELL_AUDIT.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\3G_SUBCELL_AUDIT\\3G_SUBCELL_AUDIT.exe`;                  
 }
 
 if (-e "C:\\3G_4G_TOOL_Scripts\\3G_SERVFA_STS_AUDIT\\3G_SERVFA_STS_AUDIT.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\3G_SERVFA_STS_AUDIT\\3G_SERVFA_STS_AUDIT.exe`;                  
 }
 
 if (-e "C:\\3G_4G_TOOL_Scripts\\4G_NBR_MNC_MCC_FIX\\4G_NBR_MNC_MCC_FIX.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\4G_NBR_MNC_MCC_FIX\\4G_NBR_MNC_MCC_FIX.exe`;                  
 }
 
 if (-e "C:\\3G_4G_TOOL_Scripts\\4G_800_INSTALLED\\4G_800_INSTALLED.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\4G_800_INSTALLED\\4G_800_INSTALLED.exe`;                  
 }
 
 if (-e "C:\\3G_4G_TOOL_Scripts\\4G_CELL_AUDIT\\4G_CELL_AUDIT.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\4G_CELL_AUDIT\\4G_CELL_AUDIT.exe`;                  
 }
 
 
if (-e "C:\\3G_4G_TOOL_Scripts\\4G_ECSFB_AUDIT\\4G_ECSFB_AUDIT.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\4G_ECSFB_AUDIT\\4G_ECSFB_AUDIT.exe`;                  
 }
 
 
if (-e "C:\\3G_4G_TOOL_Scripts\\4G_800_AUDIT\\4G_800_AUDIT.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\4G_800_AUDIT\\4G_800_AUDIT.exe`;                  
 }
 
 
if (-e "C:\\3G_4G_TOOL_Scripts\\2.5\\LSM_ALARM\\LSM_ALARM_2_5.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\2.5\\LSM_ALARM\\LSM_ALARM_2_5.exe`;                  
 }
 
 if (-e "C:\\3G_4G_TOOL_Scripts\\3G_PCF_AUDIT\\3G_PCF.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\3G_PCF_AUDIT\\3G_PCF.exe`;                  
 }
 
 if (-e "C:\\3G_4G_TOOL_Scripts\\3G_COLOR_CODE_AUDIT\\3G_Color.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\3G_COLOR_CODE_AUDIT\\3G_Color.exe`;                  
 }
 
 if (-e "C:\\3G_4G_TOOL_Scripts\\4G_VLAN_AUDIT\\4G_VLAN_IP.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\4G_VLAN_AUDIT\\4G_VLAN_IP.exe`;                  
 }
 
 if (-e "C:\\3G_4G_TOOL_Scripts\\3G_VLAN_AUDIT\\3G_VLAN_IP.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\3G_VLAN_AUDIT\\3G_VLAN_IP.exe`;                  
 }
 
 if (-e "C:\\3G_4G_TOOL_Scripts\\2.5\\Alarm_2_5\\Alarm_2_5.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\2.5\\Alarm_2_5\\Alarm_2_5.exe`;                  
 }
 
 if (-e "C:\\3G_4G_TOOL_Scripts\\2.5\\ATP_2.5\\ATP_2_5.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\2.5\\ATP_2.5\\ATP_2_5.exe`;                  
 }
 
 
if (-e "C:\\3G_4G_TOOL_Scripts\\2.5\\Audit_2.5\\Audit_2_5.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\2.5\\Audit_2.5\\Audit_2_5.exe`;                  
 }
if (-e "C:\\3G_4G_TOOL_Scripts\\2.5\\4G_NV\\4G_NV_CHECK.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\2.5\\4G_NV\\4G_NV_CHECK.exe`;                  
 }
if (-e "C:\\3G_4G_TOOL_Scripts\\2.5\\3G_NV\\3G_NV_CHECK.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\2.5\\3G_NV\\3G_NV_CHECK.exe`;                  
 } 
 
 
if (-e "C:\\3G_4G_TOOL_Scripts\\4G_Comm_Creator\\PKG2_4G.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\4G_Comm_Creator\\PKG2_4G.exe`;                  
 }
 
 if (-e "C:\\3G_4G_TOOL_Scripts\\4G_ATP\\4G_ATP.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\4G_ATP\\4G_ATP.exe`;                  
 }
 
 if (-e "C:\\3G_4G_TOOL_Scripts\\3G_ATP_TOOL\\3G_ATP_TOOL.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\3G_ATP_TOOL\\3G_ATP_TOOL.exe`;                  
 }

if (-e "C:\\3G_4G_TOOL_Scripts\\3G_PLD_COMPARE\\3G_PLD_COMPARE.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\3G_PLD_COMPARE\\3G_PLD_COMPARE.exe`;                  
 } 
 
 
 if (-e "C:\\3G_4G_TOOL_Scripts\\3G_4G_AUDIT_TOOL\\3G_4G_AUDIT.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\3G_4G_AUDIT_TOOL\\3G_4G_AUDIT.exe`;                  
 } 
 
 if (-e "C:\\3G_4G_TOOL_Scripts\\4G_FREQ_CONFLICT\\4G_FREQ_CONFLICT.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\4G_FREQ_CONFLICT\\4G_FREQ_CONFLICT.exe`;                  
 }



if (-e "C:\\3G_4G_TOOL_Scripts\\3G_PKG_AUDIT\\3G_PKG_AUDIT.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\3G_PKG_AUDIT\\3G_PKG_AUDIT.exe`;                  
 } 
 
 
 if (-e "C:\\3G_4G_TOOL_Scripts\\3G_ROM_AUDIT\\3G_ROM_AUDIT.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\3G_ROM_AUDIT\\3G_ROM_AUDIT.exe`;                  
 } 
 
 if (-e "C:\\3G_4G_TOOL_Scripts\\3G_FA_ID_AUDIT\\FA_ID_AUDIT_TOOL.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\3G_FA_ID_AUDIT\\FA_ID_AUDIT_TOOL.exe`;                  
 } 
 
 
 if (-e "C:\\3G_4G_TOOL_Scripts\\3G_TRANSMIT_AUDIT\\3G_TRANSMIT_AUDIT.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\3G_TRANSMIT_AUDIT\\3G_TRANSMIT_AUDIT.exe`;                  
 } 
 
 
 if (-e "C:\\3G_4G_TOOL_Scripts\\4G_TRANSMIT_AUDIT\\4G_TRANSMIT_AUDIT.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\4G_TRANSMIT_AUDIT\\4G_TRANSMIT_AUDIT.exe`;                  
 } 
 
 if (-e "C:\\3G_4G_TOOL_Scripts\\bin\\MULTIPLE_SITES.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\bin\\MULTIPLE_SITES.exe`;                  
 } 
 
 
 if (-e "C:\\3G_4G_TOOL_Scripts\\3G_FW_SW_AUDIT\\3G_FW_SW_AUDIT.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\3G_FW_SW_AUDIT\\3G_FW_SW_AUDIT.exe`;                  
 } 
 
 
 if (-e "C:\\3G_4G_TOOL_Scripts\\bin\\LOADER.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\bin\\LOADER.exe`;                  
 } 
 
 
 if (-e "C:\\3G_4G_TOOL_Scripts\\3G_CONFIGURATION_AUDIT\\3G_CONFIG_AUDIT.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\3G_CONFIGURATION_AUDIT\\3G_CONFIG_AUDIT.exe`;                  
 } 
 
 if (-e "C:\\3G_4G_TOOL_Scripts\\Daily_Tracker\\Daily_Tracker_Upload.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\Daily_Tracker\\Daily_Tracker_Upload.exe`;                  
 } 
 
 
if (-e "C:\\3G_4G_TOOL_Scripts\\bin\\IP_COMM_3G.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\bin\\IP_COMM_3G.exe`;                  
 }  
 
 if (-e "C:\\3G_4G_TOOL_Scripts\\3G_ATP_TOOL\\3G_RFS_AUDIT.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\3G_ATP_TOOL\\3G_RFS_AUDIT.exe`;                  
 }



if (-e "C:\\3G_4G_TOOL_Scripts\\3G_RET_STRESS_TEST\\3G_RET_STRESS_TEST.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\3G_RET_STRESS_TEST\\3G_RET_STRESS_TEST.exe`;                  
 }

if (-e "C:\\3G_4G_TOOL_Scripts\\4G_SITE_ALARMS\\4G_SITE_ALARMS.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\4G_SITE_ALARMS\\4G_SITE_ALARMS.exe`;                  
 }
 
 if (-e "C:\\3G_4G_TOOL_Scripts\\3G_SITE_STATUS\\3G_SITE_STATUS.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\3G_SITE_STATUS\\3G_SITE_STATUS.exe`;                  
 }
 
 if (-e "C:\\3G_4G_TOOL_Scripts\\MME_EXEC\\MME_EXEC.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\MME_EXEC\\MME_EXEC.exe`;                  
 }
 
 if (-e "C:\\3G_4G_TOOL_Scripts\\4G_1XRTT_PREG\\4G_1XRTT_PREG.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\4G_1XRTT_PREG\\4G_1XRTT_PREG.exe`;                  
 }
 
 if (-e "C:\\3G_4G_TOOL_Scripts\\4G_FW_AUDIT\\4G_FW_AUDIT.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\4G_FW_AUDIT\\4G_FW_AUDIT.exe`;                  
 }
 
 if (-e "C:\\3G_4G_TOOL_Scripts\\4G_MME_CONFIG\\4G_MME_CONFIG.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\4G_MME_CONFIG\\4G_MME_CONFIG.exe`;                  
 }


if (-e "C:\\3G_4G_TOOL_Scripts\\4G_BUCKET_AUDIT\\4G_BUCKET_AUDIT.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\4G_BUCKET_AUDIT\\4G_BUCKET_AUDIT.exe`;                  
 }
 
 if (-e "C:\\3G_4G_TOOL_Scripts\\3G_BTS_NAME_AUDIT\\BTS_NAME_AUDIT.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\3G_BTS_NAME_AUDIT\\BTS_NAME_AUDIT.exe`;                  
 }
 
 if (-e "C:\\3G_4G_TOOL_Scripts\\3G_ATP_2ND_DU\\3G_ATP_2ND_DU.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\3G_ATP_2ND_DU\\3G_ATP_2ND_DU.exe`;                  
 }
 
 if (-e "C:\\3G_4G_TOOL_Scripts\\UDA_TEST\\UDA.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\UDA_TEST\\UDA.exe`;                  
 }
 
 
if (-e "C:\\3G_4G_TOOL_Scripts\\3G_CEP_DIVERSITY_AUDIT\\CEP_DIVERSITY_AUDIT.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\3G_CEP_DIVERSITY_AUDIT\\CEP_DIVERSITY_AUDIT.exe`;                  
 }
 
 
if (-e "C:\\3G_4G_TOOL_Scripts\\4G_ATP_800\\4G_ATP_800.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\4G_ATP_800\\4G_ATP_800.exe`;                  
 }
 
 if (-e "C:\\3G_4G_TOOL_Scripts\\4G_NBR_BATCH_800\\4G_NBR_BATCH_800.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\4G_NBR_BATCH_800\\4G_NBR_BATCH_800.exe`;                  
 }

if (-e "C:\\3G_4G_TOOL_Scripts\\bin\\validate.exe"){
      `DEL C:\\3G_4G_TOOL_Scripts\\bin\\validate.exe`;                  
 } 




		   }
		   









sub delete_batch{
	
	
  if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AH1_Odd.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AH1_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AH2_Even.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AH2_Even.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AH2_Odd.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AH2_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AUR_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AUR_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AUR_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AUR_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AUR_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AUR_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_BV1_0_3_6_9.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_BV1_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_BV1_1_4_7.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_BV1_1_4_7.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_BV1_2_5_8.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_BV1_2_5_8.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_BV2_Even.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_BV2_Even.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_BV2_Odd.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_BV2_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_Dav_0_3_6_9.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_Dav_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_Dav_1_4_7.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_Dav_1_4_7.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_Dav_2_5_8.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_Dav_2_5_8.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\COL_Commissioning_BSC1_0_3_6_9.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\COL_Commissioning_BSC1_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\COL_Commissioning_BSC1_1_4_7.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\COL_Commissioning_BSC1_1_4_7.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\COL_Commissioning_BSC1_2_5_8.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\COL_Commissioning_BSC1_2_5_8.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\COL_Commissioning_BSC2_Even.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\COL_Commissioning_BSC2_Even.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\COL_Commissioning_BSC2_Odd.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\COL_Commissioning_BSC2_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\ERIE_Commissioning_Even.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\ERIE_Commissioning_Even.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\ERIE_Commissioning_Odd.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\ERIE_Commissioning_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\FW_Commissioning_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\FW_Commissioning_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\FW_Commissioning_BTS_Ending_1_4_7.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\FW_Commissioning_BTS_Ending_1_4_7.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\FW_Commissioning_BTS_Ending_2_5_8.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\FW_Commissioning_BTS_Ending_2_5_8.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\IDAHO_Commissioning_BSC1_Even.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\IDAHO_Commissioning_BSC1_Even.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\IDAHO_Commissioning_BSC1_Odd.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\IDAHO_Commissioning_BSC1_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\IDAHO_Commissioning_BSC2_Even.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\IDAHO_Commissioning_BSC2_Even.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\IDAHO_Commissioning_BSC2_Odd.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\IDAHO_Commissioning_BSC2_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\IND_Commissioning_BTS_0_3_6_9.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\IND_Commissioning_BTS_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\IND_Commissioning_BTS_1_4_7.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\IND_Commissioning_BTS_1_4_7.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\IND_Commissioning_BTS_2_5_8.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\IND_Commissioning_BTS_2_5_8.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\IOWA_URBANDALE_Commissioning.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\IOWA_URBANDALE_Commissioning.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Detroit_BSC1_Rev1_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Detroit_BSC1_Rev1_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Detroit_BSC1_Rev1_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Detroit_BSC1_Rev1_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Detroit_BSC1_Rev1_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Detroit_BSC1_Rev1_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Detroit_BSC2_Rev1_BTS_Even.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Detroit_BSC2_Rev1_BTS_Even.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Detroit_BSC2_Rev1_BTS_Odd.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Detroit_BSC2_Rev1_BTS_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Kentwood_Rev1_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Kentwood_Rev1_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Kentwood_Rev1_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Kentwood_Rev1_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Kentwood_Rev1_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Kentwood_Rev1_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC1_Rev1_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC1_Rev1_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC1_Rev1_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC1_Rev1_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC1_Rev1_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC1_Rev1_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC2_Rev1_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC2_Rev1_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC2_Rev1_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC2_Rev1_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC2_Rev1_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC2_Rev1_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\MN_Commissioning_BSC1_Even.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\MN_Commissioning_BSC1_Even.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\MN_Commissioning_BSC1_Odd.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\MN_Commissioning_BSC1_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\MN_Commissioning_BSC2_Even.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\MN_Commissioning_BSC2_Even.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\MN_Commissioning_BSC2_Odd.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\MN_Commissioning_BSC2_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\NewBerlin_Commissioning_BSC1_0_3_6_9.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\NewBerlin_Commissioning_BSC1_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\NewBerlin_Commissioning_BSC1_1_4_7.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\NewBerlin_Commissioning_BSC1_1_4_7.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\NewBerlin_Commissioning_BSC1_2_5_8.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\NewBerlin_Commissioning_BSC1_2_5_8.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\NewBerlin_Commissioning_BSC2_Even.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\NewBerlin_Commissioning_BSC2_Even.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\NewBerlin_Commissioning_BSC2_Odd.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\NewBerlin_Commissioning_BSC2_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Cleveland_Rev1_BTS_Ending_0-3-6-9_20130511.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Cleveland_Rev1_BTS_Ending_0-3-6-9_20130511.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Cleveland_Rev1_BTS_Ending_1-4-7_20130511.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Cleveland_Rev1_BTS_Ending_1-4-7_20130511.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Cleveland_Rev1_BTS_Ending_2-5-8_20130511.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Cleveland_Rev1_BTS_Ending_2-5-8_20130511.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Sharonville_Rev1_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Sharonville_Rev1_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Sharonville_Rev1_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Sharonville_Rev1_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Sharonville_Rev1_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Sharonville_Rev1_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Worthington_Rev1_BTS_Ending_0-3-6-9_20130511.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Worthington_Rev1_BTS_Ending_0-3-6-9_20130511.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Worthington_Rev1_BTS_Ending_1-4-7_20130511.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Worthington_Rev1_BTS_Ending_1-4-7_20130511.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Worthington_Rev1_BTS_Ending_2-5-8_20130511.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Worthington_Rev1_BTS_Ending_2-5-8_20130511.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Omaha_Commissioning_0_3_6_9.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Omaha_Commissioning_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Omaha_Commissioning_1_4_7.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Omaha_Commissioning_1_4_7.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Omaha_Commissioning_2_5_8.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Omaha_Commissioning_2_5_8.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Pittsburgh_Commissioning_Even.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Pittsburgh_Commissioning_Even.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Pittsburgh_Commissioning_odd.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Pittsburgh_Commissioning_odd.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Redmond_BSC1_Even.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Redmond_BSC1_Even.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Redmond_BSC1_Odd.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Redmond_BSC1_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Redmond_BSC2_Even.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Redmond_BSC2_Even.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Redmond_BSC2_Odd.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Redmond_BSC2_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Spokane_Even.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Spokane_Even.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Spokane_Odd.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Spokane_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Tigard_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Tigard_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Tigard_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Tigard_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Tigard_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Tigard_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PRVI_Commissioning_EVEN.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PRVI_Commissioning_EVEN.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PRVI_Commissioning_ODD.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PRVI_Commissioning_ODD.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PR_OUTDOOR_BATCH_RELEASE.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PR_OUTDOOR_BATCH_RELEASE.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PR_OUTDOOR_BATCH_SET.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PR_OUTDOOR_BATCH_SET.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PR_UDA_INDOOR_BATCH_RELEASE.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PR_UDA_INDOOR_BATCH_RELEASE.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PR_UDA_INDOOR_BATCH_SET.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PR_UDA_INDOOR_BATCH_SET.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Reno_Commissioning_EVEN.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Reno_Commissioning_EVEN.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Reno_Commissioning_ODD.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Reno_Commissioning_ODD.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\ROCHESTER_Commissioning.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\ROCHESTER_Commissioning.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Brisbane_Rev1_Even.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Brisbane_Rev1_Even.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Brisbane_Rev1_Odd.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Brisbane_Rev1_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Fresno_0_3_6_9.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Fresno_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Fresno_1_4_7.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Fresno_1_4_7.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Fresno_2_5_8.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Fresno_2_5_8.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Oakland_Rev1_Even.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Oakland_Rev1_Even.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Oakland_Rev1_Odd.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Oakland_Rev1_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sacramento_EVEN.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sacramento_EVEN.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sacramento_ODD.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sacramento_ODD.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sta_Clara_Rev2_Even.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sta_Clara_Rev2_Even.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sta_Clara_Rev2_Odd.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sta_Clara_Rev2_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sta_Rosa_Rev1_Even.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sta_Rosa_Rev1_Even.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sta_Rosa_Rev1_ODD.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sta_Rosa_Rev1_ODD.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\StCloud_Commissioning_Even.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\StCloud_Commissioning_Even.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\StCloud_Commissioning_Odd.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\StCloud_Commissioning_Odd.batch"`;                  
 } 

if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\UDA_SET_BSM3.0.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\UDA_SET_BSM3.0.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\UTAH_Commissioning_saltlake_BSC1_Even.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\UTAH_Commissioning_saltlake_BSC1_Even.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\UTAH_Commissioning_saltlake_BSC1_Odd.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\UTAH_Commissioning_saltlake_BSC1_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\UTAH_Commissioning_saltlake_BSC2_Even.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\UTAH_Commissioning_saltlake_BSC2_Even.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\UTAH_Commissioning_saltlake_BSC2_Odd.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\UTAH_Commissioning_saltlake_BSC2_Odd.batch"`;                  
 } 


  if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AH1_Odd.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AH1_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AH2_Even.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AH2_Even.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AH2_Odd.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AH2_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AUR_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AUR_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AUR_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AUR_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AUR_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AUR_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_BV1_0_3_6_9.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_BV1_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_BV1_1_4_7.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_BV1_1_4_7.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_BV1_2_5_8.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_BV1_2_5_8.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_BV2_Even.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_BV2_Even.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_BV2_Odd.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_BV2_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_Dav_0_3_6_9.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_Dav_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_Dav_1_4_7.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_Dav_1_4_7.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_Dav_2_5_8.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_Dav_2_5_8.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\COL_Commissioning_BSC1_0_3_6_9.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\COL_Commissioning_BSC1_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\COL_Commissioning_BSC1_1_4_7.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\COL_Commissioning_BSC1_1_4_7.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\COL_Commissioning_BSC1_2_5_8.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\COL_Commissioning_BSC1_2_5_8.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\COL_Commissioning_BSC2_Even.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\COL_Commissioning_BSC2_Even.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\COL_Commissioning_BSC2_Odd.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\COL_Commissioning_BSC2_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\ERIE_Commissioning_Even.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\ERIE_Commissioning_Even.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\ERIE_Commissioning_Odd.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\ERIE_Commissioning_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\FW_Commissioning_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\FW_Commissioning_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\FW_Commissioning_BTS_Ending_1_4_7.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\FW_Commissioning_BTS_Ending_1_4_7.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\FW_Commissioning_BTS_Ending_2_5_8.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\FW_Commissioning_BTS_Ending_2_5_8.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\IDAHO_Commissioning_BSC1_Even.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\IDAHO_Commissioning_BSC1_Even.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\IDAHO_Commissioning_BSC1_Odd.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\IDAHO_Commissioning_BSC1_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\IDAHO_Commissioning_BSC2_Even.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\IDAHO_Commissioning_BSC2_Even.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\IDAHO_Commissioning_BSC2_Odd.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\IDAHO_Commissioning_BSC2_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\IND_Commissioning_BTS_0_3_6_9.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\IND_Commissioning_BTS_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\IND_Commissioning_BTS_1_4_7.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\IND_Commissioning_BTS_1_4_7.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\IND_Commissioning_BTS_2_5_8.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\IND_Commissioning_BTS_2_5_8.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\IOWA_URBANDALE_Commissioning.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\IOWA_URBANDALE_Commissioning.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Detroit_BSC1_Rev1_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Detroit_BSC1_Rev1_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Detroit_BSC1_Rev1_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Detroit_BSC1_Rev1_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Detroit_BSC1_Rev1_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Detroit_BSC1_Rev1_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Detroit_BSC2_Rev1_BTS_Even.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Detroit_BSC2_Rev1_BTS_Even.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Detroit_BSC2_Rev1_BTS_Odd.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Detroit_BSC2_Rev1_BTS_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Kentwood_Rev1_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Kentwood_Rev1_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Kentwood_Rev1_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Kentwood_Rev1_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Kentwood_Rev1_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Kentwood_Rev1_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC1_Rev1_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC1_Rev1_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC1_Rev1_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC1_Rev1_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC1_Rev1_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC1_Rev1_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC2_Rev1_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC2_Rev1_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC2_Rev1_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC2_Rev1_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC2_Rev1_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC2_Rev1_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\MN_Commissioning_BSC1_Even.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\MN_Commissioning_BSC1_Even.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\MN_Commissioning_BSC1_Odd.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\MN_Commissioning_BSC1_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\MN_Commissioning_BSC2_Even.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\MN_Commissioning_BSC2_Even.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\MN_Commissioning_BSC2_Odd.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\MN_Commissioning_BSC2_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\NewBerlin_Commissioning_BSC1_0_3_6_9.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\NewBerlin_Commissioning_BSC1_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\NewBerlin_Commissioning_BSC1_1_4_7.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\NewBerlin_Commissioning_BSC1_1_4_7.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\NewBerlin_Commissioning_BSC1_2_5_8.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\NewBerlin_Commissioning_BSC1_2_5_8.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\NewBerlin_Commissioning_BSC2_Even.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\NewBerlin_Commissioning_BSC2_Even.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\NewBerlin_Commissioning_BSC2_Odd.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\NewBerlin_Commissioning_BSC2_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Cleveland_Rev1_BTS_Ending_0-3-6-9_20130511.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Cleveland_Rev1_BTS_Ending_0-3-6-9_20130511.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Cleveland_Rev1_BTS_Ending_1-4-7_20130511.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Cleveland_Rev1_BTS_Ending_1-4-7_20130511.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Cleveland_Rev1_BTS_Ending_2-5-8_20130511.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Cleveland_Rev1_BTS_Ending_2-5-8_20130511.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Sharonville_Rev1_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Sharonville_Rev1_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Sharonville_Rev1_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Sharonville_Rev1_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Sharonville_Rev1_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Sharonville_Rev1_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Worthington_Rev1_BTS_Ending_0-3-6-9_20130511.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Worthington_Rev1_BTS_Ending_0-3-6-9_20130511.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Worthington_Rev1_BTS_Ending_1-4-7_20130511.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Worthington_Rev1_BTS_Ending_1-4-7_20130511.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Worthington_Rev1_BTS_Ending_2-5-8_20130511.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Worthington_Rev1_BTS_Ending_2-5-8_20130511.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Omaha_Commissioning_0_3_6_9.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Omaha_Commissioning_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Omaha_Commissioning_1_4_7.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Omaha_Commissioning_1_4_7.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Omaha_Commissioning_2_5_8.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Omaha_Commissioning_2_5_8.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Pittsburgh_Commissioning_Even.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Pittsburgh_Commissioning_Even.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Pittsburgh_Commissioning_odd.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Pittsburgh_Commissioning_odd.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Redmond_BSC1_Even.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Redmond_BSC1_Even.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Redmond_BSC1_Odd.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Redmond_BSC1_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Redmond_BSC2_Even.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Redmond_BSC2_Even.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Redmond_BSC2_Odd.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Redmond_BSC2_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Spokane_Even.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Spokane_Even.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Spokane_Odd.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Spokane_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Tigard_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Tigard_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Tigard_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Tigard_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Tigard_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Tigard_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PRVI_Commissioning_EVEN.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PRVI_Commissioning_EVEN.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PRVI_Commissioning_ODD.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PRVI_Commissioning_ODD.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PR_OUTDOOR_BATCH_RELEASE.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PR_OUTDOOR_BATCH_RELEASE.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PR_OUTDOOR_BATCH_SET.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PR_OUTDOOR_BATCH_SET.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PR_UDA_INDOOR_BATCH_RELEASE.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PR_UDA_INDOOR_BATCH_RELEASE.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PR_UDA_INDOOR_BATCH_SET.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PR_UDA_INDOOR_BATCH_SET.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Reno_Commissioning_EVEN.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Reno_Commissioning_EVEN.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Reno_Commissioning_ODD.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Reno_Commissioning_ODD.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\ROCHESTER_Commissioning.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\ROCHESTER_Commissioning.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Brisbane_Rev1_Even.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Brisbane_Rev1_Even.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Brisbane_Rev1_Odd.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Brisbane_Rev1_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Fresno_0_3_6_9.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Fresno_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Fresno_1_4_7.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Fresno_1_4_7.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Fresno_2_5_8.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Fresno_2_5_8.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Oakland_Rev1_Even.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Oakland_Rev1_Even.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Oakland_Rev1_Odd.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Oakland_Rev1_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sacramento_EVEN.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sacramento_EVEN.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sacramento_ODD.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sacramento_ODD.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sta_Clara_Rev2_Even.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sta_Clara_Rev2_Even.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sta_Clara_Rev2_Odd.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sta_Clara_Rev2_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sta_Rosa_Rev1_Even.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sta_Rosa_Rev1_Even.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sta_Rosa_Rev1_ODD.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sta_Rosa_Rev1_ODD.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\StCloud_Commissioning_Even.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\StCloud_Commissioning_Even.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\StCloud_Commissioning_Odd.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\StCloud_Commissioning_Odd.batch"`;                  
 } 

if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\UDA_SET_BSM3.0.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\UDA_SET_BSM3.0.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\UTAH_Commissioning_saltlake_BSC1_Even.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\UTAH_Commissioning_saltlake_BSC1_Even.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\UTAH_Commissioning_saltlake_BSC1_Odd.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\UTAH_Commissioning_saltlake_BSC1_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\UTAH_Commissioning_saltlake_BSC2_Even.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\UTAH_Commissioning_saltlake_BSC2_Even.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\UTAH_Commissioning_saltlake_BSC2_Odd.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\UTAH_Commissioning_saltlake_BSC2_Odd.batch"`;                  
 } 

if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AH1_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AH1_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AH2_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AH2_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AH2_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AH2_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AUR_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AUR_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AUR_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AUR_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AUR_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AUR_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_BV1_0_3_6_9.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_BV1_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_BV1_1_4_7.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_BV1_1_4_7.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_BV1_2_5_8.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_BV1_2_5_8.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_BV2_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_BV2_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_BV2_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_BV2_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_Dav_0_3_6_9.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_Dav_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_Dav_1_4_7.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_Dav_1_4_7.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_Dav_2_5_8.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_Dav_2_5_8.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\COL_Commissioning_BSC1_0_3_6_9.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\COL_Commissioning_BSC1_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\COL_Commissioning_BSC1_1_4_7.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\COL_Commissioning_BSC1_1_4_7.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\COL_Commissioning_BSC1_2_5_8.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\COL_Commissioning_BSC1_2_5_8.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\COL_Commissioning_BSC2_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\COL_Commissioning_BSC2_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\COL_Commissioning_BSC2_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\COL_Commissioning_BSC2_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\ERIE_Commissioning_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\ERIE_Commissioning_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\ERIE_Commissioning_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\ERIE_Commissioning_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\FW_Commissioning_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\FW_Commissioning_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\FW_Commissioning_BTS_Ending_1_4_7.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\FW_Commissioning_BTS_Ending_1_4_7.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\FW_Commissioning_BTS_Ending_2_5_8.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\FW_Commissioning_BTS_Ending_2_5_8.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\IDAHO_Commissioning_BSC1_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\IDAHO_Commissioning_BSC1_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\IDAHO_Commissioning_BSC1_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\IDAHO_Commissioning_BSC1_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\IDAHO_Commissioning_BSC2_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\IDAHO_Commissioning_BSC2_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\IDAHO_Commissioning_BSC2_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\IDAHO_Commissioning_BSC2_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\IND_Commissioning_BTS_0_3_6_9.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\IND_Commissioning_BTS_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\IND_Commissioning_BTS_1_4_7.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\IND_Commissioning_BTS_1_4_7.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\IND_Commissioning_BTS_2_5_8.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\IND_Commissioning_BTS_2_5_8.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\IOWA_URBANDALE_Commissioning.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\IOWA_URBANDALE_Commissioning.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Detroit_BSC1_Rev1_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Detroit_BSC1_Rev1_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Detroit_BSC1_Rev1_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Detroit_BSC1_Rev1_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Detroit_BSC1_Rev1_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Detroit_BSC1_Rev1_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Detroit_BSC2_Rev1_BTS_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Detroit_BSC2_Rev1_BTS_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Detroit_BSC2_Rev1_BTS_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Detroit_BSC2_Rev1_BTS_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Kentwood_Rev1_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Kentwood_Rev1_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Kentwood_Rev1_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Kentwood_Rev1_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Kentwood_Rev1_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Kentwood_Rev1_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC1_Rev1_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC1_Rev1_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC1_Rev1_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC1_Rev1_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC1_Rev1_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC1_Rev1_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC2_Rev1_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC2_Rev1_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC2_Rev1_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC2_Rev1_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC2_Rev1_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC2_Rev1_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\MN_Commissioning_BSC1_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\MN_Commissioning_BSC1_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\MN_Commissioning_BSC1_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\MN_Commissioning_BSC1_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\MN_Commissioning_BSC2_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\MN_Commissioning_BSC2_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\MN_Commissioning_BSC2_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\MN_Commissioning_BSC2_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\NewBerlin_Commissioning_BSC1_0_3_6_9.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\NewBerlin_Commissioning_BSC1_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\NewBerlin_Commissioning_BSC1_1_4_7.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\NewBerlin_Commissioning_BSC1_1_4_7.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\NewBerlin_Commissioning_BSC1_2_5_8.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\NewBerlin_Commissioning_BSC1_2_5_8.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\NewBerlin_Commissioning_BSC2_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\NewBerlin_Commissioning_BSC2_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\NewBerlin_Commissioning_BSC2_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\NewBerlin_Commissioning_BSC2_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Cleveland_Rev1_BTS_Ending_0-3-6-9_20130511.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Cleveland_Rev1_BTS_Ending_0-3-6-9_20130511.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Cleveland_Rev1_BTS_Ending_1-4-7_20130511.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Cleveland_Rev1_BTS_Ending_1-4-7_20130511.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Cleveland_Rev1_BTS_Ending_2-5-8_20130511.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Cleveland_Rev1_BTS_Ending_2-5-8_20130511.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Sharonville_Rev1_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Sharonville_Rev1_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Sharonville_Rev1_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Sharonville_Rev1_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Sharonville_Rev1_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Sharonville_Rev1_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Worthington_Rev1_BTS_Ending_0-3-6-9_20130511.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Worthington_Rev1_BTS_Ending_0-3-6-9_20130511.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Worthington_Rev1_BTS_Ending_1-4-7_20130511.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Worthington_Rev1_BTS_Ending_1-4-7_20130511.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Worthington_Rev1_BTS_Ending_2-5-8_20130511.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Worthington_Rev1_BTS_Ending_2-5-8_20130511.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Omaha_Commissioning_0_3_6_9.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Omaha_Commissioning_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Omaha_Commissioning_1_4_7.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Omaha_Commissioning_1_4_7.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Omaha_Commissioning_2_5_8.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Omaha_Commissioning_2_5_8.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Pittsburgh_Commissioning_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Pittsburgh_Commissioning_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Pittsburgh_Commissioning_odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Pittsburgh_Commissioning_odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Redmond_BSC1_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Redmond_BSC1_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Redmond_BSC1_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Redmond_BSC1_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Redmond_BSC2_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Redmond_BSC2_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Redmond_BSC2_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Redmond_BSC2_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Spokane_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Spokane_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Spokane_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Spokane_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Tigard_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Tigard_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Tigard_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Tigard_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Tigard_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Tigard_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PRVI_Commissioning_EVEN.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PRVI_Commissioning_EVEN.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PRVI_Commissioning_ODD.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PRVI_Commissioning_ODD.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PR_OUTDOOR_BATCH_RELEASE.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PR_OUTDOOR_BATCH_RELEASE.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PR_OUTDOOR_BATCH_SET.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PR_OUTDOOR_BATCH_SET.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PR_UDA_INDOOR_BATCH_RELEASE.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PR_UDA_INDOOR_BATCH_RELEASE.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PR_UDA_INDOOR_BATCH_SET.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PR_UDA_INDOOR_BATCH_SET.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Reno_Commissioning_EVEN.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Reno_Commissioning_EVEN.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Reno_Commissioning_ODD.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Reno_Commissioning_ODD.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\ROCHESTER_Commissioning.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\ROCHESTER_Commissioning.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Brisbane_Rev1_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Brisbane_Rev1_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Brisbane_Rev1_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Brisbane_Rev1_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Fresno_0_3_6_9.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Fresno_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Fresno_1_4_7.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Fresno_1_4_7.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Fresno_2_5_8.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Fresno_2_5_8.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Oakland_Rev1_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Oakland_Rev1_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Oakland_Rev1_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Oakland_Rev1_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sacramento_EVEN.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sacramento_EVEN.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sacramento_ODD.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sacramento_ODD.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sta_Clara_Rev2_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sta_Clara_Rev2_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sta_Clara_Rev2_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sta_Clara_Rev2_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sta_Rosa_Rev1_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sta_Rosa_Rev1_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sta_Rosa_Rev1_ODD.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sta_Rosa_Rev1_ODD.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\StCloud_Commissioning_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\StCloud_Commissioning_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\StCloud_Commissioning_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\StCloud_Commissioning_Odd.batch"`;                  
 } 

if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\UDA_SET_BSM3.0.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\UDA_SET_BSM3.0.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\UTAH_Commissioning_saltlake_BSC1_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\UTAH_Commissioning_saltlake_BSC1_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\UTAH_Commissioning_saltlake_BSC1_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\UTAH_Commissioning_saltlake_BSC1_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\UTAH_Commissioning_saltlake_BSC2_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\UTAH_Commissioning_saltlake_BSC2_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\UTAH_Commissioning_saltlake_BSC2_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\UTAH_Commissioning_saltlake_BSC2_Odd.batch"`;                  
 } 
 if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AH1_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AH1_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AH2_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AH2_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AH2_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AH2_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AUR_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AUR_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AUR_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AUR_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AUR_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AUR_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_BV1_0_3_6_9.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_BV1_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_BV1_1_4_7.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_BV1_1_4_7.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_BV1_2_5_8.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_BV1_2_5_8.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_BV2_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_BV2_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_BV2_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_BV2_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_Dav_0_3_6_9.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_Dav_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_Dav_1_4_7.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_Dav_1_4_7.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_Dav_2_5_8.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_Dav_2_5_8.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\COL_Commissioning_BSC1_0_3_6_9.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\COL_Commissioning_BSC1_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\COL_Commissioning_BSC1_1_4_7.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\COL_Commissioning_BSC1_1_4_7.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\COL_Commissioning_BSC1_2_5_8.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\COL_Commissioning_BSC1_2_5_8.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\COL_Commissioning_BSC2_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\COL_Commissioning_BSC2_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\COL_Commissioning_BSC2_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\COL_Commissioning_BSC2_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\ERIE_Commissioning_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\ERIE_Commissioning_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\ERIE_Commissioning_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\ERIE_Commissioning_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\FW_Commissioning_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\FW_Commissioning_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\FW_Commissioning_BTS_Ending_1_4_7.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\FW_Commissioning_BTS_Ending_1_4_7.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\FW_Commissioning_BTS_Ending_2_5_8.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\FW_Commissioning_BTS_Ending_2_5_8.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\IDAHO_Commissioning_BSC1_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\IDAHO_Commissioning_BSC1_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\IDAHO_Commissioning_BSC1_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\IDAHO_Commissioning_BSC1_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\IDAHO_Commissioning_BSC2_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\IDAHO_Commissioning_BSC2_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\IDAHO_Commissioning_BSC2_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\IDAHO_Commissioning_BSC2_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\IND_Commissioning_BTS_0_3_6_9.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\IND_Commissioning_BTS_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\IND_Commissioning_BTS_1_4_7.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\IND_Commissioning_BTS_1_4_7.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\IND_Commissioning_BTS_2_5_8.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\IND_Commissioning_BTS_2_5_8.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\IOWA_URBANDALE_Commissioning.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\IOWA_URBANDALE_Commissioning.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Detroit_BSC1_Rev1_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Detroit_BSC1_Rev1_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Detroit_BSC1_Rev1_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Detroit_BSC1_Rev1_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Detroit_BSC1_Rev1_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Detroit_BSC1_Rev1_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Detroit_BSC2_Rev1_BTS_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Detroit_BSC2_Rev1_BTS_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Detroit_BSC2_Rev1_BTS_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Detroit_BSC2_Rev1_BTS_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Kentwood_Rev1_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Kentwood_Rev1_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Kentwood_Rev1_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Kentwood_Rev1_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Kentwood_Rev1_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Kentwood_Rev1_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC1_Rev1_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC1_Rev1_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC1_Rev1_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC1_Rev1_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC1_Rev1_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC1_Rev1_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC2_Rev1_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC2_Rev1_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC2_Rev1_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC2_Rev1_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC2_Rev1_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC2_Rev1_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\MN_Commissioning_BSC1_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\MN_Commissioning_BSC1_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\MN_Commissioning_BSC1_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\MN_Commissioning_BSC1_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\MN_Commissioning_BSC2_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\MN_Commissioning_BSC2_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\MN_Commissioning_BSC2_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\MN_Commissioning_BSC2_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\NewBerlin_Commissioning_BSC1_0_3_6_9.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\NewBerlin_Commissioning_BSC1_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\NewBerlin_Commissioning_BSC1_1_4_7.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\NewBerlin_Commissioning_BSC1_1_4_7.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\NewBerlin_Commissioning_BSC1_2_5_8.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\NewBerlin_Commissioning_BSC1_2_5_8.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\NewBerlin_Commissioning_BSC2_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\NewBerlin_Commissioning_BSC2_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\NewBerlin_Commissioning_BSC2_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\NewBerlin_Commissioning_BSC2_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Cleveland_Rev1_BTS_Ending_0-3-6-9_20130511.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Cleveland_Rev1_BTS_Ending_0-3-6-9_20130511.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Cleveland_Rev1_BTS_Ending_1-4-7_20130511.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Cleveland_Rev1_BTS_Ending_1-4-7_20130511.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Cleveland_Rev1_BTS_Ending_2-5-8_20130511.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Cleveland_Rev1_BTS_Ending_2-5-8_20130511.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Sharonville_Rev1_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Sharonville_Rev1_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Sharonville_Rev1_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Sharonville_Rev1_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Sharonville_Rev1_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Sharonville_Rev1_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Worthington_Rev1_BTS_Ending_0-3-6-9_20130511.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Worthington_Rev1_BTS_Ending_0-3-6-9_20130511.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Worthington_Rev1_BTS_Ending_1-4-7_20130511.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Worthington_Rev1_BTS_Ending_1-4-7_20130511.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Worthington_Rev1_BTS_Ending_2-5-8_20130511.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Worthington_Rev1_BTS_Ending_2-5-8_20130511.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Omaha_Commissioning_0_3_6_9.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Omaha_Commissioning_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Omaha_Commissioning_1_4_7.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Omaha_Commissioning_1_4_7.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Omaha_Commissioning_2_5_8.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Omaha_Commissioning_2_5_8.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Pittsburgh_Commissioning_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Pittsburgh_Commissioning_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Pittsburgh_Commissioning_odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Pittsburgh_Commissioning_odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Redmond_BSC1_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Redmond_BSC1_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Redmond_BSC1_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Redmond_BSC1_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Redmond_BSC2_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Redmond_BSC2_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Redmond_BSC2_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Redmond_BSC2_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Spokane_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Spokane_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Spokane_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Spokane_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Tigard_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Tigard_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Tigard_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Tigard_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Tigard_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Tigard_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PRVI_Commissioning_EVEN.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PRVI_Commissioning_EVEN.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PRVI_Commissioning_ODD.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PRVI_Commissioning_ODD.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PR_OUTDOOR_BATCH_RELEASE.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PR_OUTDOOR_BATCH_RELEASE.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PR_OUTDOOR_BATCH_SET.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PR_OUTDOOR_BATCH_SET.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PR_UDA_INDOOR_BATCH_RELEASE.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PR_UDA_INDOOR_BATCH_RELEASE.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PR_UDA_INDOOR_BATCH_SET.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\PR_UDA_INDOOR_BATCH_SET.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Reno_Commissioning_EVEN.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Reno_Commissioning_EVEN.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Reno_Commissioning_ODD.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\Reno_Commissioning_ODD.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\ROCHESTER_Commissioning.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\ROCHESTER_Commissioning.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Brisbane_Rev1_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Brisbane_Rev1_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Brisbane_Rev1_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Brisbane_Rev1_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Fresno_0_3_6_9.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Fresno_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Fresno_1_4_7.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Fresno_1_4_7.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Fresno_2_5_8.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Fresno_2_5_8.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Oakland_Rev1_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Oakland_Rev1_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Oakland_Rev1_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Oakland_Rev1_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sacramento_EVEN.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sacramento_EVEN.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sacramento_ODD.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sacramento_ODD.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sta_Clara_Rev2_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sta_Clara_Rev2_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sta_Clara_Rev2_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sta_Clara_Rev2_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sta_Rosa_Rev1_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sta_Rosa_Rev1_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sta_Rosa_Rev1_ODD.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sta_Rosa_Rev1_ODD.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\StCloud_Commissioning_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\StCloud_Commissioning_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\StCloud_Commissioning_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\StCloud_Commissioning_Odd.batch"`;                  
 } 

if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\UDA_SET_BSM3.0.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\UDA_SET_BSM3.0.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\UTAH_Commissioning_saltlake_BSC1_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\UTAH_Commissioning_saltlake_BSC1_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\UTAH_Commissioning_saltlake_BSC1_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\UTAH_Commissioning_saltlake_BSC1_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\UTAH_Commissioning_saltlake_BSC2_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\UTAH_Commissioning_saltlake_BSC2_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\UTAH_Commissioning_saltlake_BSC2_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\UTAH_Commissioning_saltlake_BSC2_Odd.batch"`;                  
 } 



if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AH1_Even.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AH1_Even.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHEEKTOWAGA_BUFFALO_Commissioning.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHEEKTOWAGA_BUFFALO_Commissioning.batch"`;                  
 }
 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AH1_Even.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AH1_Even.batch"`;                  
 } 
if (-e "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHEEKTOWAGA_BUFFALO_Commissioning.batch"){
      `DEL "C:\\Program Files (x86)\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHEEKTOWAGA_BUFFALO_Commissioning.batch"`;                  
 }

if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AH1_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AH1_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHEEKTOWAGA_BUFFALO_Commissioning.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHEEKTOWAGA_BUFFALO_Commissioning.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AH1_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AH1_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHEEKTOWAGA_BUFFALO_Commissioning.batch"){
      `DEL "C:\\Program Files\\Remote_BSM300_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHEEKTOWAGA_BUFFALO_Commissioning.batch"`;                  
 }     
   	
	
	#-----------------------------
	
	
  if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_AH1_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_AH1_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_AH2_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_AH2_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_AH2_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_AH2_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_AUR_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_AUR_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_AUR_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_AUR_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_AUR_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_AUR_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_BV1_0_3_6_9.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_BV1_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_BV1_1_4_7.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_BV1_1_4_7.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_BV1_2_5_8.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_BV1_2_5_8.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_BV2_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_BV2_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_BV2_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_BV2_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_Dav_0_3_6_9.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_Dav_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_Dav_1_4_7.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_Dav_1_4_7.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_Dav_2_5_8.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_Dav_2_5_8.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\COL_Commissioning_BSC1_0_3_6_9.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\COL_Commissioning_BSC1_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\COL_Commissioning_BSC1_1_4_7.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\COL_Commissioning_BSC1_1_4_7.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\COL_Commissioning_BSC1_2_5_8.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\COL_Commissioning_BSC1_2_5_8.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\COL_Commissioning_BSC2_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\COL_Commissioning_BSC2_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\COL_Commissioning_BSC2_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\COL_Commissioning_BSC2_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\ERIE_Commissioning_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\ERIE_Commissioning_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\ERIE_Commissioning_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\ERIE_Commissioning_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\FW_Commissioning_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\FW_Commissioning_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\FW_Commissioning_BTS_Ending_1_4_7.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\FW_Commissioning_BTS_Ending_1_4_7.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\FW_Commissioning_BTS_Ending_2_5_8.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\FW_Commissioning_BTS_Ending_2_5_8.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\IDAHO_Commissioning_BSC1_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\IDAHO_Commissioning_BSC1_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\IDAHO_Commissioning_BSC1_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\IDAHO_Commissioning_BSC1_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\IDAHO_Commissioning_BSC2_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\IDAHO_Commissioning_BSC2_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\IDAHO_Commissioning_BSC2_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\IDAHO_Commissioning_BSC2_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\IND_Commissioning_BTS_0_3_6_9.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\IND_Commissioning_BTS_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\IND_Commissioning_BTS_1_4_7.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\IND_Commissioning_BTS_1_4_7.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\IND_Commissioning_BTS_2_5_8.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\IND_Commissioning_BTS_2_5_8.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\IOWA_URBANDALE_Commissioning.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\IOWA_URBANDALE_Commissioning.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Detroit_BSC1_Rev1_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Detroit_BSC1_Rev1_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Detroit_BSC1_Rev1_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Detroit_BSC1_Rev1_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Detroit_BSC1_Rev1_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Detroit_BSC1_Rev1_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Detroit_BSC2_Rev1_BTS_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Detroit_BSC2_Rev1_BTS_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Detroit_BSC2_Rev1_BTS_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Detroit_BSC2_Rev1_BTS_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Kentwood_Rev1_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Kentwood_Rev1_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Kentwood_Rev1_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Kentwood_Rev1_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Kentwood_Rev1_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Kentwood_Rev1_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Lansing_BSC1_Rev1_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Lansing_BSC1_Rev1_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Lansing_BSC1_Rev1_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Lansing_BSC1_Rev1_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Lansing_BSC1_Rev1_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Lansing_BSC1_Rev1_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Lansing_BSC2_Rev1_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Lansing_BSC2_Rev1_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Lansing_BSC2_Rev1_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Lansing_BSC2_Rev1_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Lansing_BSC2_Rev1_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Lansing_BSC2_Rev1_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\MN_Commissioning_BSC1_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\MN_Commissioning_BSC1_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\MN_Commissioning_BSC1_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\MN_Commissioning_BSC1_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\MN_Commissioning_BSC2_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\MN_Commissioning_BSC2_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\MN_Commissioning_BSC2_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\MN_Commissioning_BSC2_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\NewBerlin_Commissioning_BSC1_0_3_6_9.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\NewBerlin_Commissioning_BSC1_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\NewBerlin_Commissioning_BSC1_1_4_7.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\NewBerlin_Commissioning_BSC1_1_4_7.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\NewBerlin_Commissioning_BSC1_2_5_8.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\NewBerlin_Commissioning_BSC1_2_5_8.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\NewBerlin_Commissioning_BSC2_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\NewBerlin_Commissioning_BSC2_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\NewBerlin_Commissioning_BSC2_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\NewBerlin_Commissioning_BSC2_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Cleveland_Rev1_BTS_Ending_0-3-6-9_20130511.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Cleveland_Rev1_BTS_Ending_0-3-6-9_20130511.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Cleveland_Rev1_BTS_Ending_1-4-7_20130511.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Cleveland_Rev1_BTS_Ending_1-4-7_20130511.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Cleveland_Rev1_BTS_Ending_2-5-8_20130511.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Cleveland_Rev1_BTS_Ending_2-5-8_20130511.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Sharonville_Rev1_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Sharonville_Rev1_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Sharonville_Rev1_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Sharonville_Rev1_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Sharonville_Rev1_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Sharonville_Rev1_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Worthington_Rev1_BTS_Ending_0-3-6-9_20130511.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Worthington_Rev1_BTS_Ending_0-3-6-9_20130511.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Worthington_Rev1_BTS_Ending_1-4-7_20130511.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Worthington_Rev1_BTS_Ending_1-4-7_20130511.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Worthington_Rev1_BTS_Ending_2-5-8_20130511.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Worthington_Rev1_BTS_Ending_2-5-8_20130511.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Omaha_Commissioning_0_3_6_9.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Omaha_Commissioning_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Omaha_Commissioning_1_4_7.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Omaha_Commissioning_1_4_7.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Omaha_Commissioning_2_5_8.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Omaha_Commissioning_2_5_8.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Pittsburgh_Commissioning_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Pittsburgh_Commissioning_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Pittsburgh_Commissioning_odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Pittsburgh_Commissioning_odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Redmond_BSC1_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Redmond_BSC1_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Redmond_BSC1_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Redmond_BSC1_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Redmond_BSC2_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Redmond_BSC2_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Redmond_BSC2_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Redmond_BSC2_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Spokane_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Spokane_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Spokane_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Spokane_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Tigard_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Tigard_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Tigard_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Tigard_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Tigard_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Tigard_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PRVI_Commissioning_EVEN.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PRVI_Commissioning_EVEN.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PRVI_Commissioning_ODD.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PRVI_Commissioning_ODD.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PR_OUTDOOR_BATCH_RELEASE.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PR_OUTDOOR_BATCH_RELEASE.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PR_OUTDOOR_BATCH_SET.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PR_OUTDOOR_BATCH_SET.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PR_UDA_INDOOR_BATCH_RELEASE.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PR_UDA_INDOOR_BATCH_RELEASE.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PR_UDA_INDOOR_BATCH_SET.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PR_UDA_INDOOR_BATCH_SET.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Reno_Commissioning_EVEN.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Reno_Commissioning_EVEN.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Reno_Commissioning_ODD.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Reno_Commissioning_ODD.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\ROCHESTER_Commissioning.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\ROCHESTER_Commissioning.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Brisbane_Rev1_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Brisbane_Rev1_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Brisbane_Rev1_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Brisbane_Rev1_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Fresno_0_3_6_9.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Fresno_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Fresno_1_4_7.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Fresno_1_4_7.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Fresno_2_5_8.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Fresno_2_5_8.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Oakland_Rev1_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Oakland_Rev1_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Oakland_Rev1_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Oakland_Rev1_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Sacramento_EVEN.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Sacramento_EVEN.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Sacramento_ODD.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Sacramento_ODD.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Sta_Clara_Rev2_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Sta_Clara_Rev2_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Sta_Clara_Rev2_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Sta_Clara_Rev2_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Sta_Rosa_Rev1_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Sta_Rosa_Rev1_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Sta_Rosa_Rev1_ODD.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Sta_Rosa_Rev1_ODD.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\StCloud_Commissioning_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\StCloud_Commissioning_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\StCloud_Commissioning_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\StCloud_Commissioning_Odd.batch"`;                  
 } 

if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\UDA_SET_BSM3.0.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\UDA_SET_BSM3.0.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\UTAH_Commissioning_saltlake_BSC1_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\UTAH_Commissioning_saltlake_BSC1_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\UTAH_Commissioning_saltlake_BSC1_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\UTAH_Commissioning_saltlake_BSC1_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\UTAH_Commissioning_saltlake_BSC2_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\UTAH_Commissioning_saltlake_BSC2_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\UTAH_Commissioning_saltlake_BSC2_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\UTAH_Commissioning_saltlake_BSC2_Odd.batch"`;                  
 } 


  if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_AH1_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_AH1_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_AH2_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_AH2_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_AH2_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_AH2_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_AUR_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_AUR_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_AUR_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_AUR_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_AUR_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_AUR_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_BV1_0_3_6_9.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_BV1_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_BV1_1_4_7.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_BV1_1_4_7.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_BV1_2_5_8.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_BV1_2_5_8.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_BV2_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_BV2_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_BV2_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_BV2_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_Dav_0_3_6_9.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_Dav_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_Dav_1_4_7.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_Dav_1_4_7.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_Dav_2_5_8.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_Dav_2_5_8.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\COL_Commissioning_BSC1_0_3_6_9.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\COL_Commissioning_BSC1_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\COL_Commissioning_BSC1_1_4_7.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\COL_Commissioning_BSC1_1_4_7.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\COL_Commissioning_BSC1_2_5_8.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\COL_Commissioning_BSC1_2_5_8.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\COL_Commissioning_BSC2_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\COL_Commissioning_BSC2_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\COL_Commissioning_BSC2_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\COL_Commissioning_BSC2_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\ERIE_Commissioning_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\ERIE_Commissioning_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\ERIE_Commissioning_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\ERIE_Commissioning_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\FW_Commissioning_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\FW_Commissioning_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\FW_Commissioning_BTS_Ending_1_4_7.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\FW_Commissioning_BTS_Ending_1_4_7.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\FW_Commissioning_BTS_Ending_2_5_8.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\FW_Commissioning_BTS_Ending_2_5_8.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\IDAHO_Commissioning_BSC1_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\IDAHO_Commissioning_BSC1_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\IDAHO_Commissioning_BSC1_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\IDAHO_Commissioning_BSC1_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\IDAHO_Commissioning_BSC2_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\IDAHO_Commissioning_BSC2_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\IDAHO_Commissioning_BSC2_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\IDAHO_Commissioning_BSC2_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\IND_Commissioning_BTS_0_3_6_9.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\IND_Commissioning_BTS_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\IND_Commissioning_BTS_1_4_7.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\IND_Commissioning_BTS_1_4_7.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\IND_Commissioning_BTS_2_5_8.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\IND_Commissioning_BTS_2_5_8.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\IOWA_URBANDALE_Commissioning.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\IOWA_URBANDALE_Commissioning.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Detroit_BSC1_Rev1_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Detroit_BSC1_Rev1_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Detroit_BSC1_Rev1_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Detroit_BSC1_Rev1_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Detroit_BSC1_Rev1_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Detroit_BSC1_Rev1_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Detroit_BSC2_Rev1_BTS_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Detroit_BSC2_Rev1_BTS_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Detroit_BSC2_Rev1_BTS_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Detroit_BSC2_Rev1_BTS_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Kentwood_Rev1_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Kentwood_Rev1_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Kentwood_Rev1_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Kentwood_Rev1_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Kentwood_Rev1_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Kentwood_Rev1_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Lansing_BSC1_Rev1_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Lansing_BSC1_Rev1_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Lansing_BSC1_Rev1_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Lansing_BSC1_Rev1_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Lansing_BSC1_Rev1_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Lansing_BSC1_Rev1_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Lansing_BSC2_Rev1_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Lansing_BSC2_Rev1_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Lansing_BSC2_Rev1_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Lansing_BSC2_Rev1_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Lansing_BSC2_Rev1_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Lansing_BSC2_Rev1_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\MN_Commissioning_BSC1_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\MN_Commissioning_BSC1_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\MN_Commissioning_BSC1_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\MN_Commissioning_BSC1_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\MN_Commissioning_BSC2_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\MN_Commissioning_BSC2_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\MN_Commissioning_BSC2_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\MN_Commissioning_BSC2_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\NewBerlin_Commissioning_BSC1_0_3_6_9.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\NewBerlin_Commissioning_BSC1_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\NewBerlin_Commissioning_BSC1_1_4_7.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\NewBerlin_Commissioning_BSC1_1_4_7.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\NewBerlin_Commissioning_BSC1_2_5_8.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\NewBerlin_Commissioning_BSC1_2_5_8.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\NewBerlin_Commissioning_BSC2_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\NewBerlin_Commissioning_BSC2_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\NewBerlin_Commissioning_BSC2_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\NewBerlin_Commissioning_BSC2_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Cleveland_Rev1_BTS_Ending_0-3-6-9_20130511.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Cleveland_Rev1_BTS_Ending_0-3-6-9_20130511.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Cleveland_Rev1_BTS_Ending_1-4-7_20130511.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Cleveland_Rev1_BTS_Ending_1-4-7_20130511.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Cleveland_Rev1_BTS_Ending_2-5-8_20130511.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Cleveland_Rev1_BTS_Ending_2-5-8_20130511.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Sharonville_Rev1_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Sharonville_Rev1_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Sharonville_Rev1_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Sharonville_Rev1_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Sharonville_Rev1_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Sharonville_Rev1_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Worthington_Rev1_BTS_Ending_0-3-6-9_20130511.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Worthington_Rev1_BTS_Ending_0-3-6-9_20130511.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Worthington_Rev1_BTS_Ending_1-4-7_20130511.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Worthington_Rev1_BTS_Ending_1-4-7_20130511.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Worthington_Rev1_BTS_Ending_2-5-8_20130511.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Worthington_Rev1_BTS_Ending_2-5-8_20130511.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Omaha_Commissioning_0_3_6_9.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Omaha_Commissioning_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Omaha_Commissioning_1_4_7.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Omaha_Commissioning_1_4_7.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Omaha_Commissioning_2_5_8.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Omaha_Commissioning_2_5_8.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Pittsburgh_Commissioning_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Pittsburgh_Commissioning_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Pittsburgh_Commissioning_odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Pittsburgh_Commissioning_odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Redmond_BSC1_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Redmond_BSC1_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Redmond_BSC1_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Redmond_BSC1_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Redmond_BSC2_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Redmond_BSC2_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Redmond_BSC2_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Redmond_BSC2_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Spokane_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Spokane_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Spokane_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Spokane_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Tigard_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Tigard_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Tigard_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Tigard_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Tigard_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Tigard_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PRVI_Commissioning_EVEN.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PRVI_Commissioning_EVEN.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PRVI_Commissioning_ODD.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PRVI_Commissioning_ODD.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PR_OUTDOOR_BATCH_RELEASE.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PR_OUTDOOR_BATCH_RELEASE.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PR_OUTDOOR_BATCH_SET.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PR_OUTDOOR_BATCH_SET.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PR_UDA_INDOOR_BATCH_RELEASE.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PR_UDA_INDOOR_BATCH_RELEASE.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PR_UDA_INDOOR_BATCH_SET.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PR_UDA_INDOOR_BATCH_SET.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Reno_Commissioning_EVEN.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Reno_Commissioning_EVEN.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Reno_Commissioning_ODD.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Reno_Commissioning_ODD.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\ROCHESTER_Commissioning.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\ROCHESTER_Commissioning.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Brisbane_Rev1_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Brisbane_Rev1_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Brisbane_Rev1_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Brisbane_Rev1_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Fresno_0_3_6_9.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Fresno_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Fresno_1_4_7.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Fresno_1_4_7.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Fresno_2_5_8.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Fresno_2_5_8.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Oakland_Rev1_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Oakland_Rev1_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Oakland_Rev1_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Oakland_Rev1_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Sacramento_EVEN.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Sacramento_EVEN.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Sacramento_ODD.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Sacramento_ODD.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Sta_Clara_Rev2_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Sta_Clara_Rev2_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Sta_Clara_Rev2_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Sta_Clara_Rev2_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Sta_Rosa_Rev1_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Sta_Rosa_Rev1_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Sta_Rosa_Rev1_ODD.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Sta_Rosa_Rev1_ODD.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\StCloud_Commissioning_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\StCloud_Commissioning_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\StCloud_Commissioning_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\StCloud_Commissioning_Odd.batch"`;                  
 } 

if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\UDA_SET_BSM3.0.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\UDA_SET_BSM3.0.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\UTAH_Commissioning_saltlake_BSC1_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\UTAH_Commissioning_saltlake_BSC1_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\UTAH_Commissioning_saltlake_BSC1_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\UTAH_Commissioning_saltlake_BSC1_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\UTAH_Commissioning_saltlake_BSC2_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\UTAH_Commissioning_saltlake_BSC2_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\UTAH_Commissioning_saltlake_BSC2_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\UTAH_Commissioning_saltlake_BSC2_Odd.batch"`;                  
 } 

if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AH1_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AH1_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AH2_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AH2_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AH2_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AH2_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AUR_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AUR_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AUR_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AUR_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AUR_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AUR_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_BV1_0_3_6_9.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_BV1_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_BV1_1_4_7.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_BV1_1_4_7.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_BV1_2_5_8.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_BV1_2_5_8.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_BV2_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_BV2_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_BV2_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_BV2_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_Dav_0_3_6_9.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_Dav_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_Dav_1_4_7.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_Dav_1_4_7.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_Dav_2_5_8.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_Dav_2_5_8.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\COL_Commissioning_BSC1_0_3_6_9.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\COL_Commissioning_BSC1_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\COL_Commissioning_BSC1_1_4_7.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\COL_Commissioning_BSC1_1_4_7.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\COL_Commissioning_BSC1_2_5_8.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\COL_Commissioning_BSC1_2_5_8.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\COL_Commissioning_BSC2_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\COL_Commissioning_BSC2_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\COL_Commissioning_BSC2_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\COL_Commissioning_BSC2_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\ERIE_Commissioning_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\ERIE_Commissioning_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\ERIE_Commissioning_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\ERIE_Commissioning_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\FW_Commissioning_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\FW_Commissioning_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\FW_Commissioning_BTS_Ending_1_4_7.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\FW_Commissioning_BTS_Ending_1_4_7.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\FW_Commissioning_BTS_Ending_2_5_8.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\FW_Commissioning_BTS_Ending_2_5_8.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\IDAHO_Commissioning_BSC1_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\IDAHO_Commissioning_BSC1_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\IDAHO_Commissioning_BSC1_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\IDAHO_Commissioning_BSC1_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\IDAHO_Commissioning_BSC2_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\IDAHO_Commissioning_BSC2_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\IDAHO_Commissioning_BSC2_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\IDAHO_Commissioning_BSC2_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\IND_Commissioning_BTS_0_3_6_9.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\IND_Commissioning_BTS_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\IND_Commissioning_BTS_1_4_7.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\IND_Commissioning_BTS_1_4_7.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\IND_Commissioning_BTS_2_5_8.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\IND_Commissioning_BTS_2_5_8.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\IOWA_URBANDALE_Commissioning.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\IOWA_URBANDALE_Commissioning.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Detroit_BSC1_Rev1_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Detroit_BSC1_Rev1_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Detroit_BSC1_Rev1_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Detroit_BSC1_Rev1_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Detroit_BSC1_Rev1_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Detroit_BSC1_Rev1_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Detroit_BSC2_Rev1_BTS_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Detroit_BSC2_Rev1_BTS_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Detroit_BSC2_Rev1_BTS_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Detroit_BSC2_Rev1_BTS_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Kentwood_Rev1_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Kentwood_Rev1_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Kentwood_Rev1_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Kentwood_Rev1_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Kentwood_Rev1_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Kentwood_Rev1_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC1_Rev1_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC1_Rev1_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC1_Rev1_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC1_Rev1_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC1_Rev1_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC1_Rev1_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC2_Rev1_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC2_Rev1_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC2_Rev1_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC2_Rev1_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC2_Rev1_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Michigan_Commissioning_Lansing_BSC2_Rev1_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\MN_Commissioning_BSC1_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\MN_Commissioning_BSC1_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\MN_Commissioning_BSC1_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\MN_Commissioning_BSC1_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\MN_Commissioning_BSC2_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\MN_Commissioning_BSC2_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\MN_Commissioning_BSC2_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\MN_Commissioning_BSC2_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\NewBerlin_Commissioning_BSC1_0_3_6_9.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\NewBerlin_Commissioning_BSC1_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\NewBerlin_Commissioning_BSC1_1_4_7.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\NewBerlin_Commissioning_BSC1_1_4_7.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\NewBerlin_Commissioning_BSC1_2_5_8.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\NewBerlin_Commissioning_BSC1_2_5_8.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\NewBerlin_Commissioning_BSC2_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\NewBerlin_Commissioning_BSC2_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\NewBerlin_Commissioning_BSC2_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\NewBerlin_Commissioning_BSC2_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Cleveland_Rev1_BTS_Ending_0-3-6-9_20130511.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Cleveland_Rev1_BTS_Ending_0-3-6-9_20130511.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Cleveland_Rev1_BTS_Ending_1-4-7_20130511.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Cleveland_Rev1_BTS_Ending_1-4-7_20130511.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Cleveland_Rev1_BTS_Ending_2-5-8_20130511.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Cleveland_Rev1_BTS_Ending_2-5-8_20130511.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Sharonville_Rev1_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Sharonville_Rev1_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Sharonville_Rev1_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Sharonville_Rev1_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Sharonville_Rev1_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Sharonville_Rev1_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Worthington_Rev1_BTS_Ending_0-3-6-9_20130511.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Worthington_Rev1_BTS_Ending_0-3-6-9_20130511.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Worthington_Rev1_BTS_Ending_1-4-7_20130511.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Worthington_Rev1_BTS_Ending_1-4-7_20130511.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Worthington_Rev1_BTS_Ending_2-5-8_20130511.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Ohio_Commissioning_Worthington_Rev1_BTS_Ending_2-5-8_20130511.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Omaha_Commissioning_0_3_6_9.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Omaha_Commissioning_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Omaha_Commissioning_1_4_7.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Omaha_Commissioning_1_4_7.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Omaha_Commissioning_2_5_8.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Omaha_Commissioning_2_5_8.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Pittsburgh_Commissioning_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Pittsburgh_Commissioning_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Pittsburgh_Commissioning_odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Pittsburgh_Commissioning_odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Redmond_BSC1_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Redmond_BSC1_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Redmond_BSC1_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Redmond_BSC1_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Redmond_BSC2_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Redmond_BSC2_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Redmond_BSC2_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Redmond_BSC2_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Spokane_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Spokane_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Spokane_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Spokane_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Tigard_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Tigard_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Tigard_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Tigard_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Tigard_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PNW_Commissioning_Tigard_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PRVI_Commissioning_EVEN.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PRVI_Commissioning_EVEN.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PRVI_Commissioning_ODD.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PRVI_Commissioning_ODD.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PR_OUTDOOR_BATCH_RELEASE.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PR_OUTDOOR_BATCH_RELEASE.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PR_OUTDOOR_BATCH_SET.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PR_OUTDOOR_BATCH_SET.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PR_UDA_INDOOR_BATCH_RELEASE.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PR_UDA_INDOOR_BATCH_RELEASE.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PR_UDA_INDOOR_BATCH_SET.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\PR_UDA_INDOOR_BATCH_SET.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Reno_Commissioning_EVEN.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Reno_Commissioning_EVEN.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Reno_Commissioning_ODD.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\Reno_Commissioning_ODD.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\ROCHESTER_Commissioning.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\ROCHESTER_Commissioning.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Brisbane_Rev1_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Brisbane_Rev1_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Brisbane_Rev1_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Brisbane_Rev1_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Fresno_0_3_6_9.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Fresno_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Fresno_1_4_7.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Fresno_1_4_7.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Fresno_2_5_8.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Fresno_2_5_8.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Oakland_Rev1_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Oakland_Rev1_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Oakland_Rev1_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Oakland_Rev1_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sacramento_EVEN.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sacramento_EVEN.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sacramento_ODD.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sacramento_ODD.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sta_Clara_Rev2_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sta_Clara_Rev2_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sta_Clara_Rev2_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sta_Clara_Rev2_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sta_Rosa_Rev1_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sta_Rosa_Rev1_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sta_Rosa_Rev1_ODD.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\SF_Commissioning_Sta_Rosa_Rev1_ODD.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\StCloud_Commissioning_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\StCloud_Commissioning_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\StCloud_Commissioning_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\StCloud_Commissioning_Odd.batch"`;                  
 } 

if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\UDA_SET_BSM3.0.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\UDA_SET_BSM3.0.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\UTAH_Commissioning_saltlake_BSC1_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\UTAH_Commissioning_saltlake_BSC1_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\UTAH_Commissioning_saltlake_BSC1_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\UTAH_Commissioning_saltlake_BSC1_Odd.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\UTAH_Commissioning_saltlake_BSC2_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\UTAH_Commissioning_saltlake_BSC2_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\UTAH_Commissioning_saltlake_BSC2_Odd.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\UTAH_Commissioning_saltlake_BSC2_Odd.batch"`;                  
 } 
 if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_AH1_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_AH1_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_AH2_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_AH2_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_AH2_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_AH2_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_AUR_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_AUR_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_AUR_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_AUR_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_AUR_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_AUR_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_BV1_0_3_6_9.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_BV1_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_BV1_1_4_7.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_BV1_1_4_7.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_BV1_2_5_8.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_BV1_2_5_8.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_BV2_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_BV2_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_BV2_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_BV2_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_Dav_0_3_6_9.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_Dav_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_Dav_1_4_7.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_Dav_1_4_7.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_Dav_2_5_8.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_Dav_2_5_8.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\COL_Commissioning_BSC1_0_3_6_9.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\COL_Commissioning_BSC1_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\COL_Commissioning_BSC1_1_4_7.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\COL_Commissioning_BSC1_1_4_7.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\COL_Commissioning_BSC1_2_5_8.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\COL_Commissioning_BSC1_2_5_8.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\COL_Commissioning_BSC2_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\COL_Commissioning_BSC2_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\COL_Commissioning_BSC2_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\COL_Commissioning_BSC2_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\ERIE_Commissioning_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\ERIE_Commissioning_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\ERIE_Commissioning_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\ERIE_Commissioning_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\FW_Commissioning_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\FW_Commissioning_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\FW_Commissioning_BTS_Ending_1_4_7.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\FW_Commissioning_BTS_Ending_1_4_7.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\FW_Commissioning_BTS_Ending_2_5_8.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\FW_Commissioning_BTS_Ending_2_5_8.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\IDAHO_Commissioning_BSC1_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\IDAHO_Commissioning_BSC1_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\IDAHO_Commissioning_BSC1_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\IDAHO_Commissioning_BSC1_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\IDAHO_Commissioning_BSC2_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\IDAHO_Commissioning_BSC2_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\IDAHO_Commissioning_BSC2_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\IDAHO_Commissioning_BSC2_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\IND_Commissioning_BTS_0_3_6_9.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\IND_Commissioning_BTS_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\IND_Commissioning_BTS_1_4_7.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\IND_Commissioning_BTS_1_4_7.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\IND_Commissioning_BTS_2_5_8.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\IND_Commissioning_BTS_2_5_8.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\IOWA_URBANDALE_Commissioning.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\IOWA_URBANDALE_Commissioning.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Detroit_BSC1_Rev1_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Detroit_BSC1_Rev1_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Detroit_BSC1_Rev1_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Detroit_BSC1_Rev1_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Detroit_BSC1_Rev1_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Detroit_BSC1_Rev1_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Detroit_BSC2_Rev1_BTS_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Detroit_BSC2_Rev1_BTS_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Detroit_BSC2_Rev1_BTS_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Detroit_BSC2_Rev1_BTS_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Kentwood_Rev1_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Kentwood_Rev1_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Kentwood_Rev1_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Kentwood_Rev1_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Kentwood_Rev1_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Kentwood_Rev1_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Lansing_BSC1_Rev1_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Lansing_BSC1_Rev1_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Lansing_BSC1_Rev1_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Lansing_BSC1_Rev1_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Lansing_BSC1_Rev1_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Lansing_BSC1_Rev1_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Lansing_BSC2_Rev1_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Lansing_BSC2_Rev1_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Lansing_BSC2_Rev1_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Lansing_BSC2_Rev1_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Lansing_BSC2_Rev1_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Lansing_BSC2_Rev1_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\MN_Commissioning_BSC1_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\MN_Commissioning_BSC1_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\MN_Commissioning_BSC1_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\MN_Commissioning_BSC1_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\MN_Commissioning_BSC2_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\MN_Commissioning_BSC2_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\MN_Commissioning_BSC2_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\MN_Commissioning_BSC2_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\NewBerlin_Commissioning_BSC1_0_3_6_9.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\NewBerlin_Commissioning_BSC1_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\NewBerlin_Commissioning_BSC1_1_4_7.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\NewBerlin_Commissioning_BSC1_1_4_7.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\NewBerlin_Commissioning_BSC1_2_5_8.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\NewBerlin_Commissioning_BSC1_2_5_8.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\NewBerlin_Commissioning_BSC2_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\NewBerlin_Commissioning_BSC2_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\NewBerlin_Commissioning_BSC2_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\NewBerlin_Commissioning_BSC2_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Cleveland_Rev1_BTS_Ending_0-3-6-9_20130511.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Cleveland_Rev1_BTS_Ending_0-3-6-9_20130511.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Cleveland_Rev1_BTS_Ending_1-4-7_20130511.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Cleveland_Rev1_BTS_Ending_1-4-7_20130511.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Cleveland_Rev1_BTS_Ending_2-5-8_20130511.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Cleveland_Rev1_BTS_Ending_2-5-8_20130511.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Sharonville_Rev1_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Sharonville_Rev1_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Sharonville_Rev1_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Sharonville_Rev1_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Sharonville_Rev1_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Sharonville_Rev1_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Worthington_Rev1_BTS_Ending_0-3-6-9_20130511.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Worthington_Rev1_BTS_Ending_0-3-6-9_20130511.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Worthington_Rev1_BTS_Ending_1-4-7_20130511.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Worthington_Rev1_BTS_Ending_1-4-7_20130511.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Worthington_Rev1_BTS_Ending_2-5-8_20130511.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Ohio_Commissioning_Worthington_Rev1_BTS_Ending_2-5-8_20130511.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Omaha_Commissioning_0_3_6_9.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Omaha_Commissioning_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Omaha_Commissioning_1_4_7.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Omaha_Commissioning_1_4_7.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Omaha_Commissioning_2_5_8.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Omaha_Commissioning_2_5_8.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Pittsburgh_Commissioning_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Pittsburgh_Commissioning_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Pittsburgh_Commissioning_odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Pittsburgh_Commissioning_odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Redmond_BSC1_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Redmond_BSC1_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Redmond_BSC1_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Redmond_BSC1_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Redmond_BSC2_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Redmond_BSC2_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Redmond_BSC2_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Redmond_BSC2_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Spokane_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Spokane_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Spokane_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Spokane_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Tigard_BTS_Ending_0-3-6-9.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Tigard_BTS_Ending_0-3-6-9.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Tigard_BTS_Ending_1-4-7.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Tigard_BTS_Ending_1-4-7.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Tigard_BTS_Ending_2-5-8.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PNW_Commissioning_Tigard_BTS_Ending_2-5-8.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PRVI_Commissioning_EVEN.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PRVI_Commissioning_EVEN.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PRVI_Commissioning_ODD.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PRVI_Commissioning_ODD.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PR_OUTDOOR_BATCH_RELEASE.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PR_OUTDOOR_BATCH_RELEASE.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PR_OUTDOOR_BATCH_SET.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PR_OUTDOOR_BATCH_SET.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PR_UDA_INDOOR_BATCH_RELEASE.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PR_UDA_INDOOR_BATCH_RELEASE.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PR_UDA_INDOOR_BATCH_SET.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\PR_UDA_INDOOR_BATCH_SET.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Reno_Commissioning_EVEN.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Reno_Commissioning_EVEN.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Reno_Commissioning_ODD.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Reno_Commissioning_ODD.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\ROCHESTER_Commissioning.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\ROCHESTER_Commissioning.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Brisbane_Rev1_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Brisbane_Rev1_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Brisbane_Rev1_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Brisbane_Rev1_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Fresno_0_3_6_9.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Fresno_0_3_6_9.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Fresno_1_4_7.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Fresno_1_4_7.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Fresno_2_5_8.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Fresno_2_5_8.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Oakland_Rev1_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Oakland_Rev1_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Oakland_Rev1_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Oakland_Rev1_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Sacramento_EVEN.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Sacramento_EVEN.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Sacramento_ODD.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Sacramento_ODD.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Sta_Clara_Rev2_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Sta_Clara_Rev2_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Sta_Clara_Rev2_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Sta_Clara_Rev2_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Sta_Rosa_Rev1_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Sta_Rosa_Rev1_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Sta_Rosa_Rev1_ODD.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\SF_Commissioning_Sta_Rosa_Rev1_ODD.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\StCloud_Commissioning_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\StCloud_Commissioning_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\StCloud_Commissioning_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\StCloud_Commissioning_Odd.batch"`;                  
 } 

if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\UDA_SET_BSM3.0.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\UDA_SET_BSM3.0.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\UTAH_Commissioning_saltlake_BSC1_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\UTAH_Commissioning_saltlake_BSC1_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\UTAH_Commissioning_saltlake_BSC1_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\UTAH_Commissioning_saltlake_BSC1_Odd.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\UTAH_Commissioning_saltlake_BSC2_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\UTAH_Commissioning_saltlake_BSC2_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\UTAH_Commissioning_saltlake_BSC2_Odd.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\UTAH_Commissioning_saltlake_BSC2_Odd.batch"`;                  
 } 



if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_AH1_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_AH1_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHEEKTOWAGA_BUFFALO_Commissioning.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHEEKTOWAGA_BUFFALO_Commissioning.batch"`;                  
 }
 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_AH1_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_AH1_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHEEKTOWAGA_BUFFALO_Commissioning.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHEEKTOWAGA_BUFFALO_Commissioning.batch"`;                  
 }

if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AH1_Even.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHI_Commissioning_AH1_Even.batch"`;                  
 } 
if (-e "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHEEKTOWAGA_BUFFALO_Commissioning.batch"){
      `DEL "C:\\Program Files\\Remote_BSM302_SPRINT\\pkg\\bsmdata\\uim\\batch\\CHEEKTOWAGA_BUFFALO_Commissioning.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_AH1_Even.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHI_Commissioning_AH1_Even.batch"`;                  
 } 
if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHEEKTOWAGA_BUFFALO_Commissioning.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\CHEEKTOWAGA_BUFFALO_Commissioning.batch"`;                  
 }    	
	
	


if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\FA2_BATCH.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\FA2_BATCH.batch"`;                  
 }  
 
 if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\GMR-FB_Conversion_PARA_CORRECTION.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\GMR-FB_Conversion_PARA_CORRECTION.batch"`;                  
 }  
 
 if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Detroit_BSC1_Rev1_P1_S2.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Detroit_BSC1_Rev1_P1_S2.batch"`;                  
 }  
 
 if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Detroit_BSC1_Rev1_P2_S1.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\Michigan_Commissioning_Detroit_BSC1_Rev1_P2_S1.batch"`;                  
 }  
 
 if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\UDA_Release _BSM3.0.batch"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\Orignal_Scripts\\UDA_Release _BSM3.0.batch"`;                  
 }  
 
 	
 if (-e "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\M1_Comm.exe"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\M1_Batch_Files\\M1_Comm.exe"`;                  
 } 

 if (-e "C:\\3G_4G_TOOL_Scripts\\MME_EXEC\\MME.exe"){
      `DEL "C:\\3G_4G_TOOL_Scripts\\MME_EXEC\\MME.exe"`;                  
 } 
}	

		   