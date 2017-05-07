# [RUN] Restart Services
# [MESSAGE]
echo "\nSTART RESTART SERVICES"
echo "--------------------------------------------------------------------------------"
sudo service dnsmasq restart &&
  sudo service apache2 restart &&
# [MESSAGE]
echo "\nDONE RESTART SERVICES"
echo "--------------------------------------------------------------------------------"

