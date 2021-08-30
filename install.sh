#!/usr/bin/sudo sh

# set version specefic vars

[ -f /etc/os-release ] &&{
  . /etc/os-release &&
  [ "${VERSION_ID}" -eq "11" ] &&{
    release_name="bullseye";
  } || {
    release_name="buster";
  };
} || {
  # default assumption
  release_name="buster";
}

echo " ***** using debian ${release_name} version:${VERSION_ID} *****"


# check for required packages
dpkg -s gnupg2 wget curl || {
  echo "*** wget gunpg2 and curl are needed" &&
  apt install wget curl gnupg2
}
# install minimum requirements

# apt-fast repo
echo "configuring apt-fast repo"
[ -e "/etc/apt/sources.list.d/apt-fast.list" ] || {
      echo "deb http://ppa.launchpad.net/apt-fast/stable/ubuntu bionic main\ndeb-src http://ppa.launchpad.net/apt-fast/stable/ubuntu bionic main" > /etc/apt/sources.list.d/apt-fast.list &&
      apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A2166B8DE8BDC3367D1901C11EE2FF37CA8DA16B &&
      echo "done"; }

# llvm repo
echo "configuring llvm toolchain repo"
[ -e "/etc/apt/sources.list.d/llvm-toolchain-${release_name}-13.list" ] || {
  echo "deb http://apt.llvm.org/${release_name}/ llvm-toolchain-${release_name}-13 main\ndeb-src http://apt.llvm.org/${release_name}/ llvm-toolchain-${release_name}-13 main" > "/etc/apt/sources.list.d/llvm-toolchain-${release_name}-13.list" &&
      wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add - &&
      echo "done"; }

# node repo
[ -e "/etc/apt/sources.list.d/nodesource.list" ] || curl -fsSL https://deb.nodesource.com/setup_14.x | bash -

package_list="apt-fast git curl wget tree htop python3
              python3-pip zsh zsh-syntax-highlighting
              zsh-autosuggestions ranger build-essential
              gdb clang-tools-13 clangd-13 fuse nodejs"
apt update || { echo "failed to update the package list"; exit 1; }

echo "installing packages ..."
failed_packeges=""
for package in $package_list;do
  echo "installing ${package} ..."
  apt install $package -y && echo "installed ${package}" || {
                                      echo "failed to install ${package}";
                                      failed_packeges="${failed_packeges} ${package}"; }
done

echo "install nvim 5"
[ -e /usr/bin/nvim ] || {
                            { [ -d /opt/sources/nvim ] ||
                              mkdir -p /opt/sources/nvim ; }
                          wget -O /opt/sources/nvim/nvim.appimage https://github.com/neovim/neovim/releases/download/v0.5.0/nvim.appimage &&
                          chmod a+rx /opt/sources/nvim/nvim.appimage &&
                          cp /opt/sources/nvim/nvim.appimage /usr/bin/nvim &&
                          chmod a+rx /usr/bin/nvim &&
                          echo "installed neovim" ||
                          failed_packeges="${failed_packeges} neovim"; }

[ -z "${failed_packeges}" ] || echo "Failed to install ${failed_packeges}\nTry installing the manually or rerun the script"
echo "done"

exit 0
