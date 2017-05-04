getOs() {
  FILE=$1
  VERSION=$2
  sudo rm -rf $FILE &&
    sudo wget https://raw.githubusercontent.com/makerspace-eberswalde/installer/master/os/$FILE &&
    sudo rm -rf $VERSION &&
    sudo mkdir $VERSION &&
    sudo tar -xvzf $FILE -C $VERSION &&
    sudo rm -rf $FILE
}

# [RUN]
cd /var/lib/tftpboot/distros &&
  VERSION=ubuntu-14.04-amd &&
  FILENAME=netboot-$VERSION.tar.gz &&
  getOs $FILENAME $VERSION &&

# [MESSAGE]
ls -lisa

echo "\nDONE "
echo "--------------------------------------------------------------------------------"
