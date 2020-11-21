#!/bin/sh

#info
TOPIC=IFS
DESCRIPTION="This script will dump the ifs-root."

echo $DESCRIPTION


. /eso/bin/PhoneCustomer/default/util_info.sh

. /eso/bin/PhoneCustomer/default/util_mountsd.sh
if [[ -z "$VOLUME" ]] 
then
	echo "No SD-card found, quitting"
	exit 0
fi

sleep .5

#Make backup folder
DUMPFOLDER=$VOLUME/Dump/$VERSION/$FAZIT/$TOPIC

echo Dump-folder: $DUMPFOLDER

mkdir -p $DUMPFOLDER
echo "Please wait while the file is dumped"
echo "It will appear like nothing is happening."
sleep 1
echo
echo "Dumping, this will take a while. Please be patient."

cat /net/rcc/dev/fs0 > $DUMPFOLDER/ifs_dump.bin

# Make readonly again
mount -ur $VOLUME

echo "Done. IFS-root dump can be found in the Dump folder on your SD-card"

exit 0
