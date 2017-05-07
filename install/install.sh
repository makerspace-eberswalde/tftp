sh /var/lib/tftpboot/install/script-install-software.sh &&
  sh /var/lib/tftpboot/install/configure.sh &&
  sh /var/lib/tftpboot/install/script-restart-services.sh &&
  sh /var/lib/tftpboot/install/script-download-distros.sh

# [MESSAGE]
echo "\n\n For convienience install github.com/makerspace-eberswalde/dotfiles cli tools. You can than use the zsh aliases to start, stop, remove, conigure the tftp server!"
