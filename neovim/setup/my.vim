nnoremap <SPACE> <Nop>

let mapleader = ' ' 

" Theme
 syntax enable
" for vim 7
 set t_Co=256

" for vim 8
 if (has("termguicolors"))
  set termguicolors
 endif

colorscheme OceanicNext

let g:airline_theme='oceanicnext'

" Windows Commands
map <silent> <c-h>  :wincmd h<CR>
map <silent> <c-l>  :wincmd l<CR>
map <silent> <c-j>  :wincmd j<CR>
map <silent> <c-k>  :wincmd k<CR>
map <silent> <c-n> :wincmd n<CR> 

" Buffer commands
nnoremap <silent> <leader>h :bp<CR>
nnoremap <silent> <leader>l :bn<CR>

"Moving line up/top

" Insert Mode Option key
nnoremap <silent> ˚ V:m.-2<CR>
nnoremap <silent> ∆ V:m+<CR>

 " using alt key
nnoremap <silent> <A-j> V:m+<CR>
nnoremap <silent> <A-k> V:m.-2<CR>

" Insert Mode
inoremap <silent> ˚ <ESC>V:m.-2<CR>
inoremap <silent> ∆ <ESC>V:m+<CR>

" Duplicate line up/top
nnoremap <silent> Ô <ESC>yyp<CR>
nnoremap <silent>  <ESC>yyP<CR>
nnoremap <silent> <A-J> <ESC>yyp<CR>
nnoremap <silent> <A-K> <ESC>yyP<CR>

" Duplicate Multiple line
vnoremap <silent> Ô ygv<ESC>p<CR>
vnoremap <silent>  ygv<ESC>p<CR>
vnoremap <silent> <A-J> ygv<ESC>p<CR>
vnoremap <silent> <A-K> ygv<ESC>p<CR>

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
