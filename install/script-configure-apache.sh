# [MESSAGE]
echo "\nSTART APACHE CONFIGURATION"
echo "================================================================================"

# systemctl status apache2.service
sudo rm -rf /etc/apache2/conf-enabled/tftp-apache.conf
sudo ln -sf /var/lib/tftpboot/install/config/tftp-apache.conf /etc/apache2/conf-enabled/tftp-apache.conf
sudo update-rc.d apache2 defaults
ls -lisa /etc/apache2/conf-enabled

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

# [MESSAGE]
echo "\nDONE APACHE CONFIGURATION"
echo "================================================================================"
