syntax on                                               "basic syntax highlight

set relativenumber                                      "for relativing numbering
set noerrorbells                                        "no sound effects for error
set tabstop=4 softtabstop=4                             "tabstop - 4 characters long ,softtabstop = 4 spaces long 
set shiftwidth=4    
set t_Co=256
"set cursorline
set expandtab
set smartindent                     
set nu                                                  "set line number
set nowrap                                              "no wrapping of lines
set smartcase                                           "case sensitive searching
set noswapfile                      
set nobackup                        
set undodir=~/.vim/undodir                              "path to your undo directory
set undofile
set incsearch                                           "incremental searching
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'morhtz/gruvbox'                                  "gruvbox colorscheme
Plug 'jremmen/vim-ripgrep'                              "very fast grep for vim
Plug 'tpope/vim-fugitive'                               "for logs and git blames
Plug 'vim-airline/vim-airline'                          "shows current vim branch 
Plug 'leafgarland/typescript-vim'                       "for typescript
Plug 'vim-utils/vim-man'                                "manuals for vim
Plug 'lyuts/vim-rtags'                                  "for c++ 
Plug 'git@github.com:kien/ctrlp.vim.git'                "file finding
"if has('patch-8.1.2269')                                                                                                                                                                                
" Latest YCM needs at least this version of vim                                                                                                                                                     
    "Plug 'ycm-core/YouCompleteMe'                                                                                                                                                                       
"else                                                                                                                                                                                                    
" Version compatible with the vim in ubuntu18.04                                                                                                                                           
    "Plug 'ycm-core/YouCompleteMe', { 'commit':'d98f896' }                                                                                                                                               
"endif 
Plug 'Valloric/YouCompleteMe', { 'commit':'d98f896' }   "for auto complete (latest version of ycm requires vim 8.1+ & CMake 3.14+)
Plug 'mbbill/undotree'                                  "undo tree
Plug 'preservim/nerdtree'                               "file system explorer
"Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }  "lively previewing LaTeX PDF output
Plug 'lervag/vimtex'                                    "syntax latex 
Plug 'vim-syntastic/syntastic'                          "syntax checking 
Plug 'preservim/tagbar'                                 "overview of the file
Plug 'bfrg/vim-cpp-modern'                              "syntax highlighting for c++
Plug 'sonph/onehalf', { 'rtp': 'vim' }                  "onehalf colour scheme
Plug 'rakr/vim-one'                                     "one colour scheme
Plug 'vifm/vifm.vim'                                    "vifm file explorer  
Plug 'ap/vim-css-color'                                 "show hexa colors in vim
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }   "spackeduck colour scheme
Plug 'sheerun/vim-polyglot'                             "imporved syntax highlighting in vim
Plug 'hoob3rt/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'

call plug#end()

colorscheme spaceduck
 if exists('+termguicolors')
     let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
     let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
     set termguicolors
 endif

let g:airline_theme = 'spaceduck'

"use {
"  'hoob3rt/lualine.nvim',
"  requires = {'kyazdani42/nvim-web-devicons', opt = true}
"}

set background=dark

"onehalf colour scheme
"let g:airline_theme='onehalfdark'

autocmd InsertEnter,InsertLeave * set cul!             "change cursorline to indicate the mode 

"latex-live-preview
autocmd Filetype tex setl updatetime=1                 "frequency at which output pdf updated
"let g:livepreview_previewer = 'evince'                
let g:livepreview_previewer = 'zathura'                "pdf viewer

"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"mappings
let mapleader = " "

"remappings

"git fugitive 
nmap <leader>gs :G<CR>
nmap <leader>gj :diffget //3<CR>
nmap <leader>gf :diffget //2<CR>

"nerdtree

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <c-f> :NERDTreeFind<CR>

"tagbar
nmap <F8> :TagbarToggle<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Splits and Tabbed Files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set splitbelow splitright

" Remap splits navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Make adjusing split sizes a bit more friendly
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

" Change 2 split windows from vert to horiz or horiz to vert
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K

" Removes pipes | that act as seperators on splits
set fillchars+=vert:\ 



