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
	curl -k -L https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf -o /usr/share/fonts/X11/misc/PowerlineSymbols.otf
	curl -k -L https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf -o /etc/fonts/conf.d/10-powerline-symbols.conf
	fc-cache -vf /usr/share/fonts/X11/misc
	# Get zshrc
	cp .zshrc ~/.zshrc
}

setup_utils() {
	sudo pip install ranger
}

setup_all () {
	apt-get update
	setup_python
	setup_git
	setup_vim
	setup_zsh
	setup_screen
	setup_utils
}

setup_all
