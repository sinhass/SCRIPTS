#!/bin/ksh

#### install shark script

######
# first check for fcp. filesets
######
lslpp -l | grep fcp > /dev/null
if [ $? -ne 0 ]; then
	NIMDIR=`grep -i lpp_source /etc/niminfo | nawk 'FS=":"{print $2}'`
	mount 192.168.1.254:$NIMDIR /mnt
	cd /mnt
	echo $NIMDIR | grep 433
	if [ $? -eq 0 ]; then	
		installp -aX -d ./ devices.fcp
	else
		cd installp/ppc/
		installp -aX -d ./ devices.fcp
	fi
fi
######## by now, fcp should be installed
cd /
umount /mnt
mount 192.168.1.254:/utility /mnt
cd /mnt/shark
installp -aX -d ./ ibm2105
installp -aX -d ./ ibmpfe
cd /
umount /mnt


