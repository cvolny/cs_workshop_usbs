#!/bin/sh

LABEL="UT-EECS`date +%Y`"
OVERRIDES="/var/tmp/usbimage/overrides"  # avoid spaces
ISO="$1"

if [ "`id -u`" != "0" ]; then
	echo "This script must be run as root (lame right?)."
	exit 125
fi

if [ ! -d "$OVERRIDES" ]; then
	echo 'Please set the $OVERRIDES variable in the script header to a valid directory.'
	exit 126
fi

if [ -z "$ISO" -o ! -r "$ISO" ]; then
	echo "Usage:"
	echo "`basename $0` <iso-file>"
	exit 127
fi

DRIVE=`mount | awk '/vfat/ { print $1 }'`
if [ -z "$DRIVE" ]; then
	echo "No vfat formatted drive found."
	exit 1
elif [ `echo "$DRIVE" | wc -l | sed 's/ //g'` -gt 1 ]; then
	echo "Multiple vfat drives found. Bugging out!"
	exit 2
fi
MOUNT=`mount | grep "$DRIVE" | sed 's/^\([^ ]*\) on \(.*\) type.*/\2/'`

if [ -z "$MOUNT" ]; then
	echo "Failed to grab the mount-point for $DRIVE from '`mount | grep $DRIVE`'."
	exit 1
else
	echo "$LABEL: $DRIVE, $MOUNT... All data there will be wiped out, are you sure?"
	read response
	if [ "$response" != "yes" -a "$response" != "y" ]; then
		echo "Bugging out then."
		exit 14
	fi
fi

rm -rf "$MOUNT/*"
mlabel -i "$DRIVE" ::"STAGE1"
unetbootin method=diskimage isofile="$ISO" targetdrive="$DRIVE" persistentspace=8 autoinstall=yes
mlabel -i "$DRIVE" ::"STAGE2"
rsync --progress $OVERRIDES/* "$MOUNT"
mlabel -i "$DRIVE" ::"$LABEL"
umount "$DRIVE"
