# [RUN] Restart Services
# [MESSAGE]
echo "\nSTART STOP TFTP SERVICES"
echo "--------------------------------------------------------------------------------"
sudo service dnsmasq stop &&
  sudo service apache2 stop &&
# [MESSAGE]
echo "\nDONE STOP TFTP SERVICES"
echo "--------------------------------------------------------------------------------"

