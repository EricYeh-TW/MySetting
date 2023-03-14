" plug
call plug#begin('~/.vim/plugged')
Plug 'tomtom/tcomment_vim'
Plug 'sheerun/vim-polyglot'
Plug 'tomasiser/vim-code-dark'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ap/vim-css-color'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
call plug#end()

" key mapping
let mapleader = " "
nnoremap <silent><C-n> :nohlsearch<CR>
nnoremap <leader>h ^
nnoremap <leader>l $
nnoremap <leader>o O<esc>O
nnoremap <C-a> ggVG
nnoremap ` <C-w>

inoremap jk <esc>
inoremap <C-l> <C-o>de

" 開啟外部剪貼簿
set clipboard=unnamed

" editor
let &t_SI = "\e[6 q"  " SI指insert mode 使用 steady bar
let &t_EI = "\e[2 q"  " EI指其他模式 使用 steady block
set number
set autoindent
set smartindent
set nowrap
set cursorline
set showtabline=2
set splitbelow
set splitright
set noshowmode
set encoding=UTF-8
set nocompatible

" color theme
set t_Co=256
set t_ut=
syntax on
colorscheme codedark
" 檔案列的背景色
hi TabLineFill ctermfg=240 
" 檔案列沒有被選重的檔案的背景色
hi TabLine ctermbg=245  

" search
set incsearch
set hlsearch
set ignorecase
set smartcase
set showmatch

" space
set softtabstop=2
set tabstop=2
set shiftwidth=2
set expandtab
set scrolloff=4

" use mouse
set mouse=a

" step history
set history=1000

" file type
filetype on
filetype indent on
filetype plugin on

" omnifunc
set completeopt+=menuone,noselect,noinsert
set omnifunc=syntaxcomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html,markdown set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css,scss set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType java set omnifunc=javacomplete#Complete
"function! opencompletion()
"   if !pumvisible() && ((v:char >= 'a' && v:char <= 'z') || (v:char >= 'A' && v:char <= 'Z'))
"      call feedkeys("\<C-x>\<C-o>", "n")
" endif
"endfunction

"autocmd InsertCharPre * call OpenCompletion()
