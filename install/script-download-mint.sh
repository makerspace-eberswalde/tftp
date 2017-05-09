# [MESSAGE]
echo "\nSTART DOWNLOAD MINT"
echo "================================================================================"

getOs() {
  FILE=$1
  FILEPATH=$2
  # [MESSAGE]
  echo "\nSTART $FILE DOWNLOAD"
  echo "--------------------------------------------------------------------------------"
  if [ ! -d "$FILE" ]; then
    sudo wget $FILEPATH &&
      sudo 7z x $FILEPATH
  fi
  echo "\nDONE $FILE DOWNLOAD"
  echo "--------------------------------------------------------------------------------"
}

# [RUN]
sudo mkdir -p /var/lib/tftpboot/distros/mint &&
  cd /var/lib/tftpboot/distros/mint &&

  FILENAME=linuxmint-18.1-mate-32bit.iso &&
  PATH=http://ftp.fau.de/mint/iso/linuxmint.com/stable/18.1/$FILENAME &&
  getOs $FILENAME $PATH

  sudo cd -

  # [MESSAGE]
  echo "\nDONE DOWNLOAD MINT"
  echo "================================================================================"
