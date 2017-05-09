# https://askubuntu.com/questions/430853/how-do-i-find-my-internal-ip-address
# echo `ifconfig wlp3s0 2>/dev/null|awk '/inet addr:/ {print $2}'|sed 's/addr://'`
# [MESSAGE]
echo "\nSTART pxelinux.cfg CONFIGURATION"
echo "================================================================================"
IP=`ip route get 8.8.8.8 | awk '{print $NF; exit}'`
echo $IP
sudo rm -rf /var/lib/tftpboot/http/preseeds
sudo mkdir /var/lib/tftpboot/http/preseeds
sudo cp -rf /var/lib/tftpboot/install/config/preseeds/* /var/lib/tftpboot/http/preseeds
find /var/lib/tftpboot/http/preseeds -type f -exec sudo sed -i 's/ADAPT_IP_HERE/'$IP'/g' {} +
# [MESSAGE]
echo "\nDONE pxelinux.cfg CONFIGURATION"
echo "================================================================================"
