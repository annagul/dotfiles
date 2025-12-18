""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Events
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on " filetype detection[ON] plugin[ON] indent[ON]

" Enable omnicompletion (to use, hold Ctrl+X then Ctrl+O while in Insert mode.
set ofu=syntaxcomplete#Complete

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Theme/Colors
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set t_Co=256              	" enable 256-color mode.
syntax enable             	" enable syntax highlighting (previously syntax on).
"colorscheme molokai       	" set colorscheme
colorscheme desert		" set desert colorscheme

" Highlight characters that go over 80 columns
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim UI
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number                	" show line numbers
set cul				" highlight current line
set mouse=a			" Enable mouse to move the cursor
set clipboard=unnamedplus   	" Copy/paste with the clipboard system
set laststatus=2          	" last window always has a statusline
set hlsearch			" Highlight searchs
"set nohlsearch            	" Don't continue to highlight searched phrases.
set incsearch             	" But do highlight as you type your search.
set ignorecase            	" Make searches case-insensitive.
set ruler                 	" Always show info along bottom.
set showmatch
set statusline=%<%f\%h%m%r%=%-20.(line=%l\ \ col=%c%V\ \ totlin=%L%)\ \
			\%h%m%r%=%-40(bytval=0x%B,%n%Y%)\%P

set backspace=indent,eol,start 	" Make backspace behave in a sane manner.

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text formatting / Layout
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent            	" auto-indent
set tabstop=8             	" tab spacing
set softtabstop=8         	" unify
set shiftwidth=8          	" indent/outdent by 4 columns
set shiftround            	" always indent/outdent to the nearest tabstop
set expandtab             	" use spaces instead of tabs
"set smarttab              	" use tabs at the start of a line, spaces elsewhere
set nowrap                	" don't wrap text

" Remap keys
" ==========
"
" sudo to write
"cmap
"w!! w !sudo tee % >/dev/null
