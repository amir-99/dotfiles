# dotfiles
My personal dotfiles

including:
  ZSH : rc + aliases + env + path
  Neovim : init conf + vim-plug + plugin conf
  bash : rc

Installation:
  1 - get the files: 
    git clone https://github.com/amir-99/dotfiles ~/.local/dotfiles
  2- change shell permissions:
    chmod u+x ~/.local/dotfiles/*.sh
  3- install requirements
    ~/.local/dotfiles/install.sh
  4- setup the dotfiles
    ~/.local/dotfiles/setup.sh
  5- change shell run:
    chsh $USER
