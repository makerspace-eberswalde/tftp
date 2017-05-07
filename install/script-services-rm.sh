# [RUN] Restart Services
# [MESSAGE]
echo "\nSTART REMOVE TFTP SERVICES"
echo "--------------------------------------------------------------------------------"

# [MESSAGE]
echo "\nSTART remove dnsmasq tftp CONFIGURATION"
echo "--------------------------------------------------------------------------------"
sudo rm -rf /etc/dnsmasq.conf
sudo rm -rf /lib/systemd/system/dnsmasq.service
sudo rm -rf /etc/init.d/dnsmasq
# [MESSAGE]
echo "\nDONE remove dnsmasq CONFIGURATION"
echo "--------------------------------------------------------------------------------"

# [MESSAGE]
echo "\nSTART remove apache tftp CONFIGURATION"
echo "--------------------------------------------------------------------------------"
# systemctl status apache2.service
sudo rm -rf /etc/apache2/conf-enabled/tftp-apache.conf
# [MESSAGE]
echo "\nDONE remove apache tftp CONFIGURATION"
echo "--------------------------------------------------------------------------------"

# [MESSAGE]
echo "\nDONE REMOVE TFTP SERVICES"
echo "--------------------------------------------------------------------------------"
echo "\n\n RUN tftp.configure to enable the tftp services again!"
