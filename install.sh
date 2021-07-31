#!/usr/bin/sudo sh

# install minimum requirements
package_list="git curl wget tree htop python3 python3-pip zsh zsh-syntax-highlighting zsh-autosuggestions apt-fast"
apt update || { echo "failed to update the package list"; exit 1;}

echo "installing packages ..."

for package in $package_list;do
  echo "installing ${package} ..."
  apt install $package -y && echo "installed ${package}" || echo "failed to install ${package}"
done

echo "install nvim 5"
mkdir -p /opt/sources/nvim
wget -O /opt/sources/nvim/nvim.appimage https://github.com/neovim/neovim/releases/download/v0.5.0/nvim.appimage && chmod a+rx /opt/sources/nvim/nvim.appimag && cp /opt/sources/nvim/nvim.appimage /usr/bin/nvim && chmod a+rx /usr/bin/nvim && echo "installed nvim" || echo "failed to install nvim"

echo "done"
exit 0
