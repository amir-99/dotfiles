# Dotfiles
## My personal dotfiles for debian linux
### setup zsh with p10k and neovim for dev
#### __includes__:

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

  * __Bash__
    * simple rc file ( no personilation and not included in scripts)

  * __Scripts__
    * install requirements and and set them up

___
#### __Installation__:
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
  ```
  chsh $USER
  ```