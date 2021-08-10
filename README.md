
# Dotfiles

## My personal dotfiles for debian linux

### setup zsh with p10k and neovim for dev

#### __includes:__

* __ZSH__
  * rc
  * aliases
  * env
  * path

* __Neovim__
  * init
  * conf
  * vim-plug
  * plugins configuration

* __Othet__
  * simple rc files for nano and bash

* __Scripts__
  * install requirements and and set them up

___

## __Requirements__ that are not coverd in install.sh

* [Nodejs](https://nodejs.org/en/download/) > v.12
  
___

### __Installation:__

#### Writen for Debian 10 Buster

* __1  Det the files:__
  
  ```bash
  git clone https://github.com/amir-99/dotfiles ~/.local/dotfiles
  ```

* __2 Change shell permissions:__
  
  ```bash
  chmod u+x ~/.local/dotfiles/*.sh
  ```

* __3 Install requirements__
  
  ```bash
  ~/.local/dotfiles/install.sh
  ```

* __4 Setup the dotfiles__
  
  ```bash
  ~/.local/dotfiles/setup.sh
  ```

* __5 Change shell run:__
  
  ```bash
  chsh $USER
  ```

* __6 Install coc extensions__

open nvim and type this command
  
  ```vim

:CocInstall coc-sh coc-python coc-json coc-yaml coc-clangd coc-markdownlinting

  ```
