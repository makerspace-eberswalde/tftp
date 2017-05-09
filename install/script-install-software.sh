# [MESSAGE]
echo "\nSTART TFTP-INSTALLATION"
echo "================================================================================"

#sudo apt-get update &> /dev/null &&

# [MESSAGE]
echo "\nSTART dnsmasq INSTALLATION"
echo "--------------------------------------------------------------------------------"
# install dnsmasq
sudo apt-get install -y dnsmasq &&

echo "\nSTART apache2 INSTALLATION"
echo "--------------------------------------------------------------------------------"
# install apache2/http-server
sudo apt-get install -y apache2 &&

echo "\nSTART apache2 INSTALLATION"
echo "--------------------------------------------------------------------------------"
# install 7zip for extracting iso images
sudo apt-get install -y p7zip-full p7zip-rar &&

echo "\nSTART nfs-kernel-server INSTALLATION"
echo "--------------------------------------------------------------------------------"
# install nfs server for serving images over network
sudo apt-get install -y nfs-kernel-server 

# [MESSAGE]
echo "\nDONE TFTP-INSTALLATION"
echo "================================================================================"
