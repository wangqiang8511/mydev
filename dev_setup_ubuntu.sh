#!/usr/bin/env sh

# Personal dev env setup script
setup_python () {
	sudo apt-get install -y python-dev python-pip
	sudo pip install virtualenv
}

# Setup vim
setup_vim () {
	sudo apt-get install -y vim
	sudo apt-get install -y ctags
	curl -k https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
	cp .vimrc ~/.vimrc
}

# Setup git
setup_git () {
	sudo apt-get install -y git	
	sudo pip install gitflow
	sudo pip install git-up
	cp .gitconfig ~/.gitconfig
	cp .gitignore_global ~/.gitignore_global
}

# Setup screen
setup_screen () {
	sudo apt-get install -y screen
	# Get screenrc
	cp .screenrczsh ~/.screenrc
}

# Setup zsh
setup_zsh () {
	sudo apt-get install -y zsh
	sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	sudo pip install powerline-status
	sudo curl -k -L https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf -o /usr/share/fonts/X11/misc/PowerlineSymbols.otf
	sudo curl -k -L https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf -o /etc/fonts/conf.d/10-powerline-symbols.conf
	sudo fc-cache -vf /usr/share/fonts/X11/misc
	# Get zshrc
	cp .zshrc ~/.zshrc
}

setup_utils() {
	# setup ranger
	curl -k -L http://nongnu.org/ranger/ranger-stable.tar.gz -o /tmp/ranger-stable.tar.gz
	rm -rf /tmp/ranger-stable
	mkdir -p /tmp/ranger-stable
	cd /tmp && tar xvf ranger-stable.tar.gz -C /tmp/ranger-stable
	cd /tmp/ranger-stable/ranger-* && sudo make install
	cd ~/
}

setup_all () {
	sudo apt-get update
	setup_python
	setup_git
	setup_vim
	setup_zsh
	setup_screen
	setup_utils
}

setup_all
