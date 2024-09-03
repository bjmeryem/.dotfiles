"VimCake version: 0.2.1-pre

call plug#begin('~/.vim/plugged')
Plug 'lilydjwg/colorizer'
Plug 'scrooloose/nerdtree'
Plug 'vim-syntastic/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'crusoexia/vim-monokai'
Plug 'honza/vim-snippets'
Plug 'pbondoer/vim-42header'
Plug 'cacharle/c_formatter_42.vim'
Plug 'dense-analysis/ale'          "to install ALE
call plug#end()

"<Plugins config>
filetype plugin on
let g:airline_theme='dark'
let g:colorizer_maxlines = 512
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>
"let g:UltiSnipsExpandTrigger="<Tab>"
"let g:UltiSnipsJumpForwardTrigger="<Tab>"
"let g:UltiSnipsJumpBackwardTrigger="<C-z>"
nmap <F2> :Stdheader<CR>
let g:hdr42user = $USER
let g:hdr42mail = $USER . "@student.1337.ma"

"<User Interface>
syntax on " Enable syntax processing
color monokai " Change color scheme
set mouse=a "Enable mouse
set number "Show line numbers
set showcmd "Show the last command in bottom bar
set wildmenu "Visual autocompletion for command menu
set showmatch "Highlight matching [{()}]
set ruler "Always show cursor position
set list "Enable lists
set listchars=tab:\>\- "Show tabs
set foldmethod=syntax "Fold based on indention levels
set foldcolumn=1 "Enable mouse to open and close folds
set nofoldenable "Open files without closed folds
set confirm "Display a confirmation dialog when closing an unsaved file
"Toggle fold/unfold all folds
noremap <F3> :call FoldToggle()<CR>

"<Indent>
filetype indent on "Enable indentation rules that are file-type specific
set tabstop=4 "Indent using four spaces
set softtabstop=4 "Number of spaces in <Tab>
set shiftwidth=4 "When shifting, indent using four spaces
set autoindent "New lines inherit the indentation of previous lines
set smarttab "Insert “tabstop” number of spaces with the “tab” key
set smartindent "Do smart autoindenting when starting a new line
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap ' ''<Left>
inoremap " ""<Left>

"<Search>
set hlsearch "Search highlighting
set incsearch "Incremental search that shows partial matches
set smartcase "Automatically switch search to case-sensitive when search query contains an uppercase letter

"<Miscellaneous>
set backupdir=~/.cache/vim "Directory to store backup files
set dir=~/.cache/vim "Directory to store swap files
set history=256 "Stack size
set tabpagemax=64 "Maximum number of files that can be opened with vim -p
set lazyredraw "Don’t update screen during macro and script execution

let $fold=1
function FoldToggle()
	if $fold==0
		:exe "normal zR"
		let $fold=1
	else
		:exe "normal zM"
		let $fold=0
	endif
endf

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" install vim-auto-save
Plugin 'git@github.com:907th/vim-auto-save.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" .vimrc
let g:auto_save = 1  " enable AutoSave on Vim startup

map <F8> :setlocal spell! spelllang=en_gb<CR>
set tabstop=8 shiftwidth=8
"set autoindent
"set smartindent
set cindent
syntax enable
set list listchars=nbsp:¬,tab:»·,trail:·,extends:>
set undofile
set undodir=/tmp
inoremap <C-H<C-W>

"you can delete above commands but make sure to include this one here are mandatory

let g:ale_linters = {'c':['gcc']}
let g:c_formatter_42_set_equalprg=1
let g:c_formatter_42_format_on_save=1
