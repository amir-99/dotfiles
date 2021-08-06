#!/usr/bin/sudo sh

# install minimum requirements

[ -e "/etc/apt/sources.list.d/apt-fast.list" ] || { echo "deb http://ppa.launchpad.net/apt-fast/stable/ubuntu bionic main\ndeb-src http://ppa.launchpad.net/apt-fast/stable/ubuntu bionic main" > /etc/apt/sources.list.d/apt-fast.list && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A2166B8DE8BDC3367D1901C11EE2FF37CA8DA16B; }

package_list="apt-fast git curl wget tree htop python3
              python3-pip zsh zsh-syntax-highlighting
              zsh-autosuggestions ranger build-essential
              gdb clang-tools-11"
apt update || { echo "failed to update the package list"; exit 1; }

echo "installing packages ..."
failed_packeges=""
for package in $package_list;do
  echo "installing ${package} ..."
  apt install $package -y && echo "installed ${package}" || { echo "failed to install ${package}"; failed_packeges="${failed_packeges} ${package}"; }
done

echo "install nvim 5"
[ -e /usr/bin/nvim ] || { mkdir -p /opt/sources/nvim &&  wget -O /opt/sources/nvim/nvim.appimage https://github.com/neovim/neovim/releases/download/v0.5.0/nvim.appimage && chmod a+rx /opt/sources/nvim/nvim.appimag && cp /opt/sources/nvim/nvim.appimage /usr/bin/nvim && chmod a+rx /usr/bin/nvim && echo "installed nvim" || echo "failed to install nvim"; }

echo "Failed to install ${failed_packeges}\nTry installing the manually or rerun the script"
echo "install nodejs for coc manually."
echo "done"
exit 0
