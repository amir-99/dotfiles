#!/bin/sh

## setup zsh

dotdir="$PWD"

[ -d "${HOME}/.local" ] || { mkdir "${HOME}/.local" && chmod u+rw -R "${HOME}/.local"; }
# get pl10k
[ -d "${HOME}/.local/powerlevel10k" ] || git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${HOME}/.local/powerlevel10k
ln -s -f "${dotdir}/zshd/.zshrc" "${HOME}/.zshrc"
[ -e "${HOME}/.cache/zshhistory" ] || { touch "${HOME}/.cache/zshhistory" && chmod u+rw "${HOME}/.cache/zshhistory"; }

echo "zsh setup complete"

# setup neovim
nvimdir="${HOME}/.config/nvim"
[ -d "${nvimdir}" ] || { mkdir -p "${nvimdir}/autoload" && chmod u+rw -R "${nvimdir}"; }
[ -d "${nvimdir}/vimplug/plug-conf" ] || mkdir -p "${nvimdir}/vimplug/plug-conf"
[ -d "${nvimdir}/colors" ] || mkdir -p "${nvimdir}/colors"
[ -e "${nvimdir}/autoload/plug.vim" ] || curl -flo "${nvimdir}/autoload/plug.vim" https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s -f "${dotdir}/nvimd/init.vim" "${nvimdir}/init.vim"
ln -s -f "${dotdir}/nvimd/coc-settings.json" "${nvimdir}/coc-settings.json"
ln -s -f "${dotdir}/nvimd/PaperColor.vim" "${nvimdir}/colors/PaperColor.vim"

echo "nvim setup complete"

# Other
#   nanorc
ln -s -f "${PWD}/.nanorc" "${HOME}/.nanorc" && echo "added nanorc"
#   bashrc
ln -s -f "${PWD}/.bashrc" "${HOME}/.bashrc" && echo "added bashrc"

exit 0
