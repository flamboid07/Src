use POSIX;
use Win32::OLE qw(in with); 
#use Win32::OLE::Const 'Microsoft Outlook'; 
use Sys::Hostname;
#use Net::FTP;

my ($host,$returnvalue);


$host = hostname;

my($now);
#$now = strftime("%m%d%Y",localtime);
$now = strftime("%Y%m%d",localtime);
my ($finddate);

$find = "true"; #temp allow all
$finddate = "not_expired";

#if (($now < "12302015") || ($now > "01102016")){
if (($now < "20160422") || ($now > "20170829")){
	$finddate = "expired";
	print STDOUT "expired\n";	
					       }
if ($finddate ne "expired"){	



if ($host eq "sysplan"){

#Colin Weir
print STDOUT "true\n";
$find = "true";

			}

if ($host eq "STA109946"){

#eric clark
print STDOUT "true\n";
$find = "true";

			}
if ($host eq "h-frisco-comm04"){

#sasha kanani
print STDOUT "true\n";
$find = "true";

			}
     
if ($host eq "STA116288"){

#Bienvenido Sapida
print STDOUT "true\n";
$find = "true";

  }
 
 
# new 8/29/16
if ($host eq "STA117366"){

#Eric Modrzakowski
print STDOUT "true\n";
$find = "true";

  }
  
  if ($host eq "STA117470"){

#Robert Sherone Motley
print STDOUT "true\n";
$find = "true";

  } 
  if ($host eq "STA117260"){

#Jonathan Crebillo
print STDOUT "true\n";
$find = "true";

  } 
  if ($host eq "STA114412"){

#Carlos J Mendez
print STDOUT "true\n";
$find = "true";

  } 
  if ($host eq "STA117901"){

#Rassamee Wisitsoraat
print STDOUT "true\n";
$find = "true";

  } 
  if ($host eq "STA116291"){

#Maria Salpid 
print STDOUT "true\n";
$find = "true";

  } 
  if ($host eq "4202414"){

#Neil Enorme 
print STDOUT "true\n";
$find = "true";

  } 
  
  # end new 8/29/16
 
  
if ($host eq "STA110417"){

#Upinder
print STDOUT "true\n";
$find = "true";

  }
  

  
if ($host eq "STA106420"){

#Jorge Baez
print STDOUT "true\n";
$find = "true";

  }

  
if ($host eq "STA116778"){

#Asif Taj
print STDOUT "true\n";
$find = "true";

  }
  

if ($host eq "STA103630"){

#Anthony Elue
print STDOUT "true\n";
$find = "true";

  }

  
# if ($host eq "STA112862"){

# #Richard Thomure
# print STDOUT "true\n";
# $find = "true";

  # }
  

if ($host eq "STA108946"){

#sukjung kim
print STDOUT "true\n";
$find = "true";

  }
    
if ($host eq "STA116374"){

#Victor Rohena
print STDOUT "true\n";
$find = "true";

  }
	
if ($host eq "STA116775"){

#Greg Zigila
print STDOUT "true\n";
$find = "true";

  }	
  

if ($host eq "STA116911"){

#Grant Gossett
print STDOUT "true\n";
$find = "true";

  }	
  
  
if ($host eq "STA110430"){

#Koroush Lotfazar
print STDOUT "true\n";
$find = "true";

  }	
  
  
    
if ($host eq "STA112150"){

#Lyle Ricker
print STDOUT "true\n";
$find = "true";

  }	
  
if ($host eq "STA117345"){

#Kenneth MacDonald
print STDOUT "true\n";
$find = "true";

  }	
  

  
if ($host eq "STA116912"){

#Michael Bartsch
print STDOUT "true\n";
$find = "true";

  }
  

  
if ($host eq "STA107006"){

#Michael Salbador
print STDOUT "true\n";
$find = "true";

  }

 
if ($host eq "STA114121"){

#Paquito Ilagan
print STDOUT "true\n";
$find = "true";

  }


 
if ($host eq "STA110406"){

#Phong Vo
print STDOUT "true\n";
$find = "true";

  }



if ($host eq "STA106108"){

#Qadir Qureshi
print STDOUT "true\n";
$find = "true";

  }
 



if ($host eq "STA117268"){

#OMKAR DHARMADHIKARI
print STDOUT "true\n";
$find = "true";

  }
  
  


if ($host eq "STA115338"){

#Anthony Lang
print STDOUT "true\n";
$find = "true";

  }
      


if ($host eq "STA114120"){

#Bhavin Gandhi
print STDOUT "true\n";
$find = "true";

  }
 

if ($host eq "STA116297"){

#Carlo Teodoro
print STDOUT "true\n";
$find = "true";

  }



if ($host eq "STA104719"){

#Nizammuddin
print STDOUT "true\n";
$find = "true";

  }
  
  


if ($host eq "STA116299"){

#Jomer Alimpolo
print STDOUT "true\n";
$find = "true";

  }


if ($host eq "STA117982"){

#Dharmendra Singh
print STDOUT "true\n";
$find = "true";

  }
  
  
if ($host eq "STA114260"){

#Neelabh Krishna
print STDOUT "true\n";
$find = "true";

  }
  
  

if ($host eq "STA117269"){

#Oluleke Adanlawo
print STDOUT "true\n";
$find = "true";

  }
  
  

if ($host eq "STA110220"){

#Mark Prostor
print STDOUT "true\n";
$find = "true";

  }
   

if ($host eq "STA112866"){

#Mike Bank
print STDOUT "true\n";
$find = "true";

  }
  
 
if ($host eq "STA105466"){

#ZULQARNAIN SHAIKH
print STDOUT "true\n";
$find = "true";

  }
  
  
if ($host eq "STA116796"){

#Sudhanshu Singh
print STDOUT "true\n";
$find = "true";

  }
  

if ($host eq "STA116762"){

#Vincent Taylor
print STDOUT "true\n";
$find = "true";

  }
 
 
if ($host eq "STA106996"){

#Ron Greene
print STDOUT "true\n";
$find = "true";

  }

if ($host eq "STA117293"){

#Ian Eichinger
print STDOUT "true\n";
$find = "true";

  } 

if ($host eq "STA116550"){

#Samuel Zieminski
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

if ($host eq "K2-y-prakash-600B"){

#"Hello Yashas Prakash!\n";
print STDOUT "true\n";
$find = "true";

}

if ($host eq "SDSA4202393"){

#"Hello Ghada Muwanas!\n";
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

# if ($host eq "STA114407"){

# #"Hello AJ Alyatim!\n";
# print STDOUT "true\n";
# $find = "true";

# }

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

# if ($host eq "STA115319"){

# #"Hello Arnold Dajao!\n";
# print STDOUT "true\n";
# $find = "true";

# }

if ($host eq "STA112277"){

#"Hello Art Newby!\n";
print STDOUT "true\n";
$find = "true";

}


# if ($host eq "STA114163"){

# #"Hello Brandon Price!\n";
# print STDOUT "true\n";
# $find = "true";

# }

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

# if ($host eq "STA112668"){

# #"Hello Henry Aguirre!\n";
# $find = "true";

# }

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

# if ($host eq "STA112914"){

# #"Hello Jehan Bahar!\n";
# print STDOUT "true\n";
# $find = "true";

# }

if ($host eq "STA114443"){

#"Hello Jimmy Tran!\n";
print STDOUT "true\n";
$find = "true";

}

# if ($host eq "STA104862"){

# #"Hello Joel Sumogat!\n";
# print STDOUT "true\n";
# $find = "true";

# }

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

# if ($host eq "STA112667"){

# #"Hello Kwonil Kang!\n";
# $find = "true";

# }

# if ($host eq "STA108877"){

# #"Hello Leo Agan!\n";
# print STDOUT "true\n";
# $find = "true";

# }

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


 # # # # # # # # FIPS NEW COMPUTERS

# if ($host eq "STA115576"){

# #"Hello Siku Nyore!\n";
# print STDOUT "true\n";
# $find = "true";

# }


# if ($host eq "STA116259"){

# #"Hello Ekhlas Sirelkhtim!\n";
# print STDOUT "true\n";
# $find = "true";

# }

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


# if ($host eq "STA114416"){

# #"Hello Matthew Buchanan!\n";
# print STDOUT "true\n";
# $find = "true";

# }


# if ($host eq "STA114684"){

# #"Hello Troy Kelso!\n";
# print STDOUT "true\n";
# $find = "true";

# }


# if ($host eq "STA114432"){

# #"Hello Gary Trentelman!\n";
# print STDOUT "true\n";
# $find = "true";

# }


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


# if ($host eq "STA114802"){

# #"Hello Nam Phan!\n";
# print STDOUT "true\n";
# $find = "true";

# }


if ($host eq "STA114803"){

#"Hello Michael Netherland!\n";
print STDOUT "true\n";
$find = "true";

}


# if ($host eq "STA114420"){

# #"Hello Larry Meriweather!\n";
# print STDOUT "true\n";
# $find = "true";

# }


# if ($host eq "STA6276"){

# #"Hello Vernon Andrews!\n";
# print STDOUT "true\n";
# $find = "true";

# }


# if ($host eq "STA116262"){

# #"Hello Joaquin Lewis!\n";
# print STDOUT "true\n";
# $find = "true";

# }


# if ($host eq "STA105153"){

# #"Hello Pascel Townsend!\n";
# print STDOUT "true\n";
# $find = "true";

# }


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


# if ($host eq "STA115610"){

# #"Hello Chris Barclay!\n";
# print STDOUT "true\n";
# $find = "true";

# }


if ($host eq "STA115621"){

#"Hello Rassamee Wisitsora!\n";
print STDOUT "true\n";
$find = "true";

}


# if ($host eq "STA116554"){

# #"Hello Marco Ensley!\n";
# print STDOUT "true\n";
# $find = "true";

# }


if ($host eq "STA116552"){

#"Hello Johnnie Barry!\n";
print STDOUT "true\n";
$find = "true";

}


# if ($host eq "STA116551"){

# #"Hello Nathaniel Randolph Clay!\n";
# print STDOUT "true\n";
# $find = "true";

# }


# if ($host eq "STA116256"){

# #"Hello Joseph Adefope!\n";
# print STDOUT "true\n";
# $find = "true";

# }


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

# if ($host eq "STA116795"){

# #"Hello Thomas Michael Sears!\n";
# print STDOUT "true\n";
# $find = "true";

# }


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


# if ($host eq "STA116595"){

# #"Hello Mutasim Dirar!\n";
# print STDOUT "true\n";
# $find = "true";

# }

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


# if ($host eq "STA116764"){

# #"Hello Jimmara Crowell!\n";
# print STDOUT "true\n";
# $find = "true";

# }


# if ($host eq "STA116765"){

# #"Hello Jermaine Alexander!\n";
# print STDOUT "true\n";
# $find = "true";

# }


if ($host eq "STA117817"){

#"Hello Shawn Fagan!\n";
print STDOUT "true\n";
$find = "true";

}        


if ($host eq "STA116592"){

#"Hello Zain Nazir!\n";
print STDOUT "true\n";
$find = "true";

}    

if ($host eq "SEAIM111313"){

#"Hello Anuprita Malik!\n";
print STDOUT "true\n";
$find = "true";

}  
if ($host eq "STA103838"){

#"Hello Prathamesh Gokarn!\n";
print STDOUT "true\n";
$find = "true";

}  
if ($host eq "STA103829"){

#"Hello Arun Ramachandran!\n";
print STDOUT "true\n";
$find = "true";

} 
if ($host eq "STA111969"){

#"Hello Anush Isaac!\n";
print STDOUT "true\n";
$find = "true";

}
 if ($host eq "STA110439"){

#"Hello Jason Alsing!\n";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA115305"){

#"Hello Andrew Chandley!\n";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA_DALLAS\w.schlegel"){

#"Hello Wesley Schlegel!\n";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA117356"){

#"Hello Francis Mark Straub!\n";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA114670"){

#"Hello DeTomas Wilson!\n";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA115617"){

#"Hello Kelton Mayo!\n";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA106508"){

#"Hello David Shelton\n";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA114859"){

#"Hello Mitch Vega\n";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA112862"){

#"Hello Richard Thomure\n";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA116758"){

#"Hello Frank Kelton Younce\n";
print STDOUT "true\n";
$find = "true";

}
 if ($host eq "STA116292"){

#"Hello Frank ERIC CORY\n";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA114700"){

#"Hello Alvin-Paul Green\n";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA117384"){

#"Hello Gerald Codiniera\n";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA115276"){

#"Hello Phuoc Huynhn";
print STDOUT "true\n";
$find = "true";

}


 if ($host eq "STA117271"){

#"Hello Heath Richards";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA116290"){

#"Hello Hodar Bayingana";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA108363"){

#"Hello Nathan Potter";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA117866"){

#"Hello Adam Dorl";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA117866"){

#"Hello Adam Dorl";
print STDOUT "true\n";
$find = "true";

}


 if ($host eq "STA117812"){

#"Hello Truong Le";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA118107"){

#"Hello Jason Vuong";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA115328"){

#"Hello Joseph Baek";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA104065"){

#"Hello Wone Bae Kim";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA105306"){

#"Hello Dane Lee Sang";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA117880"){

#"Hello Con Dang";
print STDOUT "true\n";
$find = "true";

}



 if ($host eq "STA111984"){

#"Hello Chris Vassallo";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA114417"){

#"Hello Tung Pham";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA106228"){

#"Hello Abhas Thapa";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA112696"){

#"Hello Hala Labrini";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA108534"){

#"Hello Marvin Desrosiers";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA110480"){

#"Hello Neha Gujrathi";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA124447"){

#"Hello Pariena Shah";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA117992"){

#"Hello Pranav Tripathi";
print STDOUT "true\n";
$find = "true";

}

 # if ($host eq "STA103838"){

# #"Hello Prathamesh Gokarn";
# print STDOUT "true\n";
# $find = "true";

# }

 if ($host eq "STA109947"){

#"Hello Rakshith Nagaiah";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA124431"){

#"Hello Sandeep Galande";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA105946"){

#"Hello Surya Tatavarthi";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA117442"){

#"Hello Vivek kumar pal";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA109673"){

#"Hello Tyrone A Brown";
print STDOUT "true\n";
$find = "true";

}



 if ($host eq "STA106494"){

#"Hello Pablo Alanis";
print STDOUT "true\n";
$find = "true";

}


 if ($host eq "STA117462"){

#"Hello Varsha Dubey";
print STDOUT "true\n";
$find = "true";

}


 if ($host eq "STA119309"){

#"Hello Dwipal mendiratta";
print STDOUT "true\n";
$find = "true";

}


 if ($host eq "STA110518"){

#"Hello John Humphress";
print STDOUT "true\n";
$find = "true";

}



 if ($host eq "SDSA4202414"){

#"Hello Andy Carolan";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA112899"){

#"Hello Amy Wang";
print STDOUT "true\n";
$find = "true";

}

 # if ($host eq "BTSYSTEM13"){

# #"Hello Bienvenido Sapida2";
# print STDOUT "true\n";
# $find = "true";

# }

 if ($host eq "STA116758"){

#"Hello Frank Kelton Younce";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA102629"){

#"Hello Cesar Tansengco";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA117828"){

#"Hello Christopher Wall";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "SDSA118021"){

#"Hello Dale Montano";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA1114490"){

#"Hello Darrick Valona";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA116772"){

#"Hello Ghanem Alomari";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA106117"){

#"Hello Rayner Sillorequez";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA117357"){

#"Hello Umair Qayyum";
print STDOUT "true\n";
$find = "true";

}


 if ($host eq "STA116931"){

#"Hello Paul Moreno";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA111934"){

#"Hello Ubiranei Sarmento";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA118553"){

#"Hello Raghavendra Rao Pagadala";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA114739"){

#"Hello Chintan";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA114230"){

#"Hello Sandeep";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA112928"){

#"Hello Asit";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA120092"){

#"Hello Rabin";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA116931"){

#"Hello Paul Moreno";
print STDOUT "true\n";
$find = "true";

}



 if ($host eq "STA104390"){

#"Hello Bhanu Kamandla";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA109785"){

#"Hello Mohan Panchala";
print STDOUT "true\n";
$find = "true";

}


 if ($host eq "STA104176"){

#"Hello Aanshik Jasani";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA116370"){

#"Hello Mohammed Mushroob Shaikh";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA115301"){

#"Hello Mohammed Gwangju Na";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA105207"){

#"Hello Mohammed Hugh Park";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA115345"){

#"Hello Mphahlele Moruthane";
print STDOUT "true\n";
$find = "true";

}
###

 if ($host eq "STA105049"){

#"Hello Clarence Drennon";
print STDOUT "true\n";
$find = "true";

}



 if ($host eq "STA105215"){

#"Hello Imran Sheikh";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA103508"){

#"Hello Srinath Mohan";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA117474"){

#"Hello Vaibhav Desai";
print STDOUT "true\n";
$find = "true";

}


############ TAC TDD


 if ($host eq "STA105255"){

#"Hello Vinay Singh";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA117453"){

#"Hello Manasa Pamidimukkala";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA112506"){

#"Hello Mahek Rana";
print STDOUT "true\n";
$find = "true";

}


 if ($host eq "STA114479"){

#"Hello Rishit Patel";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA106944"){

#"Hello Farhan Nazir";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "TACCOM379"){

#"Hello Albert Desktop;
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA109602"){

#"Hello Joshua Han;
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA108401"){

#"Hello Vikas Venkatachala;
print STDOUT "true\n";
$find = "true";

}

### carmina added 12/16

 if ($host eq "STA105590"){

#"Hello Priya;
print STDOUT "true\n";
$find = "true";

}
 if ($host eq "STA110129"){

#"Hello Luis;
print STDOUT "true\n";
$find = "true";

}
 if ($host eq "STA116845"){

#"Hello Arun Sigamani;
print STDOUT "true\n";
$find = "true";

}
 if ($host eq "STA108447"){

#"Hello Aaron Wiebe;
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA103188"){

#"Hello Gaurav Vashisht;
print STDOUT "true\n";
$find = "true";

}
 if ($host eq "STA118023"){

#"Hello Mandeep Chima;
print STDOUT "true\n";
$find = "true";

}
 if ($host eq "STA117936"){

#"Hello Rashid Nawaz;
print STDOUT "true\n";
$find = "true";

}
 if ($host eq "STA117909"){

#"Hello Randy Ruesga;
print STDOUT "true\n";
$find = "true";

}
 # if ($host eq "STA108401"){

# #"Hello Raza M. Hasan";
# print STDOUT "true\n";
# $find = "true";

# }

 if ($host eq "STA117932"){

#"Hello Jeraz Engineer";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA114455"){

#"Hello Lavanya";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA116374"){

#"Hello Doug king";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA106114"){

#"Hello Simon";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA114418"){

#"Hello Deepika";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA116586"){

#"Hello Sheng";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA111847"){

#"Hello Greg Hull";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA117420"){

#"Hello Edwin Austria";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA119664"){

#"Hello Gulrez Khan";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA124651"){

#"Hello IMRAN SHAIKJH";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA118641"){

#"Hello Gaurav Mahajam";
print STDOUT "true\n";
$find = "true";

}
 if ($host eq "STA114838"){

#"Hello Paresh Rath <paresh.rath@sta.samsung.com>";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA124625"){

#"Hello Paresh aanshik";
print STDOUT "true\n";
$find = "true";

}


 if ($host eq "STA124445"){

#"Hello gokarn";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA110446"){

#"Hello james gemgler";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA116291"){

#"Hello Stephen Jayakumar";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA114435"){

#"Hello indeer";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA125040"){

#"Hello farhan nazeer";
print STDOUT "true\n";
$find = "true";

}
 if ($host eq "STA105149"){

#"Hello vinh le";
print STDOUT "true\n";
$find = "true";

}



 if ($host eq "STA112689"){

#"Hello luis rivera";
print STDOUT "true\n";
$find = "true";

}


 if ($host eq "STA107005"){

#"Hello derso";
print STDOUT "true\n";
$find = "true";

}


 if ($host eq "STA114490"){

#"Hello Darrick";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA108950"){

#"Hello Seid Chowdury";
print STDOUT "true\n";
$find = "true";

}






 if ($host eq "STA108976"){

#"Hello Shankar";
print STDOUT "true\n";
$find = "true";

}


 if ($host eq "STA110143"){

#"Hello Jean";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA110417"){

#"Hello Seid upinder";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA109621"){

#"Hello Paulos";
print STDOUT "true\n";
$find = "true";

}


 if ($host eq "STA115271"){

#"Hello Qadir Qureshi";
print STDOUT "true\n";
$find = "true";

}

if ($host eq "SDSA4202394"){

#"Hello Colin Weir";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA110515"){

#"Hello Steve Akers";
print STDOUT "true\n";
$find = "true";

}

if ($host eq "STA117345"){

#"Hello Ken MacDonald";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA116267"){

#"Hello Patrick Mambo";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA117831"){

#"Victor Rohena";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA114837"){

#"Hello Saif Abdulkareem";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA117470"){

#"Hello Mohammed Al Badrawi";
print STDOUT "true\n";
$find = "true";

}

 if ($host eq "STA114706"){

#"Hello Prasad";
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

		   