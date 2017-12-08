#!/usr/bin/perl


if (!$ARGV[0]) {
exit;
               }


my ($type_report);
my (@commands, $commands);

#Example of $ARGV[0]:
#perl multiple_sites.pl 3G_4G_AUDIT~3G,CH73XC036,728,111.2.0.166,AURRILVN-IBSC-1,Chicago,153,324,495,0,-1,-1,-6,-6,-1,22450,0,0,0,22439,0,22439,0,OUTDOOR,MICROWAVE,3,3,3,1,0,3,0,0,,775,325,Yes,375,725,,,,,,,,,,,111.2.90.65,111.2.90.66,211.2.90.65,211.2.90.66,qh216407,Nextel74,111.2.90.97,111.2.90.98,10.149.55.73,10.149.55.74,517134,LRTPILADBBULTE0517134,3F38,41.67417,-88.515,Chicago_LSMR_1,111.252.2.68,5,411,155,115,165,152,175,3G_1900MHz_On_Air,4/26/2012,4G_1900MHz_On_Air,3/15/2013~4G,CH73XC036,728,111.2.0.166,AURRILVN-IBSC-1,Chicago,153,324,495,0,-1,-1,-6,-6,-1,22450,0,0,0,22439,0,22439,0,OUTDOOR,MICROWAVE,3,3,3,1,0,3,0,0,,775,325,Yes,375,725,,,,,,,,,,,111.2.90.65,111.2.90.66,211.2.90.65,211.2.90.66,qh216407,Nextel74,111.2.90.97,111.2.90.98,10.149.55.73,10.149.55.74,517134,LRTPILADBBULTE0517134,3F38,41.67417,-88.515,Chicago_LSMR_1,111.252.2.68,5,411,155,115,165,152,175,3G_1900MHz_On_Air,4/26/2012,4G_1900MHz_On_Air,3/15/2013

#seperate by ~
#1st var is the type of report. Example: 3G_4G_AUDIT
#next set of var is what is being sent to the AUDIT TOOL etc, which won't change. Every entry will be seperated by ~

if ($ARGV[0]) {
@_ = split(/~/,$ARGV[0]);

$type_report = $_[0];

for (my $i=1; $i < @_; $i++) {
push (@commands, $_[$i]);
                             }

              }

if ($type_report eq "3G_4G_AUDIT") {
foreach $commands (@commands) {
my $execute = "C\:\\3G_4G_TOOL_Scripts\\3G_4G_AUDIT_TOOL\\3G_4G_AUDIT.exe $commands";
system ($execute);
                              }

                                   }
								   
if ($type_report eq "3G_Carrier_Harvest_PreCheck") {
foreach $commands (@commands) {
my $execute = "C\:\\3G_4G_TOOL_Scripts\\3G_4G_AUDIT_TOOL\\3G_Carrier_Harvest_PreCheck.exe $commands";
system ($execute);
                              }

                                   }
								   
if ($type_report eq "3G_Carrier_Harvest_PostCheck") {
foreach $commands (@commands) {
my $execute = "C\:\\3G_4G_TOOL_Scripts\\3G_4G_AUDIT_TOOL\\3G_Carrier_Harvest_PostCheck.exe $commands";
system ($execute);
                              }

                                   }								   

if ($type_report eq "3G_PLD_COMPARE") {
foreach $commands (@commands) {
my $execute = "C\:\\3G_4G_TOOL_Scripts\\3G_PLD_COMPARE\\3G_PLD_COMPARE.exe $commands";
system ($execute);
                              }

                                      }



if ($type_report eq "3G_RFS_AUDIT") {
my ($rfs_commands);
foreach $commands (@commands) {
$rfs_commands .= "$commands~";
                              }
$rfs_commands =~ s/~$//g;
my $execute = "C\:\\3G_4G_TOOL_Scripts\\3G_RFS_AUDIT\\3G_RFS_AUDIT.exe $rfs_commands";
system ($execute);

                                    }

if ($type_report eq "3G_RET_STRESS_TEST") {
my ($ret_stress_commands);
foreach $commands (@commands) {
$ret_stress_commands .= "$commands~";
                              }
$ret_stress_commands =~ s/~$//g;
my $execute = "C\:\\3G_4G_TOOL_Scripts\\3G_RET_STRESS_TEST\\3G_RET_STRESS_TEST.exe $ret_stress_commands";
system ($execute);

                                          }

if ($type_report eq "3G_SITE_STATUS") {
my ($site_status_commands);
foreach $commands (@commands) {
$site_status_commands .= "$commands~";
                              }
$site_status_commands =~ s/~$//g;
my $execute = "C\:\\3G_4G_TOOL_Scripts\\3G_SITE_STATUS\\3G_SITE_STATUS.exe $site_status_commands";
system ($execute);

                                      }

if ($type_report eq "4G_SITE_ALARMS") {
my ($site_alarms_commands);
foreach $commands (@commands) {
$site_alarms_commands .= "$commands~";
                              }
$site_alarms_commands =~ s/~$//g;
my $execute = "C\:\\3G_4G_TOOL_Scripts\\4G_SITE_ALARMS\\4G_SITE_ALARMS.exe $site_alarms_commands";
system ($execute);

                                      }

if ($type_report eq "4G_1XRTT_PREG") {
my ($preg_commands);
foreach $commands (@commands) {
$preg_commands .= "$commands~";
                              }
$preg_commands =~ s/~$//g;
my $execute = "C\:\\3G_4G_TOOL_Scripts\\4G_1XRTT_PREG\\4G_1XRTT_PREG.exe $preg_commands";
system ($execute);

                                     }

if ($type_report eq "4G_NBR_BATCH_800") {
my ($nbr_batch_800_commands);
foreach $commands (@commands) {
$nbr_batch_800_commands .= "$commands~";
                              }
$nbr_batch_800_commands =~ s/~$//g;
my $execute = "C\:\\3G_4G_TOOL_Scripts\\4G_NBR_BATCH_800\\4G_NBR_BATCH_800.exe $nbr_batch_800_commands";
system ($execute);

                                        }