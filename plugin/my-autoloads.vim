" ============================================================================
" File:        my-autoloads.vim
" Description: default global vim settings
" Maintainer:  Javier Lopez <m@javier.io>
" ============================================================================

if exists('g:loaded_my_vim_autoloads') || &cp
  finish
endif

let g:loaded_my_vim_autoloads = 1

if has("autocmd")
    "Go back to the position the cursor was on the last time this file was edited
    autocmd BufWinEnter * if line("'\"") > 0 && line("'\"") <= line("$")
                \|execute("normal '\"")|endif

    autocmd VimEnter * nohls "turn off any existing search

    augroup vimrc "cannon be used with the above line, otherwise the cursor
                  "will jump randomly upon the first insert mode change
    "browse documentation with <Enter>/<BS>
    autocmd filetype help :nnoremap <buffer><CR> <c-]>
    autocmd filetype help :nnoremap <buffer><BS> <c-T>

    "set foldmethod to manual after initial automatic indent recognition
    "autocmd BufReadPre  * setlocal foldmethod=indent
    "autocmd BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
    augroup END
endif
