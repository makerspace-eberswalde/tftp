# [MESSAGE]
echo "\nSTART TFTP-INSTALLATION"
echo "================================================================================"

#sudo apt-get update &> /dev/null &&

# [MESSAGE]
echo "\nSTART dnsmasq INSTALLATION"
echo "--------------------------------------------------------------------------------"
# TODO: install dnsmasq
sudo apt-get install -y dnsmasq &&

echo "\nSTART apache2 INSTALLATION"
echo "--------------------------------------------------------------------------------"
# TODO: install apache2/http-server
sudo apt-get install -y apache2 &&

# [MESSAGE]
echo "\nDONE TFTP-INSTALLATION"
echo "================================================================================"
