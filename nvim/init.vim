" Plugins(see ./vim-plug/plugins.vim)
source $HOME/.config/nvim/vim-plug/plugins.vim


" Some basics
set mouse=a
set number
set cursorline
set listchars=tab:\|\ 
let mapleader = ","
set list
set relativenumber
set cursorcolumn
" set clipboard+=unnamedplus
syntax on
syntax enable
set noshowmode
" Always show tabs
set showtabline=2
set tabstop=4
set shiftwidth=4
" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o


" colorscheme
let base16colorspace=256
colorscheme base16-gruvbox-light-hard
set background=dark
" True Color Support if it's avaiable in terminal
if has("termguicolors")
    set termguicolors
endif
if has("gui_running")
  set guicursor=n-v-c-sm:block,i-ci-ve:block,r-cr-o:blocks
endif


" airline
let g:airline_powerline_fonts = 1
let g:airline_theme='base16_spacemacs'
let g:airline#extensions#tabline#enabled = 1


" vimtex
let g:tex_flavor  = 'latex'
let g:tex_conceal = ''
let g:vimtex_fold_manual = 1
let g:vimtex_latexmk_continuous = 1
let g:vimtex_compiler_progname = 'nvr'
let g:vimtex_view_method = 'zathura'


" MAPPINGS:
" General
map T :tabnew<CR>
map O :NERDTree<CR>
vmap t "+y
imap <C-s> <Esc>:w<CR>a


" Coc
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>


" Latex
autocmd FileType tex map I :VimtexCompile<CR>
autocmd FileType tex map S :VimtexView<CR>
" Environments
autocmd FileType tex inoremap ;e \begin{enumerate}<Enter>x<Enter>\end{enumerate}<Esc>ka<Backspace>
autocmd FileType tex inoremap ;a \begin{align*}<Enter>x<Enter>\end{align*}<Esc>ka<Backspace>
autocmd FileType tex inoremap ;s \begin{solution}<Enter>x<Enter>\end{solution}<Esc>ka<Backspace>
autocmd FileType tex inoremap ;m \left(\begin{matrix}<Enter>x<Enter>\end{matrix}\right)<Esc>ka<Backspace><Backspace>

" Non math
autocmd FileType tex inoremap ;q \question
autocmd FileType tex inoremap ;ss \subsection
autocmd FileType tex inoremap ;sss \subsubsection
autocmd FileType tex inoremap ;t \text{}<Esc>i
" Math
autocmd FileType tex inoremap $ $$<Esc>i
autocmd FileType tex inoremap ;f \frac{}{}<Esc>2hi
autocmd FileType tex inoremap ;{ \Big\{\Big\}<Esc>5hi
autocmd FileType tex inoremap ;[ \[\]<Esc>hi
autocmd FileType tex inoremap ;R \mathbb{R}
autocmd FileType tex inoremap ;C \mathbb{C}
autocmd FileType tex inoremap ;Z \mathbb{Z}
autocmd FileType tex inoremap ;N \mathbb{N}
autocmd FileType tex inoremap ;Q \mathbb{Q}
autocmd FileType tex inoremap ;M \mathbb{M}
" Templates
command Exam read /home/rwik/Desktop/RWIK/latex-templates/exam.tex
command Article read /home/rwik/Desktop/RWIK/latex-templates/article.tex
