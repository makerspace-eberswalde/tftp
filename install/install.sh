# [MESSAGE]
echo "\nSTART TFTP-INSTALLATION"
echo "================================================================================"

#sudo apt-get update &> /dev/null &&

# [MESSAGE]
echo "\nSTART dnsmasq INSTALLATION"
echo "--------------------------------------------------------------------------------"
# TODO: install dnsmasq
sudo apt-get install -y dnsmasq &> /dev/null &&

echo "\nSTART apache2 INSTALLATION"
echo "--------------------------------------------------------------------------------"
# TODO: install apache2/http-server
sudo apt-get install -y appache2 &&

# [MESSAGE]
echo "\nDONE TFTP-INSTALLATION"
echo "================================================================================"
