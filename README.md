
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

### __Installation:__

#### Writen for Debian 10 Buster

* __1  Get the files to the specifies dir:__
  
  ```bash
  git clone -b main https://github.com/amir-99/dotfiles ~/.local/dotfiles
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

* __5 Change shell:__
  
  ```bash
  chsh $USER
  ```

* __6 Create a working branch__
  
  ```bash
  git branch working
  git checkout -b working
  ```
  
* __7 Install coc extensions__

  open nvim and type this command
  
  ```vim
  :CocInstall coc-sh coc-pyright coc-json coc-yaml coc-clangd coc-markdownlinting
  ```
