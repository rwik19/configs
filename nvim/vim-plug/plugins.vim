let g:plugged_home = '~/.config/nvim/autoload/plugged'
" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin(g:plugged_home)

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    "Plug 'jiangmiao/auto-pairs'
    Plug 'chriskempson/base16-vim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'dense-analysis/ale'
    Plug 'lervag/vimtex'
    Plug 'Konfekt/FastFold'
    Plug 'matze/vim-tex-fold'
    Plug 'mg979/vim-visual-multi', {'branch': 'master'}
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'arcticicestudio/nord-vim'
call plug#end()
