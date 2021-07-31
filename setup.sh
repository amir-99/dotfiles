#!/bin/sh

## setup zsh

dotdir="$PWD"

[ -d "${HOME}/.local" ] || { mkdir "${HOME}/.local" && chmod u+rw -R "${HOME}/.local"; }
# get pl10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${HOME}/.local/powerlevel10k
ln -s "${dotdir}/zshd/.zshrc" "${HOME}/.zshrc"
[ -e "${HOME}/.cache/zshhistory" ] || { touch "${HOME}/.cache/zshhistory" && chmod u+rw "${HOME}/.cache/zshhistory"; }

# setup neovim
nvimdir="${HOME}/.config/nvim"
[ -d "${nvimdir}" ] || { mkdir -p "${nvimdir}/autoload" && chmod u+rw -R "${nvimdir}"; }
[ -d "${nvimdir}/vimplug/plug-conf"] || mkdir -p "${nvimdir}/vimplug/plug-conf"
curl -flo "${nvimdir}/autoload/plug.vim" https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s "${dotdir}/init.vim" "${nvimdir}/init.vim"
ln -s "${dotdir}/conf.vim" "${nvimdir}/conf.vim"
ln -s "${dotdir}/keybindings.vim" "${nvimdir}/keybindings.vim"
ln -s "${dotdir}/coc-settings.json" "${nvimdir}/coc-settings.json"
ln -s "${dotdir}/plug.vim" "${nvimdir}/vimplug/plug.vim"
ln -s "${dotdir}/floaterm.vim" "${nvimdir}/vimplug/plug-conf/floaterm.vim"
ln -s "${dotdir}/coc.vim" "${nvimdir}/vimplug/plug-conf/floaterm.vim"
ln -s "${dotdir}/NERDTree.vim" "${nvimdir}/vimplug/pulg-conf/NERDTree.vim"

