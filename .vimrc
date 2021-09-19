
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim


"*********************** START PLUGIN LIST *********************
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"nerdtree lets you manage files alongside vim
Plugin 'preservim/nerdtree'

"edit comment faster
Plugin 'preservim/nerdcommenter'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

Plugin 'ycm-core/YouCompleteMe'
"AUTOCOMPLETION

call vundle#end()
" All of your Plugins must be added before the following line
"*********************** END PLUGIN LIST *********************
"
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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"syntax enable
syntax on

"c function syntax
"hi cCustomFunc gui=bold guifg=cyan
"hi cCustomClass gui=reverse guifg=#00FFFF

"latex pdf compiler shortcuts"

"compile with pdflatex CTRL+p
"open pdf with mupdf CTRL+z
map <C-p> :! pdflatex %:p
map <C-z> :! mupdf $(echo % \| sed 's/tex$/pdf/') & disown<CR><CR> 

"map <C-p> :! pdflatex %:<CR><CR>
"map <C-z> :! zathura --fork $(echo % \| sed 's/tex$/pdf/') & disown<CR><CR> 
"map <C-z> :! zathura --fork %:t:r.pdf<CR><CR> 

"filetype detection
filetype indent on

"autocomplete menu commands"
"set wildmenu

"allows folding codeblocks"
set foldenable
set foldlevelstart=10
nnoremap <space> za 
"spacebar open/close folded codeblocks"
"set foldmethod=indent

"movement"
nnoremap j gj
nnoremap k gk


packadd termdebug 		"plugin for gdb
let g:termdebug_wide=1

"setting line number...
set nu
set ruler

"setting tab space behaviour
set expandtab
set shiftwidth=4
set smarttab

"set nocompatible		"choose no-compatibility with legacy VI syntax enable
set ai				"auto-indent
set si				"smart-indent
set encoding=utf-8
set showcmd			"display incomplete commands
filetype plugin indent on	"load file type plugins + indentation

"whitespace
"set nowrap
set expandtab

"searching
set hlsearch			"highlight matches
set incsearch			"incremental searching
set ignorecase			"searches are case INSENSITIVE
set smartcase			"unless they contain at least one capital letter

"navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
