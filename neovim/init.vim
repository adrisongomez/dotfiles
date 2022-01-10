source ~/.config/nvim/setup/sets.vim
source ~/.config/nvim/setup/pluggins.vim
source ~/.config/nvim/setup/lsp.vim
source ~/.config/nvim/setup/my.vim
source ~/.config/nvim/setup/telescope.vim
source ~/.config/nvim/setup/nerdtree.vim
luafile ~/.config/nvim/setup/compe.lua

" Undotree keybiding
nnoremap <c-A> :UndotreeToggle<CR>

" Typescript Synax Settings

autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

" Airline setup
let g:airline#extensions#tabline#enabled = 1

colorscheme nordfox
