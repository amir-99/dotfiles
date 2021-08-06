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
source ~/.local/dotfiles/nvimd/coc.vim
  autocmd! bufwritepost ~/.local/dotfiles/nvimd/coc.vim source ~/.local/dotfiles/nvimd/coc.vim
source ~/.local/dotfiles/nvimd/floaterm.vim
  autocmd! bufwritepost ~/.local/dotfiles/nvimd/floaterm.vim source ~/.local/dotfiles/nvimd/floaterm.vim
source ~/.local/dotfiles/nvimd/NERDTree.vim
  autocmd! bufwritepost ~/.local/dotfiles/nvimd/NERDTree.vim source ~/.local/dotfiles/nvimd/NERDTree.vim
source ~/.local/dotfiles/nvimd/vim-commentary.vim
  autocmd! bufwritepost ~/.local/dotfiles/nvimd/vim-commentary.vim source ~/.local/dotfiles/nvimd/vim-commentary.vim
