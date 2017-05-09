getOsMint() {
	DIR=$1
	FILE=$1.iso
	FILEPATH=$2
	sudo rm -rf $DIR
	sudo mkdir $DIR
	if [ ! -f "$FILE" ]; then
		sudo wget $FILEPATH
	fi
	sudo cp $FILE $DIR
	cd $DIR
	ls
	sudo 7z x $FILE
	sudo chmod -R 777 .
	sudo rm $FILE
	cd ..
}

cd /var/lib/tftpboot/distros/mint

VERSION=linuxmint-18.1-mate-32bit &&
	DOWNLOADPATH=http://ftp.fau.de/mint/iso/linuxmint.com/stable/18.1/$VERSION.iso &&
	getOsMint $VERSION $DOWNLOADPATH
