# [MESSAGE]
echo "\nSTART TFTP CONFIGURATION"
echo "================================================================================"

# [MESSAGE]
echo "\nSTART dnsmasq CONFIGURATION"
echo "--------------------------------------------------------------------------------"
sudo rm -rf /etc/dnsmasq.conf
sudo cp -f /var/lib/tftpboot/install/config/dnsmasq.conf /etc
sudo cp -f /var/lib/tftpboot/install/config/dnsmasq.service /lib/systemd/system
sudo cp -f /var/lib/tftpboot/install/config/dnsmasq /etc/init.d
sudo systemctl enable NetworkManager-wait-online.service
cat /etc/dnsmasq.conf
# [MESSAGE]
echo "\nDONE dnsmasq CONFIGURATION"
echo "--------------------------------------------------------------------------------"

# [MESSAGE]
echo "\nSTART apache2 CONFIGURATION"
echo "--------------------------------------------------------------------------------"
# systemctl status apache2.service
sudo rm -rf /etc/apache2/conf-enabled/tftp-apache.conf
sudo ln -sf /var/lib/tftpboot/install/config/tftp-apache.conf /etc/apache2/conf-enabled/tftp-apache.conf
sudo update-rc.d apache2 defaults
ls -lisa /etc/apache2/conf-enabled
# [MESSAGE]
echo "\nDONE apache2 CONFIGURATION"
echo "--------------------------------------------------------------------------------"

# [MESSAGE]
echo "\nSTART /etc/hosts CONFIGURATION"
echo "--------------------------------------------------------------------------------"
# systemctl status apache2.service
#sudo echo "127.0.1.1	tftp-server" >> /etc/hosts
echo '127.0.1.1 tftp.server' | sudo tee -a /etc/hosts
#echo '192.168.178.186 tftp-server' | sudo tee -a /etc/hosts
sort /etc/hosts | sudo uniq | sudo tee /etc/hosts-new
sudo cp -f /etc/hosts-new /etc/hosts
sudo rm -f /etc/hosts-new
# [MESSAGE]
echo "\nDONE /etc/hosts CONFIGURATION"
echo "--------------------------------------------------------------------------------"

# [RUN] Restart Services
# [MESSAGE]
echo "\nSTART RESTART SERVICES"
echo "--------------------------------------------------------------------------------"
sudo service dnsmasq restart &&
  sudo service apache2 restart &&
# [MESSAGE]
echo "\nDONE RESTART SERVICES"
echo "--------------------------------------------------------------------------------"

# [MESSAGE]
echo "\nDONE TFTP CONFIGURATION"
echo "================================================================================"
