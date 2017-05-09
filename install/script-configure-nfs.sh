
# [MESSAGE]
echo "\nSTART /etc/exports CONFIGURATION"
echo "--------------------------------------------------------------------------------"
# systemctl status apache2.service
#sudo echo "127.0.1.1 tftp-server" >> /etc/hosts
echo '/var/lib/tftpboot                     192.168.178.0/24(rw,sync,fsid=0,no_root_squash,crossmnt,no_subtree_check,no_acl)' | sudo tee -a /etc/exports
sort /etc/exports | sudo uniq | sudo tee /etc/exports-new
sudo cp -f /etc/exports-new /etc/exports
sudo rm -f /etc/exports-new
# [MESSAGE]
echo "\nDONE /etc/exports CONFIGURATION"
echo "--------------------------------------------------------------------------------"

sudo exportfs -a
