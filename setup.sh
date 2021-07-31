#!/bin/sh

## setup zsh

dotdir="$PWD"

[ -d "${HOME}/.local" ] || { mkdir "${HOME}/.local" && chmod u+rw -R "${HOME}/.local"; }
# get pl10k
[ -d "${HOME}/.local/powerlevel10k" ] || git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${HOME}/.local/powerlevel10k
ln -s "${dotdir}/zshd/.zshrc" "${HOME}/.zshrc"
[ -e "${HOME}/.cache/zshhistory" ] || { touch "${HOME}/.cache/zshhistory" && chmod u+rw "${HOME}/.cache/zshhistory"; }

# setup neovim
nvimdir="${HOME}/.config/nvim"
[ -d "${nvimdir}" ] || { mkdir -p "${nvimdir}/autoload" && chmod u+rw -R "${nvimdir}"; }
[ -d "${nvimdir}/vimplug/plug-conf"] || mkdir -p "${nvimdir}/vimplug/plug-conf"
curl -flo "${nvimdir}/autoload/plug.vim" https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s "${dotdir}/nvimd/init.vim" "${nvimdir}/init.vim"
ln -s "${dotdir}/nvimd/conf.vim" "${nvimdir}/conf.vim"
ln -s "${dotdir}/nvimd/keybindings.vim" "${nvimdir}/keybindings.vim"
ln -s "${dotdir}/nvimd/coc-settings.json" "${nvimdir}/coc-settings.json"
ln -s "${dotdir}/nvimd/plug.vim" "${nvimdir}/vimplug/plug.vim"
ln -s "${dotdir}/nvimd/floaterm.vim" "${nvimdir}/vimplug/plug-conf/floaterm.vim"
ln -s "${dotdir}/nvimd/coc.vim" "${nvimdir}/vimplug/plug-conf/floaterm.vim"
ln -s "${dotdir}/nvimd/NERDTree.vim" "${nvimdir}/vimplug/pulg-conf/NERDTree.vim"

