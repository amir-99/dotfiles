" init.vim
" Amir Eghtedar


" List:
" PART A: Autoload
" PART B: Basic config
" PART C: Color Settings
" PART D: Basic Keybindings
" PART E: Vim Plug:
"               vim-polyglot
"               NERDTree
"               auto-pairs
"               lightline.vim
"               vim-gitgutter
"               vim-fugitive
"               vim-floaterm
"               coc.nvim
"               vim-commentary
"               Colorizer
"               vim-multiple-cursors
"               jupyter-vim
"               NeoDebug
"               vim-maximizer
" PART F: Plugin Configs:
"               vim-commentary
"               NERDTree
"               NeoDebug
"               jupyter-vim
"               floaterm
"               colorizer
"               coc

" ***** *****

" PART A:
"      Simple auto load for init.vim on save.
" auto source this file on change
autocmd! bufwritepost ~/.local/dotfiles/nvimd/init.vim source ~/.local/dotfiles/nvimd/init.vim

" ***** *****

" PART B:
"       basic configuration
set timeoutlen=500       " Shoten time out
let g:mapleader=","      " set leader kry
syntax enable            " Enables syntax highlighing
set hidden               " Required to keep multiple buffers open multiple
                         "                                         buffers
set encoding=utf-8       " The encoding displayed
set pumheight=10         " Makes popup menu smaller
set fileencoding=utf-8   " The encoding written to file
set cmdheight=2          " More space for displaying messages
set iskeyword+=-         " treat dash separated words as a word text object"
set mouse=a              " Enable your mouse
set splitbelow           " Horizontal splits will automatically be below
set splitright           " Vertical splits will automatically be to the right
set t_Co=256             " Support 256 colors
set tabstop=2            " Insert 2 spaces for a tab
set shiftwidth=2         " Change the number of space characters inserted for
                         "                                        indentation
set smarttab             " Makes tabbing smarter will realize you have 2 vs 4
set expandtab            " Converts tabs to spaces
set smartindent          " Makes indenting smart
set autoindent           " Good auto indent
set number               " Line numbers
set relativenumber       " Relative line numbers
set showtabline=2        " Always show tabs
set noshowmode           " We don't need to see things like -- INSERT -- anymore
set nobackup             " This is recommended by coc
set nowritebackup        " This is recommended by coc
set updatetime=300       " Faster completion
set formatoptions-=cro   " Stop newline continution of comments
set clipboard=unnamedplus
set termguicolors        " Use full range of colors
set scrolloff=10         " Keep 10 lines
set formatoptions-=cro   " Diasble auto comments
set listchars=tab:>>     " Show tabs as >> in list mode

" ***** *****

" PART C:
"       Color Settings
" show trailing whith spaces as red rectangles
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/
" Red color for long text fot text longet than 80 chars
au BufWinEnter * let w:m2=matchadd('WarningMsg', '\%>80v.\+', -1)
" select color scheme
set background=dark
colorscheme gruvbox
" lightline colorscheme
source ${HOME}/.local/dotfiles/nvimd/color_lightline_gruvbox.vim

" ***** *****

" PART D:
"       Basic Keybindings
" quic aave
noremap <A-w> :update<CR>
inoremap <A-w> <C-O>:update<CR>
" vertical split
noremap <A-e> :vsplit<CR>
" horrizental split
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

" ***** *****

" PART E:
"       Vim Plug config
" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif
call plug#begin('~/.config/nvim/autoload/plugged')
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " better statusline
    Plug 'itchyny/lightline.vim'
    " Git diff
    Plug 'airblade/vim-gitgutter'
    " Git integration
    Plug 'tpope/vim-fugitive'
    " Floaterm
    Plug 'voldikss/vim-floaterm'
    " CoC
    " Stable version of coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " better commentting
    Plug 'tpope/vim-commentary'
    " display color codes
    Plug 'chrisbra/Colorizer'
    " multiple cursors
    Plug 'terryma/vim-multiple-cursors'
    " jupyter-vim
    Plug 'wmvanvliet/jupyter-vim'
    " GDB Integration
    Plug 'cpiger/NeoDebug'
    " Window Focus
    Plug 'szw/vim-maximizer'
