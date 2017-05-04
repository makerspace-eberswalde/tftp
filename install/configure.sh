# [MESSAGE]
echo "\nSTART TFTP CONFIGURATION"
echo "================================================================================"

# [MESSAGE]
echo "\nSTART dnsmasq CONFIGURATION"
echo "--------------------------------------------------------------------------------"
# TODO: dnsmasq run level
sudo rm -rf /etc/dnsmasq.conf
sudo cp -f config/dnsmasq.conf /etc
cat /etc/dnsmasq.conf
# [MESSAGE]
echo "\nDONE dnsmasq CONFIGURATION"
echo "--------------------------------------------------------------------------------"

# [MESSAGE]
echo "\nDONE TFTP CONFIGURATION"
echo "================================================================================"
