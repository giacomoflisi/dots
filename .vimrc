
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

" code text snippets engine
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'


"edit comment faster
Plugin 'preservim/nerdcommenter'

"Plugin 'vim-syntastic/syntastic'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

Plugin 'ycm-core/YouCompleteMe'
"Plugin 'valloric/YouCompleteMe'
"AUTOCOMPLETION

Plugin 'vim-scripts/indentpython.vim'
Plugin 'nvie/vim-flake8'
"PYTHON"

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
set foldmethod=indent
set foldlevel=99

"movement"
nnoremap j gj
nnoremap k gk

set clipboard=unnamed

packadd termdebug 		"plugin for gdb
let g:termdebug_wide=1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_c_compiler_options="-Wall"
"let g:syntastic_c_checkers=['gcc']
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

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

"SEARCHING
set hlsearch			"highlight matches
set incsearch			"incremental searching
set ignorecase			"searches are case INSENSITIVE
set smartcase			"unless they contain at least one capital letter

"SPLITTING THE VIEW
set splitbelow
set splitright

"navigation between split windows
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-h> <c-w><c-h>
nnoremap <c-l> <c-w><c-l>

"PYTHON"SECTION"""""""""""""""""""""""""""""""""""""""""""""
au BufNewFile,BufRead *.py set textwidth=79 fileformat=unix tabstop=4 shiftwidth=4 expandtab autoindent softtabstop=4

let python_highlight_all=1

"MARK UNNECESSARY WHITESPACES
"au BufNewFile,BufRead *.py,*.pyw,*.c,*.h,*.sh match ExtraWhitespace /\s\+$/

let c_space_errors=1
let c_no_trail_space_error = 1
let c_no_tab_space_error = 1
let python_space_errors=1

"CODE SNIPPETS ULTISNIPS
let g:UltiSnipsExpandTrigger="<enter>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

