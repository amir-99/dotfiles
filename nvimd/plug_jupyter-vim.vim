" jupyter-vim

" disable default keybindings
let g:jupyter_mapkeys = 0

" Run current file
nnoremap <buffer> <silent> <F10> :JupyterRunFile<CR>
nnoremap <buffer> <silent> <localleader>I :PythonImportThisFile<CR>

" Change to directory of current file
nnoremap <buffer> <silent> <localleader>d :JupyterCd %:p:h<CR>

" Send a selection of lines
nnoremap <buffer> <silent> <C-x> :JupyterSendCell<CR>
nnoremap <buffer> <silent> <C-g> :JupyterSendRange<CR>
nmap     <buffer> <silent> <C-A-e> <Plug>JupyterRunTextObj
vmap     <buffer> <silent> <C-A-e> <Plug>JupyterRunVisual

nnoremap <buffer> <silent> <F8>U :JupyterUpdateShell<CR>

" Debugging maps
nnoremap <buffer> <silent> <C-b> :PythonSetBreak<CR>
