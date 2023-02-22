let mapleader=' '

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

nnoremap <leader>] :bn<CR>
nnoremap <leader>[ :bp<CR>
nnoremap <leader>d :bd<CR>

nnoremap <C-d> <C-d>zzzv
nnoremap <C-u> <C-u>zzzv

nnoremap <leader><Esc> :qa!<CR>

nnoremap <leader>u :UndotreeToggle<CR>
nnoremap <leader>t :Telescope<CR>

function! OpenNerdTree()
    if exists('t:NERDTreeBufName') && bufwinnr(t:NERDTreeBufName) != -1
      execute 'NERDTreeToggle'
    else
      execute 'NERDTreeFind'
    endif
endfunction

nnoremap <leader><Tab> :call OpenNerdTree()<CR>

nnoremap <leader>v :wincmd v<bar> :Ex <bar> :vertical resize <CR>
nnoremap <silent> <Leader>= :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>

"Keep it centered when search jump
nnoremap n nzzzv
nnoremap N Nzzzv

nnoremap [[ [[zzzv
nnoremap ]] ]]zzzv

nnoremap <silent><esc> :noh<return><esc>

"Moving text
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-j> <Esc>:m .+1<CR>==
inoremap <C-k> <Esc>:m .-2<CR>==
nnoremap <leader>k :m .-2<CR>==
nnoremap <leader>j :m .+1<CR>==

"Redo
nnoremap r :redo<CR>
