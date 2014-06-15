
" Vundle
set nocompatible
filetype off                   " required!
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()
filetype plugin indent on     " required!
filetype plugin on
Plugin 'gmarik/Vundle.vim'

Plugin 'ervandew/supertab'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'lilydjwg/colorizer'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'chrisbra/csv.vim'

Plugin 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

Plugin 'bling/vim-airline'
let g:airline#extensions#csv#enabled = 1
"removed section y for encoding from bottom right
let g:airline#extensions#default#layout = [
      \ [ 'a', 'b', 'c' ],
      \ [ 'x', 'z', 'warning' ]
      \ ]
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_theme='lucius'
"let g:airline#extensions#tabline#enabled = 1
"replaced with bufferline
Plugin 'bling/vim-bufferline'
let g:airline#extensions#bufferline#enabled = 1

"Plugin 'edkolev/tmuxline.vim'

Plugin 'kien/ctrlp.vim'
let g:ctrlp_working_path_mode='c'

Plugin 'vim-latex/vim-latex'
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats = 'pdf, aux'
let g:Tex_ViewRule_pdf = 'mupdf'
"imap <C-space> <Plug>IMAP_JumpForward

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'

Plugin 'lukerandall/haskellmode-vim'
let g:haddock_browser="/usr/bin/dwb"

Plugin 'mbbill/undotree'
nmap <C-k> :UndotreeToggle<CR>

"Plugin 'majutsushi/tagbar'
"nmap <C-m> :TagbarToggle<CR>

" colorscheme
Plugin 'flazz/vim-colorschemes'
"Plugin 'altercation/vim-colors-solarized'
"set background=light
"let g:solarized_termcolors=256
"colorscheme solarized
"Plugin 'jnurmine/Zenburn'
let g:zenburn_high_Contrast=1
colorscheme zenburn
syntax enable


"adding sudo power when necessary
command W w !sudo tee % > /dev/null

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

"Always show current position
"set ruler

" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500
set tabstop=4
set shiftwidth=4
set expandtab
set splitbelow

" armasm syntax highlighting
let asmsyntax='armasm'
let filetype_inc='armasm'

"hi Normal ctermbg=NONE

" swapping buffer more rapidly
map <Leader>k :bnext<cr>
map <Leader>j :bprev<cr>

" line numbers
set relativenumber

" long line marker
set colorcolumn=80

" highlight current line
set cursorline

" word counting
map <F3> :w !detex \| wc -w<CR>
" for vim-latexsuite
filetype plugin on

set grepprg=grep\ -nH\ $*

filetype indent on

set winaltkeys=no
set linebreak

set laststatus=2

set nobackup
set noswapfile
set pastetoggle=<F2>
nmap <silent> ,/ :nohlsearch<CR>

"using the mouse
set mouse=a
map <2-LeftMouse> za

"using semicolon to use the command line
nnoremap ; :

"easier window navigation
"map <C-h> <C-w>h
"map <C-j> <C-w>j
"map <C-k> <C-w>k
"map <C-l> <C-w>l
