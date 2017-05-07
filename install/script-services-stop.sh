# [RUN] Restart Services
# [MESSAGE]
echo "\nSTART RESTART SERVICES"
echo "--------------------------------------------------------------------------------"
sudo service dnsmasq stop &&
  sudo service apache2 stop &&
# [MESSAGE]
echo "\nDONE RESTART SERVICES"
echo "--------------------------------------------------------------------------------"

