#!/bin/sh

## setup zsh

dotdir="/home/${USER}/.local/dotfiles"

[ -d "${HOME}/.local" ] || {
                            mkdir "${HOME}/.local" &&
                            chmod u+rw -R "${HOME}/.local"; }
# get pl10k
[ -d "${HOME}/.local/powerlevel10k" ] || git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${HOME}/.local/powerlevel10k
ln -s -f "${dotdir}/zshd/.zshrc" "${HOME}/.zshrc"
[ -e "${HOME}/.cache/zshhistory" ] || {
                                      touch "${HOME}/.cache/zshhistory" &&
                                      chmod u+rw "${HOME}/.cache/zshhistory"; }

echo "zsh setup complete"

# setup neovim
nvimdir="${HOME}/.config/nvim"
[ -d "${nvimdir}" ] || {
                        mkdir -p "${nvimdir}/autoload" &&
                        chmod u+rw -R "${nvimdir}"; }
[ -d "${nvimdir}/vimplug/plug-conf" ] || mkdir -p "${nvimdir}/vimplug/plug-conf"
[ -d "${nvimdir}/colors" ] || mkdir -p "${nvimdir}/colors"
[ -e "${nvimdir}/autoload/plug.vim" ] || curl -flo "${nvimdir}/autoload/plug.vim" https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s -f "${dotdir}/nvimd/init.vim" "${nvimdir}/init.vim"
ln -s -f "${dotdir}/nvimd/coc-settings.json" "${nvimdir}/coc-settings.json"
ln -s -f "${dotdir}/nvimd/color_gruvbox.vim" "${nvimdir}/colors/gruvbox.vim"

echo "nvim setup complete"

# Other
#   nanorc
ln -s -f "${dotdir}/.nanorc" "${HOME}/.nanorc" && echo "added nanorc"
#   bashrc
ln -s -f "${dotdir}/.bashrc" "${HOME}/.bashrc" && echo "added bashrc"

fonts_dir="${HOME}/.fonts"
[ -d "${fonts_dir}" ] || mkdir "${fonts_dir}"
cp "${dotdir}/fonts/MesloLGS NF Bold.ttf" "${fonts_dir}/MesloLGS NF Bold.ttf"
cp "${dotdir}/fonts/MesloLGS NF Italic.ttf" "${fonts_dir}/MesloLGS NF Italic.ttf"
cp "${dotdir}/fonts/MesloLGS NF Regular.ttf" "${fonts_dir}/MesloLGS NF Regular.ttf"

exit 0
