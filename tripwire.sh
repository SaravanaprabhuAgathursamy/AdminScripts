#!/bin/bash
#This is script which helps to monitor file system provided Tripwire is installed in the system.
HOST_NAME=`uname -n`
if [[ ! -e /var/lib/tripwire/${HOST_NAME}.twd ]] ; then
echo "**** Error: Tripwire database for ${HOST_NAME} not \
found. ****"
echo "**** Run "/etc/tripwire/twinstall.sh" and/or "tripwire\
---init". ****"
else
test -f /etc/tripwire/tw.cfg && /usr/sbin/tripwire ---check
fi
