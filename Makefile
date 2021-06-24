install:
	sudo cp ./hCLI.sh /usr/bin/hcli 
	sudo cp ./hcli.1.gz /usr/share/man/man1/

uninstall:
	-sudo rm /usr/bin/hcli 2> /dev/null
	-sudo rm /usr/share/man/man1/hcli.1.gz  2> /dev/null 
	-rm ${HOME}/.config/hcli/secret  2> /dev/null
	-rmdir ${HOME}/.config/hcli/  2> /dev/null
	-rm ${HOME}/.cache/hcli/*  2> /dev/null
	-rmdir ${HOME}/.cache/hcli/  2> /dev/null

su:
	sudo rm /usr/bin/hcli
	rm -rf ${HOME}/.cache/hcli/*

rmcache:
	rm -rf ${HOME}/.cache/hcli/*
