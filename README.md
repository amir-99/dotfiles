
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
  * configuration
  * [Vim-Plug](https://github.com/junegunn/vim-plug)
  * and plugins configuration

* __Other__
  * simple rc files for nano and bash

* __Scripts__
  * install requirements and and set them up

___

## __Requirements__ that are not coverd in install.sh

* [Nodejs](https://nodejs.org/en/download/) > v.12
  
___

### __Installation:__

#### Writen for Debian 10 Buster

* __1  Get the files to the specifies dir:__
  
  ```bash
  git clone https://github.com/amir-99/dotfiles ~/.local/dotfiles
  ```

* __2 Chose your branch__

    for buster remain on main but for bullseye go to bullseye brand with this command:
    ```bash
    git checkout bullseye
    ```
  
* __3 Change shell permissions:__
  
  ```bash
  chmod u+x ~/.local/dotfiles/*.sh
  ```

* __4 Install requirements__
  
  ```bash
  ~/.local/dotfiles/install.sh
  ```

* __5 Setup the dotfiles__
  
  ```bash
  ~/.local/dotfiles/setup.sh
  ```

* __6 Change shell:__
  
  ```bash
  chsh $USER
  ```

* __7 Create a working branch__
  ```bash
  git branch working
  git checkout -b working
  ```
  
* __7 Install coc extensions__

open nvim and type this command
  
  ```vim

:CocInstall coc-sh coc-python coc-json coc-yaml coc-clangd coc-markdownlinting

  ```
