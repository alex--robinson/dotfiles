execute pathogen#infect()
syntax on
filetype plugin indent on


let g:airline#extensions#csv#enabled = 1
"removed section y for encoding from bottom right
let g:airline#extensions#default#layout = [
      \ [ 'a', 'b', 'c' ],
      \ [ 'x', 'z', 'warning' ]
      \ ]
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_theme='zenburn'

let g:ctrlp_working_path_mode='ra'

" colorscheme
let g:zenburn_high_Contrast=1
colorscheme zenburn
set t_Co=256
syntax enable

" New binds

" swapping buffer more rapidly
map <Leader>k :bnext<cr>
map <Leader>j :bprev<cr>
" word counting
map <F3> :w !detex \| wc -w<CR>
set pastetoggle=<F2>
nmap <silent> ,/ :nohlsearch<CR>
"Disable ex mode
map Q <nop>
"using semicolon to use the command line
"Do I really want to override ;?
"nnoremap ; :
"easier window navigation
"map <C-h> <C-w>h
"map <C-j> <C-w>j
"map <C-k> <C-w>k
"map <C-l> <C-w>l
"adding sudo power when necessary
command W w !sudo tee % > /dev/null

" Other settings

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the Wild menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

" Always show current position
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

" line numbers
set relativenumber
set number

" long line marker
set colorcolumn=80

" highlight current line
set cursorline

set grepprg=grep\ -nH\ $*

filetype indent on

set winaltkeys=no
set linebreak

set laststatus=2

set nobackup
set noswapfile

"using the mouse
set mouse=a
"map <2-LeftMouse> za

" setting the terminal window title
autocmd BufEnter * let &titlestring = 'VIM - ' . expand("%:t")
set title
