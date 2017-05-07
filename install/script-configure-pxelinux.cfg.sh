# https://askubuntu.com/questions/430853/how-do-i-find-my-internal-ip-address
# echo `ifconfig wlp3s0 2>/dev/null|awk '/inet addr:/ {print $2}'|sed 's/addr://'`
IP=`ip route get 8.8.8.8 | awk '{print $NF; exit}'`
echo $IP
# [MESSAGE]
echo "\nSTART pxelinux.cfg CONFIGURATION"
echo "================================================================================"
sudo rm -rf /var/lib/tftpboot/pxelinux.cfg
sudo cp -rf /var/lib/tftpboot/install/config/pxelinux.cfg /var/lib/tftpboot
find /var/lib/tftpboot/pxelinux.cfg -type f -exec sudo sed -i 's/ADAPT_IP_HERE/'$IP'/g' {} +
# [MESSAGE]
echo "\nDONE pxelinux.cfg CONFIGURATION"
echo "================================================================================"
