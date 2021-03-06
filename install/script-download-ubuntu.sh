getOs() {
  FILE=$1
  VERSION=$2
  if [ ! -d "$VERSION" ]; then
    sudo rm -rf $FILE &&
      sudo wget https://raw.githubusercontent.com/makerspace-eberswalde/installer/master/os/$FILE &&
      sudo rm -rf $VERSION &&
      sudo mkdir $VERSION &&
      sudo tar -xvzf $FILE -C $VERSION &&
      sudo rm -rf $FILE
  fi
}

# [MESSAGE]
echo "\nSTART DONWLOAD UBUNTU"
echo "================================================================================"

# [RUN]
cd /var/lib/tftpboot/distros

VERSION=ubuntu-14.04-amd64 &&
  FILENAME=netboot-$VERSION.tar.gz &&
  getOs $FILENAME $VERSION

VERSION=ubuntu-14.04-i386 &&
  FILENAME=netboot-$VERSION.tar.gz &&
  getOs $FILENAME $VERSION

VERSION=ubuntu-16.04-amd64 &&
  FILENAME=netboot-$VERSION.tar.gz &&
  getOs $FILENAME $VERSION &&

VERSION=ubuntu-16.04-i386 &&
  FILENAME=netboot-$VERSION.tar.gz &&
  getOs $FILENAME $VERSION &&

VERSION=ubuntu-16.10-i386 &&
  FILENAME=netboot-$VERSION.tar.gz &&
  getOs $FILENAME $VERSION &&

VERSION=ubuntu-17.04-amd64 &&
  FILENAME=netboot-$VERSION.tar.gz &&
  getOs $FILENAME $VERSION &&

VERSION=ubuntu-17.04-i386 &&
  FILENAME=netboot-$VERSION.tar.gz &&
  getOs $FILENAME $VERSION &&

  # [MESSAGE]
ls -lisa

# [MESSAGE]
echo "\nDONE DONWLOAD UBUNTU"
echo "================================================================================"
