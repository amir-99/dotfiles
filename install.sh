#!/usr/bin/sudo sh

# install minimum requirements
package_list="git curl wget tree htop python3 python3-pip zsh zsh-syntax-highlighting zsh-autosuggestions apt-fast"
apt update || { echo "failed to update the package list"; exit 1;}

echo "installing packages ..."

for package in $package_list;do
  echo "installing ${package} ..."
  apt install $package > /dev/null && echo "installed ${package}" || echo "failed to install ${package}"
done

echo "install nvim 5"
curl -flo ~/.local/sources/nvim https://github.com/neovim/neovim/releases/download/v0.5.0/nvim.appimage && cp ~/.local/sources/nvim/nvim.appimage /usr/bin/nvim && echo "installe nvim" || echo "failed to install nvim"

echo "done"
exit 0
