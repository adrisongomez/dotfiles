
#!/usr/bin/env bash
rm -rf ~/.config/nvim/setup
mkdir -p ~/.config/nvim/setup

ln -sf ~/dotfiles/neovim-config/init.vim ~/.config/nvim/init.vim
ln -sf ~/dotfiles/neovim-config/setup/sets.vim ~/.config/nvim/setup/sets.vim
ln -sf ~/dotfiles/neovim-config/setup/pluggins.vim ~/.config/nvim/setup/pluggins.vim
ln -sf ~/dotfiles/neovim-config/setup/coc.vim ~/.config/nvim/setup/coc.vim
ln -sf ~/dotfiles/neovim-config/setup/my.vim ~/.config/nvim/setup/my.vim
ln -sf ~/dotfiles/neovim-config/setup/telescope.vim ~/.config/nvim/setup/telescope.vim
ln -sf ~/dotfiles/neovim-config/setup/nerdtree.vim ~/.config/nvim/setup/nerdtree.vim
ln -sf ~/dotfiles/neovim-config/setup/lsp.vim ~/.config/nvim/setup/lsp.vim
ln -sf ~/dotfiles/neovim-config/setup/compe.lua ~/.config/nvim/setup/compe.lua
ln -sf ~/dotfiles/neovim-config/setup/lush.lua ~/.config/nvim/setup/lush.lua
