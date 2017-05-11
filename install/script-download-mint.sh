getOsMint() {
  DIR=$1 &&
    FILE=$1.iso &&
    FILEPATH=$2 &&
    sudo rm -rf $DIR &&
    sudo mkdir $DIR
  if [ ! -f "$FILE" ]; then
    sudo wget $FILEPATH &&
      echo "DONE DOWNLOADING"
  fi
  sudo cp $FILE $DIR &&
    cd $DIR &&
    ls &&
    sudo 7z x $FILE &&
    sudo chmod -R 777 . &&
    sudo rm $FILE &&
    cd ..
}

# [MESSAGE]
echo "\nSTART DONWLOAD MINT"
echo "================================================================================"

# [RUN]
sudo mkdir -p /var/lib/tftpboot/distros/mint &&
  cd /var/lib/tftpboot/distros/mint

  VERSION="18.1"
GUI=cinnamon
ARCHITECTURE=64bit
FLAVOR=linuxmint-"$VERSION"-"$GUI"-"$ARCHITECTURE" &&
  DOWNLOADPATH=http://ftp.fau.de/mint/iso/linuxmint.com/stable/$VERSION/$FLAVOR.iso &&
  getOsMint $FLAVOR $DOWNLOADPATH &&

  VERSION="17.3"
GUI=kde
ARCHITECTURE=64bit
FLAVOR=linuxmint-"$VERSION"-"$GUI"-"$ARCHITECTURE" &&
  DOWNLOADPATH=http://ftp.fau.de/mint/iso/linuxmint.com/stable/$VERSION/$FLAVOR.iso &&
  getOsMint $FLAVOR $DOWNLOADPATH &&

  VERSION="17.2"
GUI=mate
ARCHITECTURE=64bit
FLAVOR=linuxmint-"$VERSION"-"$GUI"-"$ARCHITECTURE" &&
  DOWNLOADPATH=http://ftp.fau.de/mint/iso/linuxmint.com/stable/$VERSION/$FLAVOR.iso &&
  getOsMint $FLAVOR $DOWNLOADPATH &&

  VERSION="17.1"
GUI=xfce
ARCHITECTURE=64bit
FLAVOR=linuxmint-"$VERSION"-"$GUI"-"$ARCHITECTURE" &&
  DOWNLOADPATH=http://ftp.fau.de/mint/iso/linuxmint.com/stable/$VERSION/$FLAVOR.iso &&
  getOsMint $FLAVOR $DOWNLOADPATH

# [MESSAGE]
echo "\nDONE DONWLOAD MINT"
echo "================================================================================"
