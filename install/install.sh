sh /var/lib/tftpboot/install/script-install-software.sh &&
  sh /var/lib/tftpboot/install/script-configure-dnsmasq.sh &&
  sh /var/lib/tftpboot/install/script-configure-apache.sh &&
  sh /var/lib/tftpboot/install/script-restart-services.sh &&
  sh /var/lib/tftpboot/install/script-download-distros.sh
