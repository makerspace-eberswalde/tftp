sh /var/lib/tftpboot/install/script-install-software.sh &&
	sh /var/lib/tftpboot/install/configure.sh &&
	sh /var/lib/tftpboot/install/script-services-restart.sh &&
	sh /var/lib/tftpboot/install/download.sh

# [MESSAGE]
echo "\n\n For convienience install github.com/makerspace-eberswalde/dotfiles cli tools. You can than use the zsh aliases to start, stop, remove, conigure the tftp server!"
