getOs() {
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

getOsNetboot() {
  FILE=$1
  VERSION=$2
  if [ ! -d "$VERSION" ]; then
    sudo rm -rf $FILE &&
      sudo wget https://raw.githubusercontent.com/makerspace-eberswalde/installer/master/os/$FILE &&
      sudo rm -rf $VERSION &&
      sudo mkdir $VERSION &&
      sudo tar -xvzf $FILE -C $VERSION
  fi
}
# [MESSAGE]
echo "\nSTART DONWLOAD KALI"
echo "================================================================================"

# https://www.kali.org/kali-linux-releases/
sudo mkdir -p /var/lib/tftpboot/distros/kali &&
  cd /var/lib/tftpboot/distros/kali

# FULL IMAGES

VERSION="2017.1" &&
  ARCHITECTURE=amd64 &&
  FLAVOR=kali-linux-$VERSION-$ARCHITECTURE &&
  DOWNLOADPATH=http://cdimage.kali.org/kali-$VERSION/$FLAVOR.iso &&
  getOs $FLAVOR $DOWNLOADPATH

# NETBOOT IMAGES

VERSION=netboot-kali-2016.2-amd64 &&
  FILENAME=$VERSION.tar.gz &&
  getOsNetboot $FILENAME $VERSION

VERSION=netboot-kali-2016.2-i386 &&
  FILENAME=$VERSION.tar.gz &&
  getOsNetboot $FILENAME $VERSION

# [MESSAGE]
echo "\nDONE DONWLOAD KALI"
echo "================================================================================"
