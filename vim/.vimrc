" Enable syntax highlighting
syntax enable

set shiftwidth=4            " number of spaces when using tab
set tabstop=4               " number of visual spaces per TAB
set softtabstop=4           " number of spaces in tab when editing
set expandtab               " tabs are spaces
set smarttab                " Be smart when using tabs
set smartindent             " Smart indent
set number relativenumber   " show hybrid line numbers
set showcmd                 " shown command in bottom bar
set wildmenu                " visual autocomplete for command menu
set lazyredraw              " redraw only when we need to
set showmatch               " highlight matching [{()}]
set incsearch               " search as characters are entered
set hlsearch                " highlight matches
set ignorecase              " Ignore case when searching
set smartcase               " when searching try to be smart about cases
set encoding=utf8           " set UTF-8 as standard encoding
set ffs=unix,dos,mac        " Use Unix as the standard file type
set history=1000            " remember more commands and search history
set undolevels=1000         " more levels of undo
set nobackup                " don't use Vim backups
set noswapfile              " don't use Vim's swap
set ttyfast                 " Optimize for fast terminal connections
set ruler                   " Show cursor position
set foldcolumn=0
set nowrap

set laststatus=2
set showmode

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" set colorcolumn=80

" Undo directory
set undodir=~/.vim/undodir
set undofile

filetype on                 " Enable filetype detection
filetype indent on          " load filetype-specific indent files

" Set leader key to space
let mapleader=" "

" Return to last edit position when opening files. *(You want this!)
if has('viminfo')
    if has('autocmd')
        autocmd BufReadPost *\(.git/COMMIT_EDITMSG\)\@<!
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \ exe "normal! g`\"" |
        \ endif
    endif
    " Remember info about open buffers on close
    set viminfo^=%
endif

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win32") || has("win64")
    set wildignore+=/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
else
    set wildignore+=.git\*,.hg\*,.svn\*
endif

" Set Toggles
set pastetoggle=<F2>

" Using plug-vim Plugin Manager
call plug#begin('~/.vim/plugged')

    Plug 'preservim/nerdtree'
    Plug 'itchyny/lightline.vim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'frazrepo/vim-rainbow'
    Plug 'ryanoasis/vim-devicons'

call plug#end()

" NerdTree Remaps
nnoremap <leader>n :NERDTreeToggle<CR>

" rainbow brackets
let g:rainbow_active = 1
