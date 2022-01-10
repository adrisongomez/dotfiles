call plug#begin('~/.vim/plugged')

Plug 'othree/yajs.vim'
Plug 'othree/html5.vim'
Plug 'mhartington/oceanic-next'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'mbbill/undotree'
Plug 'windwp/nvim-autopairs'
Plug 'EdenEast/nightfox.nvim'

" Syntax Highlight Pluggins

Plug 'sheerun/vim-polyglot'
Plug 'mxw/vim-jsx' 
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'

" VIM LSP 

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'

call plug#end()
