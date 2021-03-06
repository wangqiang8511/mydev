# Introduction

Setup my dev machine with following things on ubuntu.

* vim
* screen
* zsh
* python

# How to use

Clone this repo.

```bash
./dev_setup_ubuntu.sh
```

# What you have after running this script.

## Basic package installed

* python-dev
* pip
* virtualenv
* screen
* zsh
* vim
* ctags
* git
* gitflow
* ranger

## zsh

* oh-my-zsh
* powerline fonts
* agnoster theme 
* Bind following keys (Using vim binding but keep common emacs binding)

```bash
bindkey -v
bindkey '^J' history-search-forward
bindkey '^K' history-search-backward
bindkey '^A' beginning-of-line
bindkey '^E' end-of-line
bindkey '^U' kill-whole-line
```

## vim

```bash
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'Shougo/neocomplcache.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'fatih/vim-go'
NeoBundle 'klen/python-mode'
NeoBundle 'honza/vim-snippets'
NeoBundle 'derekwyatt/vim-scala'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'tpope/vim-surround'
NeoBundle 'avakhov/vim-yaml'
NeoBundle 'bling/vim-airline'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'chase/vim-ansible-yaml'
NeoBundle 'vim-scripts/taglist.vim'
NeoBundle 'vim-scripts/pythoncomplete'
```

## Screen

* Using ` as ctrl+a
* Using zsh as default shell

## Git

* install gitflow
* install git-up
* setup vim as default editor
* setup vimdiff as default merge tool
* setup global ignore to ignore vim tmp files
