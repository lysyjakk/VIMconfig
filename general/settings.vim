" ----- GENERAL -----
syntax on
colorscheme gruvbox
highlight ColorColumn ctermbg=0 guibg=lightgrey

"filetype plugin on

" ----- AUTOCMD -----

"Remove trailing whitespaces on save
autocmd BufWritePre * %s/\s\+$//e

" ----- SETS -----
set undodir=~/.config/nvim/undodir
set undofile
set background=dark
set nowrap
set incsearch
set smartindent
set nu
set noswapfile
set nobackup
set colorcolumn=80,120
set shiftwidth=2
set tabstop=2
set expandtab
set backspace=indent,eol,start
set scrolloff=10
set cursorline
set relativenumber
set ignorecase
set smartcase

" ----- NO ARROWS KEYS FOR YOU!!! -----
nnoremap <Left> :echo "No left for you!"<CR>
vnoremap <Left> :<C-u>echo "No left for you!"<CR>
inoremap <Left> <C-o>:echo "No left for you!"<CR>


nnoremap <Right> :echo "No right for you!"<CR>
vnoremap <Right> :<C-u>echo "No right for you!"<CR>
inoremap <Right> <C-o>:echo "No right for you!"<CR>

nnoremap <Up> :echo "No up for you!"<CR>
vnoremap <Up> :<C-u>echo "No up for you!"<CR>
inoremap <Up> <C-o>:echo "No up for you!"<CR>

nnoremap <Down> :echo "No down for you!"<CR>
vnoremap <Down> :<C-u>echo "No down for you!"<CR>
inoremap <Down> <C-o>:echo "No down for you!"<CR>

" ----- BRACKET MATCH -----
set showmatch
set matchtime=3

" ----- SIGNCOLUMN -----
set scl=yes

"highlight clear SignColumn
"highlight SignifySignChange ctermfg=blue guifg=blue
"highlight SignifySignAdd    ctermfg=green  guifg=#00ff00 cterm=NONE gui=NONE
"highlight SignifySignDelete ctermfg=red    guifg=#ff0000 cterm=NONE gui=NONE

let g:signify_sign_change = '~'
"let g:signify_sign_add = '+'
"let g:signify_sign_delete = '-'

" ----- CURSOR -----
set guicursor+=a:blinkon1


" ----- NERDTREE -----
let g:NERDTreeWinSize=60

" ----- UNDOTREE -----
let g:undotree_SplitWidth=60

" ---- TAB FIX -----
function! Check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1] =~# '\s'
endfunction

inoremap <silent><expr> <TAB>
      \  pumvisible() ? "\<C-n>":
      \  Check_back_space() ? "\<TAB>":
      \  coc#refresh()
