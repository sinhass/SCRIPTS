#!/bin/bash
# Author: Siddhartha S Sinha
# V1.0
# Barefoot Networks
#
# CHANGE THE SERVER_NAME VARIABLE PER YOUR REQUIREMENT
#
#
nmap -sn 10.201.202.0/23 |grep -B 1 "up"|grep report|awk '{print $5}'|sed -e '/^[0-9]/d'|sort -ur|egrep -v "pdu|ups|hydra|yeti|cs1|cs2|cs3|cs23|snowman|thor|web1|fs1|fs2|backupfs1|nessie" >/tmp/server_list

for SERVER_NAME in `cat /tmp/server_list|awk -F "." '{print $1}'`
do
ssh -q -o ConnectTimeout=2 $SERVER_NAME "curl -L https://bootstrap.saltstack.com -o install_salt.sh && sh install_salt.sh -P && sed -i -re 's/^\#master: salt/master: bfsalt01.barefoot-int.lan/' /etc/salt/minion && service salt-minion restart"
done
