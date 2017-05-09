#!/bin/sh	
getOsMint() {
	DIR=$1
	FILE=$1.iso
	FILEPATH=$2
	# [MESSAGE]
	echo "\nSTART $FILE DOWNLOAD"
	echo "--------------------------------------------------------------------------------"
	if [ ! -f "$FILE" ]; then
		sudo wget $FILEPATH
	fi
	#sudo rm -rf "$DIR" &&
		sudo mkdir $DIR
	#sudo 7z x $FILE -o $DIR
	echo "\nDONE $FILE DOWNLOAD"
	echo "--------------------------------------------------------------------------------"
}

testf() {
	echo "in"
	sudo rm -rf /tmp/test
}

# [MESSAGE]
echo "\nSTART DOWNLOAD MINT"
echo "================================================================================"

# [RUN]
sudo mkdir -p /var/lib/tftpboot/distros/mint &&
	cd /var/lib/tftpboot/distros/mint &&

	VERSION=linuxmint-18.1-mate-32bit &&
	PATH=http://ftp.fau.de/mint/iso/linuxmint.com/stable/18.1/$VERSION.iso &&
	getOsMint $VERSION $PATH &&

	cd -

	# [MESSAGE]
	echo "\nDONE DOWNLOAD MINT"
	echo "================================================================================"

