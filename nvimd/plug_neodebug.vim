" Neo Debug
let g:neodbg_openbreaks_default    = 1               " Open breakpoints window
let g:neodbg_openstacks_default    = 1               " Open stackframes windowd
let g:neodbg_openlocals_default    = 1               " Open locals window
" keymaps
let g:neodbg_keymap_toggle_breakpoint  = '<A-b>'         " toggle breakpoint on current line
let g:neodbg_keymap_next               = '<A-d>'        " next
let g:neodbg_keymap_run_to_cursor      = '<C-F10>'      " run to cursor (tb and c)
let g:neodbg_keymap_jump               = '<C-S-F10>'    " set next statement (tb and jump)
let g:neodbg_keymap_step_into          = '<A-s>'        " step into
let g:neodbg_keymap_step_out           = '<C-A-s>'      " setp out
let g:neodbg_keymap_continue           = '<F5>'         " run or continue
let g:neodbg_keymap_print_variable     = '<C-P>'        " view variable under the cursor
let g:neodbg_keymap_stop_debugging     = '<A-t>'        " stop debugging (kill)
let g:neodbg_keymap_toggle_console_win = '<F6>'         " toggle console window
let g:neodbg_keymap_terminate_debugger = '<C-C>'        " terminate debugger