call plug#end()

" ***** *****

" PART F:
"       Plugin configurations
" ----------
" vim-commantary
" Coment out a line (default cc command not used!)
 map <Leader>c gcc

" ----------
" NERDTree
noremap <Leader>t :NERDTreeToggle<CR>

" ----------
" NeoDebug
let g:neodbg_openbreaks_default    = 1               " Open breakpoints window
let g:neodbg_openstacks_default    = 1               " Open stackframes windowd
let g:neodbg_openlocals_default    = 1               " Open locals window
" keymaps
let g:neodbg_keymap_toggle_breakpoint  = '<Leader>b'         " toggle breakpoint on current line
let g:neodbg_keymap_next               = '<Leader>n'        " next
let g:neodbg_keymap_run_to_cursor      = '<C-F10>'      " run to cursor (tb and c)
let g:neodbg_keymap_jump               = '<C-S-F10>'    " set next statement (tb and jump)
let g:neodbg_keymap_step_into          = '<Leader>s'        " step into
let g:neodbg_keymap_step_out           = '<Leader>S'      " setp out
let g:neodbg_keymap_continue           = '<F5>'         " run or continue
let g:neodbg_keymap_print_variable     = '<Leader>sv'        " view variable under the cursor
let g:neodbg_keymap_stop_debugging     = '<Leader>tt'        " stop debugging (kill)
let g:neodbg_keymap_toggle_console_win = '<F6>'         " toggle console window
let g:neodbg_keymap_terminate_debugger = '<C-C>'        " terminate debugger

" ----------
" jupyter-vim
" disable default keybindings
let g:jupyter_mapkeys = 0
" Run current file
autocmd FileType python nnoremap <buffer> <silent> <F10> :JupyterRunFile<CR>
autocmd FileType python nnoremap <buffer> <silent> <localleader>I :PythonImportThisFile<CR>
" Change to directory of current file
autocmd FileType python nnoremap <buffer> <silent> <localleader>d :JupyterCd %:p:h<CR>
" Send a selection of lines
autocmd FileType python nnoremap <buffer> <silent> <C-x> :JupyterSendCell<CR>
autocmd FileType python inoremap <buffer> <silent> <C-x> :JupyterSendCell<CR>
autocmd FileType python nnoremap <buffer> <silent> <C-g> :JupyterSendRange<CR>
autocmd FileType python inoremap <buffer> <silent> <C-g> :JupyterSendRange<CR>
autocmd FileType python nmap     <buffer> <silent> <C-A-e> <Plug>JupyterRunTextObj
autocmd FileType python vmap     <buffer> <silent> <C-A-e> <Plug>JupyterRunVisual
autocmd FileType python nnoremap <buffer> <silent> <F8>U :JupyterUpdateShell<CR>
" Debugging maps
autocmd FileType python nnoremap <buffer> <silent> <C-b> :PythonSetBreak<CR>
" automatic start and quit functionality
function QuitJupyter()
	:JupyterDisconnect
	:wincmd l
	:q!
endfunction
function StartJupyter()
	:vertical split
	:terminal jupyter console
	:3sleep
	:wincmd h
	:JupyterConnect
endfunction
autocmd FileType python nnoremap <Leader>r :call StartJupyter()<CR>
autocmd FileType python nnoremap <Leader>f :call QuitJupyter()<CR>

" ----------
" Floaterm
let g:floaterm_keymap_toggle = '<C-t>'
let g:floaterm_keymap_next   = '<A-C-l>'
let g:floaterm_keymap_prev   = '<A-C-k>'
let g:floaterm_keymap_new    = '<A-C-o>'

" ----------
" Colorizer Plugin
" Show Color on Color names and Color codes
" example : red #125e36
noremap <Leader>sc :ColorToggle<CR>

" ----------
" coc plugin
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')
" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)
" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)
" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif
" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)
" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')
" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
