call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    Plug 'zchee/deoplete-jedi'
    Plug 'Shougo/deoplete.nvim'
    Plug 'christoomey/vim-tmux-navigator'

call plug#end()
