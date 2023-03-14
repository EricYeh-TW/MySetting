nnoremap <silent><F2> :NERDTreeToggle<CR>

set encoding=utf-8
set termencoding=utf-8

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

let NERDTreeShowHidden=1
let NERDTreeDirArrows=1
let NERDTreeMinimalUI=1
