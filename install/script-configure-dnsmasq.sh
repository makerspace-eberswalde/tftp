# https://askubuntu.com/questions/430853/how-do-i-find-my-internal-ip-address
# echo `ifconfig wlp3s0 2>/dev/null|awk '/inet addr:/ {print $2}'|sed 's/addr://'`
IP=`ip route get 8.8.8.8 | awk '{print $NF; exit}'`
echo $IP
# [MESSAGE]
echo "\nSTART dnsmasq CONFIGURATION"
echo "================================================================================"
sudo rm -rf /etc/dnsmasq.conf
sudo cp -f /var/lib/tftpboot/install/config/dnsmasq.conf /etc
sudo sed -i -e 's/ADAPT_IP_HERE/'$IP'/g' /etc/dnsmasq.conf
sudo cp -f /var/lib/tftpboot/install/config/dnsmasq.service /lib/systemd/system
sudo cp -f /var/lib/tftpboot/install/config/dnsmasq /etc/init.d
sudo systemctl enable NetworkManager-wait-online.service
cat /etc/dnsmasq.conf
# [MESSAGE]
echo "\nDONE dnsmasq CONFIGURATION"
echo "================================================================================"
