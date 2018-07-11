# TODO
* docs: add system requirements (systemd)

# PREPARE
```
# install nodejs
npm install -g http-server
```

# START
```
 tftp.configure
 tftp.services.restart
 tftp.start.preseed-http-server
```


# INSTALLATION INSTRUCTIONS
```bash
sudo rm -rf /var/lib/tftpboot && sudo git clone https://github.com/makerspace-eberswalde/tftp.git /var/lib/tftpboot && cd /var/lib/tftpboot/install && sh install.sh
```
## FOLDERS
* tftp: /var/lib/tftpboot
* dnsmasq: /etc/dnsmasq.conf
* syslinux: /usr/lib/syslinux (copy pxelinux.0 and vesainfo.c32 from here to /var/lib/tftpboot)

## ADD DERIVATE OS
* download distro and extract it to /var/lib/tftpboot/distros
* create preseedfile and place it to /var/lib/tftpboot/install/config/preseeds
* create new menu section in /var/lib/tftpboot/install/config/pxelinux.cfg/default
* add new menu folder in /var/lib/tftpboot/menus for the specific distro and adapt pathes
* NAMING-CONVENTION: DERIVATE-VERSION-ARCHITECTURE (ubuntu-14.04-amd64)
* run tftp.configure from terminal

## ADD NEW OS
* 

# HOW TOs

## How To (how i did it)
* first followup: https://wiki.ubuntuusers.de/PXE-Installation/#DHCP-Proxy-mit-TFTP-Server
* best guide: https://help.ubuntu.com/community/PXEInstallMultiDistro

## Links
* mutliboot: http://askubuntu.com/questions/427053/pxeboot-multiple-image
* preseed file: http://www.gtkdb.de/index_34_2515.html
* Appendix B. Automating the installation using preseeding https://help.ubuntu.com/lts/installation-guide/i386/apb.html
* preseed example file: https://www.debian.org/releases/wheezy/example-preseed.txt
* netboot: https://help.ubuntu.com/community/Installation/Netboot
* netboot downloads ubuntu: http://cdimage.ubuntu.com/netboot/
* pxe-boot: https://wiki.ubuntuusers.de/PXE-Boot/
* multi image instructions: https://www.howtoforge.com/ubuntu_pxe_install_server_p3
* https://blogging.dragon.org.uk/howto-setup-a-pxe-server-with-dnsmasq/
* lightweigth os: http://www.linuxandubuntu.com/home/5-lightweight-linux-for-old-computers

## TODO
* ask Frank how he installed automatic run level for dnsmasq
* aks for encryption password: http://www.linuxjournal.com/content/preseeding-full-disk-encryption

# knowledge

## preseeding
* good workthrough with hosting preseed file via http-server: https://debian-administration.org/article/708/Automating_the_Debian_installer_with_PXE_and_preseeding
* http://louwrentius.com/automated-install-of-debian-linux-based-on-pxe-net-booting.html
* https://debian-administration.org/article/478/Setting_up_a_server_for_PXE_network_booting
* POSSIBLE UBUNTU DERIVATES: https://help.ubuntu.com/lts/installation-guide/i386/apbs04.html

## systemd
* https://unix.stackexchange.com/questions/126009/cause-a-script-to-execute-after-networking-has-started 

## Linux Desktop Environments
* http://www.makeuseof.com/tag/gnome-based-desktop-environments-explained-mate-vs-gnome-shell-vs-unity-vs-cinnamon/
* MINT VS UBUNTU: https://www.howtogeek.com/115041/htg-explains-whats-the-difference-between-ubuntu-linux-mint/

# IMAGES
* ENCRYPTED: http://www.linuxjournal.com/content/preseeding-full-disk-encryption?page=0,1
