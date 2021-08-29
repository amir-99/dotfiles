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
"source ~/.local/dotfiles/nvimd/__PLUGIN__.vim
"   autocmd! bufwritepost ~/.local/dotfiles/nvimd/__PLUGIN__.vim source ~/.local/dotfiles/nvimd/__PLUGIN__.vim
source ~/.local/dotfiles/nvimd/plug_coc.vim
  autocmd! bufwritepost ~/.local/dotfiles/nvimd/plug_coc.vim source ~/.local/dotfiles/nvimd/plug_coc.vim
source ~/.local/dotfiles/nvimd/plug_floaterm.vim
  autocmd! bufwritepost ~/.local/dotfiles/nvimd/plug_floaterm.vim source ~/.local/dotfiles/nvimd/plug_floaterm.vim
source ~/.local/dotfiles/nvimd/plug_NERDTree.vim
  autocmd! bufwritepost ~/.local/dotfiles/nvimd/plug_NERDTree.vim source ~/.local/dotfiles/nvimd/plug_NERDTree.vim
source ~/.local/dotfiles/nvimd/plug_vim-commentary.vim
  autocmd! bufwritepost ~/.local/dotfiles/nvimd/plug_vim-commentary.vim source ~/.local/dotfiles/nvimd/plug_vim-commentary.vim
source ~/.local/dotfiles/nvimd/plug_colorizer.vim
  autocmd! bufwritepost ~/.local/dotfiles/nvimd/plug_colorizer.vim source ~/.local/dotfiles/nvimd/plug_colorizer.vim
source ~/.local/dotfiles/nvimd/plug_jupyter-vim.vim
  autocmd! bufwritepost ~/.local/dotfiles/nvimd/plug_jupyter-vim.vim source ~/.local/dotfiles/nvimd/plug_jupyter-vim.vim
source ~/.local/dotfiles/nvimd/plug_neodebug.vim
  autocmd! bufwritepost ~/.local/dotfiles/nvimd/plug_neodebug.vim source ~/.local/dotfiles/nvimd/plug_neodebug.vim
