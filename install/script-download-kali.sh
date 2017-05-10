getOs() {
  DIR=$1 &&
    FILE=$1.iso &&
    FILEPATH=$2 &&
    sudo rm -rf $DIR &&
    sudo mkdir $DIR &&
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
# https://www.kali.org/kali-linux-releases/
sudo mkdir -p /var/lib/tftpboot/distros/kali &&
  cd /var/lib/tftpboot/distros/kali &&
  VERSION="2017.1" &&
  ARCHITECTURE=amd64 &&
  FLAVOR=kali-linux-$VERSION-$ARCHITECTURE &&
  DOWNLOADPATH=http://cdimage.kali.org/kali-$VERSION/$FLAVOR.iso &&
  getOs $FLAVOR $DOWNLOADPATH
