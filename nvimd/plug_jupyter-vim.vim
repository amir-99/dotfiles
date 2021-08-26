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
autocmd FileType python nnoremap <buffer> <silent> <C-g> :JupyterSendRange<CR>
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

autocmd FileType python nnoremap <C-A-r> :call StartJupyter()<CR>
autocmd FileType python nnoremap <C-A-t> :call QuitJupyter()<CR>

