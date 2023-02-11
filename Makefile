all:
	sudo apt-get update
	# if this fails
	# https://askubuntu.com/questions/1402336/apt-trying-to-fetch-versions-not-available-in-archive-ubuntu-com-ubuntu-pool-mai
	
	sudo apt-get upgrade
	# if this fails
	# https://askubuntu.com/questions/1305141/failed-to-fetch-security-undetermined-error-ip-91-189-91-38-80-in-ubuntu-20-0
	
	sudo apt install neovim
	sudo apt install python3-pip
	sudo apt install python3.8-venv
	sudo apt install nodejs
	sudo npm install -g n
	sudo n stable
	pip3 install pynvim --upgrade
	pip3 install msgpack --upgrade
	if [ ! -e "${HOME}/.local/share/nvim/site/autoload/plug.vim" ]; then curl -fLo "${HOME}/.local/share/nvim/site/autoload/plug.vim" --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim; fi
	git config --global core.email "ehaugw@gmail.com"
	git config --global core.name "Eivind Haug-Warberg"
	git config --global core.editor nvim
win32yank:
	curl -sLo/tmp/win32yank.zip https://github.com/equalsraf/win32yank/releases/download/v0.0.4/win32yank-x64.zip
	unzip -p /tmp/win32yank.zip win32yank.exe > /tmp/win32yank.exe
	chmod +x /tmp/win32yank.exe
	if [ -d /mnt/c/Users/eivind.haug-warberg ]; then \
		mkdir -p /mnt/c/Users/eivind.haug-warberg/Wsl; \
		mv /tmp/win32yank.exe /mnt/c/Users/eivind.haug-warberg/Wsl/; \
		sudo ln -s -f /mnt/c/Users/eivind.haug-warberg/Wsl/win32yank.exe /usr/local/bin/win32yank ; \
	fi
	if [ -d /mnt/c/Users/eivind ]; then \
		sudo mv /tmp/win32yank.exe /usr/local/bin/win32yank ; \
	fi
	if [ -d /mnt/c/Users/ehaugw ]; then \
		mkdir -p /mnt/c/Users/ehaugw/Wsl; \
		mv /tmp/win32yank.exe /mnt/c/Users/ehaugw/Wsl/; \
		sudo ln -s -f /mnt/c/Users/ehaugw/Wsl/win32yank.exe /usr/local/bin/win32yank ; \
	fi
