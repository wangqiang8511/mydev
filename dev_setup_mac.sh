#!/usr/bin/env sh

# You need install brew first.

# Personal dev env setup script
setup_python () {
  brew install python
	sudo pip install virtualenv
}

# Setup vim
setup_vim () {
	brew install vim
	brew install ctags
	curl -k https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
	cp .vimrc ~/.vimrc
}

# Setup git
setup_git () {
	brew install git	
	sudo pip install gitflow
	sudo pip install git-up
	cp .gitconfig ~/.gitconfig
	cp .gitignore_global ~/.gitignore_global
}

# Setup zsh
setup_zsh () {
	brew install zsh
	sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	sudo pip install powerline-status
  # Setup font manually
	# Get zshrc
	cp .zshrc ~/.zshrc
}

setup_all () {
	setup_python
	setup_git
	setup_vim
	setup_zsh
}

setup_all
