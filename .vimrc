set nocompatible

" plugins
call plug#begin('~/.vim/plugged')
" Make sure you use single quotes

" Syntax highlighting
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

" Syntax checking
Plug 'dense-analysis/ale'

" Side bar
Plug 'preservim/nerdtree'

" Auto pair stuff like ()
Plug 'jiangmiao/auto-pairs'


call plug#end()

"--------------------genearals--------------------"
colorscheme torte
" #TABS AND SPACES {{{
set expandtab " On pressing tab, insert 2 spaces
set tabstop=2 " show existing tab with 2 spaces width
set softtabstop=2
set shiftwidth=2 " when indenting with '>', use 2 spaces width
"}}}


" Display matching files on tab complete
set wildmenu

" Ignore node_modules and images from search results
set clipboard=unnamedplus
set wildignore+=**/node_modules/**,**/dist/**,**_site/**,*.swp,*.png,*.jpg,*.gif,*.webp,*.jpeg,*.map

set number " Show line numbers
set noswapfile " No swap file
set nobackup
set nowritebackup

" Highlight matches when using :substitute
set hlsearch

" Predicts case sensitivity intentions
set smartcase

" Jump to match when searching
set incsearch

" Enable word completion
set complete+=kspell


" #TEMPLATES {{{
" Prefill new files created by vim with contents from the following templates
augroup templates
  autocmd BufNewFile *.html 0r ~/.vim/templates/skeleton.html
  autocmd BufNewFile *.scss 0r ~/.vim/templates/skeleton.scss
  autocmd BufNewFile *.css 0r ~/.vim/templates/skeleton.scss
  autocmd BufNewFile LICENCE 0r ~/.vim/templates/skeleton.LICENCE
  autocmd BufNewFile .gitignore 0r ~/.vim/templates/skeleton.gitignore
  autocmd BufNewFile .eslintrc.json 0r ~/.vim/templates/skeleton.eslintrc
  autocmd BufNewFile .prettierrc.json 0r ~/.vim/templates/skeleton.prettierrc
augroup END
"}}}
"--------------------keymaps----------------------"
let mapleader = ","
" fast escape
imap jj <esc>
" fast open vimrc
nnoremap <leader>ev :tabedit $MYVIMRC<CR>

" Delete buffer completely without messing up window layout
nnoremap <leader>q :Bwipeout<CR>

" turn off search highlights
nnoremap <leader><space> :nohlsearch<CR>

" Reload Vim config
nnoremap <Leader>r :so $MYVIMRC<CR>

" for tabs
nnoremap <C-left> :tabprevious<CR>
nnoremap <C-right> :tabnext<CR>
nnoremap <C-t> :tabnew<CR>
nnoremap <leader>w :tabclose<CR>

" easy nav between screens"
nmap <leader>j <c-w>j
nmap <leader>h <c-w>h
nmap <leader>k <c-w>k
nmap <leader>l <c-w>l
"-----------------------plugins extra stuff----------------------------"
" format code fast
nmap <F6> <Plug>(ale_fix)

" format on save
let g:ale_fix_on_save = 1

" ale fixer for preetier and es lint
let b:ale_fixers = ['prettier', 'eslint']
" In ~/.vim/vimrc, or somewhere similar.

" toggle nerd tree
map <leader>n :NERDTreeToggle<CR>
