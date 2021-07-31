#!/usr/bin/sudo sh

# get sudo priviliges
#echo "$(whoami)"
#[ "$UID" -eq 0 ] || exec sudo "${0}" "${@}" 

# install minimum requirements
package_list="neovim git curl wget tree htop python3 python3-pip zsh zsh-syntax-highlighting zsh-autosuggestions apt-fast"
apt update || { echo "failed to update the package list"; exit 1;}
echo "installing packages ..."
for package in $package_list;do
  echo "install ${package}"
  apt install $package > /dev/null && echo "installed ${package}" || echo "failed to install ${package}"
done

