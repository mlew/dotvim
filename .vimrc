set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'tpope/vim-fugitive'
Bundle 'vim-scripts/closetag.vim'
Bundle 'Raimondi/delimitMate'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'kevinw/pyflakes-vim'
Bundle 'ervandew/supertab'
Bundle 'Lokaltog/vim-powerline'
Bundle 'vim-scripts/pig.vim'


let mapleader=","

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

set nowrap                        " don't wrap lines
set tabstop=4                     " a tab is 4 space
set expandtab                     " expand tabs to spaces
set backspace=indent,eol,start    " allow backspacing over everything in insert mode
set autoindent                    " always set autoindenting on
set copyindent                    " copy the previous indentation on autoindenting
set number                        " always show line numbers
set shiftwidth=4                  " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch                     " set show matching parenthesis
set ignorecase                    " ignore case when searching
set smartcase                     " ignore case if search pattern is all lowercase, case-insensitive otherwise
set smarttab                      " insert tabs on the start of a line according to shiftwidth, not tabstop
set hlsearch                      " highlight search terms
set incsearch                     " show search matches as you type
set scrolloff=4                   " keep 4 lines off the edges of the screen when scrolling
set textwidth=120                 " sets the default width to 120 characters
set foldenable
set foldcolumn=2
set foldmethod=marker
set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo

set nobackup
set noswapfile

" Powerline configuration
let Powerline_symbols='unicode'

" Python configuration
autocmd filetype python set expandtab
autocmd filetype python set tabstop=4
autocmd filetype python set shiftwidth=4

" Ruby configuration
autocmd filetype ruby set expandtab
autocmd filetype ruby set tabstop=2
autocmd filetype ruby set shiftwidth=2

" Pig configuration
"augroup filetypedetect
"  au BufNewFile,BufRead *.pig set filetype=pig syntax=pig
"augroup END

" set filetype stuff to on
filetype on
filetype plugin on
filetype indent on

" Editor layout
set termencoding=utf-8
set encoding=utf-8
set lazyredraw                    " don't update the display while executing macros
set laststatus=2
set showtabline=2
set cmdheight=2

if &t_Co >= 256 || has("gui_running")
	colorscheme mustang
else
	colorscheme default
endif

if &t_Co > 2 || has("gui_running")
	syntax on
endif

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
autocmd filetype html,xml set listchars-=tab:>.
autocmd filetype html,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,mako source ~/.vim/bundle/closetag/plugin/closetag.vim

" NERDTree Mappings
nmap ,n :NERDTreeClose<CR>:NERDTreeToggle<CR>
nmap ,m :NERDTreeClose<CR>:NERDTreeFind<CR>
nmap ,N :NERDTreeClose<CR>

" Working with tabs
set tabpagemax=10    " use at most 10 tabs
nmap ,t <Esc>:tabedit .<CR>
nmap ,T <Esc>:tabnew<CR>
nmap gt <C-w>gf
nmap gT <C-w>gF
nmap ,1 :tabn 1<CR>
nmap ,2 :tabn 2<CR>
nmap ,3 :tabn 3<CR>
nmap ,4 :tabn 4<CR>
nmap ,5 :tabn 5<CR>
nmap ,6 :tabn 6<CR>
nmap ,7 :tabn 7<CR>
nmap ,8 :tabn 8<CR>
nmap ,9 :tabn 9<CR>
nmap ,0 :tabn 10<CR>
nmap ,<Left> :tabprevious<CR>
nmap ,<Right> :tabnext<CR>

