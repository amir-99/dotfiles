" Quic Save
noremap <A-w> :update<CR>
inoremap <A-w> <C-O>:update<CR>
" Split
"   vertical
noremap <A-e> :vsplit<CR>
"   horrizental
noremap <A-o> :split<CR>
" toggle hidden chars
noremap <A-l> :set list!<CR>
" easier movement btween splits
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" easier resize
map <C-A-q> <C-w>+
map <C-A-w> <C-w>-
map <C-A-z> <C-w>>
map <C-A-x> <C-w><
" indentation in visual
vnoremap > >gv
vnoremap < <gv
" get out of terminal insert
tnoremap <C-e> <C-Bslash><C-n>
