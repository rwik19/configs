execute pathogen#infect()
syntax on
filetype plugin indent on
let g:airline_powerline_fonts = 1
let g:airline_theme='jellybeans'
" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

set mouse=a

set number

" map CTRL-E to end-of-line (insert mode)
imap <C-e> <esc>$i<right>

" map CTRL-A to beginning-of-line (insert mode)
imap <C-a> <esc>^i

" map CTRL-D to delete line (insert mode)
imap <C-d> <esc>ddi

" CTRL-C to copy (visual mode)
vmap <C-c> yi

" CTRL-X to cut (visual mode)
vmap <C-x> xi

" CTRL-V to paste (insert mode)
imap <C-v> <esc>Pi

let g:airline#extensions#tabline#enabled = 1


" Always show tabs
set showtabline=2

" We don't need to see things like -- INSERT -- anymore
set noshowmode
