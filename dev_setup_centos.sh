#!/usr/bin/env sh

# Personal dev env setup script
setup_python () {
	sudo yum install -y python-devel pytho-pip
	sudo pip install virtualenv
}

# Setup vim
setup_vim () {
	sudo yum install -y vim
	sudo yum install -y ctags
	curl -k https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
	cp .vimrc ~/.vimrc
}

# Setup git
setup_git () {
	sudo yum install -y git	
	sudo pip install gitflow
	sudo pip install git-up
	cp .gitconfig ~/.gitconfig
	cp .gitignore_global ~/.gitignore_global
}

# Setup screen
setup_screen () {
	sudo yum install -y screen
	# Get screenrc
	cp .screenrczsh ~/.screenrc
}

# Setup tmux 
setup_tmux () {
	sudo yum install -y tmux
	# Get screenrc
	cp .tmux.conf ~/.tmux.conf
}

# Setup zsh
setup_zsh () {
	sudo yum install -y zsh
	sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	sudo pip install powerline-status
	sudo curl -k -L https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf -o /usr/share/fonts/PowerlineSymbols.otf
	sudo curl -k -L https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf -o /etc/fonts/conf.d/10-powerline-symbols.conf
	sudo fc-cache -vf /usr/share/fonts/
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
	sudo yum -y update
	setup_python
	setup_git
	setup_vim
	setup_zsh
	setup_screen
	setup_tmux
	setup_utils
}

setup_all
