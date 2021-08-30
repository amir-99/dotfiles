" Sourcing config files and auto sourcing them on update
" Config
source ~/.local/dotfiles/nvimd/conf.vim
  autocmd! bufwritepost ~/.local/dotfiles/nvimd/conf.vim source ~/.local/dotfiles/nvimd/conf.vim
" Key Bindings
source ~/.local/dotfiles/nvimd/keybindings.vim
  autocmd! bufwritepost ~/.local/dotfiles/nvimd/keybindings.vim source ~/.local/dotfiles/nvimd/keybindings.vim
" Plugins
source ~/.local/dotfiles/nvimd/plug.vim
  autocmd! bufwritepost ~/.local/dotfiles/nvimd/plug.vim source ~/.local/dotfiles/nvimd/plug.vim
  " Plugins configs
source ~/.local/dotfiles/nvimd/plug_config.vim
  autocmd! bufwritepost ~/.local/dotfiles/nvimd/plug_config.vim source ~/.local/dotfiles/nvimd/plug_config.vim

