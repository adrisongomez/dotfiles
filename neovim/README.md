# Javascript/Typescript/NodeJs in Neovim.

I'm currently working as a javascript full stack software developer and recently I start using Neovim as my primary
editor to improve my coding skill. During my researches I decide to create my custom configuration file with all my
personal keybindings. 

## Getting started

1. Install neovim. Download [here](https://github.com/neovim/neovim/wiki/Installing-Neovim)
2. Install nodeJs. Download [here](https://nodejs.org/es/download/). Note: I use [NVM](https://github.com/nvm-sh/nvm)
that is a version manager system for NodeJs
2. Install vim-Pug. Download [here](https://github.com/junegunn/vim-plug#installation)
3. Install kite client. Download [here](https://www.kite.com/)
4. Install python.
5. Install neovim packages.
6. Install ruby.
8. Clone repository in ``~/.config/nvim/``
9. Open Neovim in ``nvim ~/.config/nvim/``
10. Run `:PlugInstall`
11. Source init.nvim
12. Have fun!!

        ``
                npm install neovim
                pip install neovim
                pip3 install neovim
                gem install neovim
        ``

## Plugins and features 

- [Markdown preview](https://github.com/iamcco/markdown-preview.nvim)
- Autocomplete powered by IA using [Kite](https://www.kite.com/) and [CoC](https://github.com/neoclide/coc.nvim)
        - Supported Languages.
                1. Javascript/Typescript
                2. CSS
                3. SCSS
                4. Python
                5. Docker
- File system explorer [NerdTree](https://github.com/preservim/nerdtree)
        - NerdTree-devicons for filetypeicons. For this plugin you need to download a
        [NerdFont](https://www.nerdfonts.com/font-downloads). I'm currently using
        [Hasklug Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FantasqueSansMono.zip)
- Git integration GitFugitive
- File finder using Fzf (Fuzzy Finder).


I'm currently trying to improve this configuration file with more new plugins that a Web Full Stack developers could
need in their everyday work.

## Custom keybindings

- `<SPACE> + n` Clear hightligh searching
- `Crtl + n` Open a new window
- `gK` Open Kite docs
- `alt + j` Move line down one line.
- `alt + k` Move line up one line.
- `alt + shift + j` Duplicate line/selected text, paste down current line
- `alt + shift + k` Duplicate line/selected text, paste up current line

**Windows Movement**

- `Ctrl + h` Move to the left window.
- `Crtl + l` Move to the right window.
- `Crtl + j` Move to the bottom window.
- `Crtl + k` Move to the top window.

**NERDTree**

- `cd` Open File System NERDTree
- `<SPACE> + cd` Close File System NERDTree

**COC**

- `gd` go to definition
- `gy` go to type definition
- `gi` go to implementation
- `gr` go to references
- `Ctrl + <SPACE>` open recommendation
- `<SPACE> + <F2>` rename this references
- `<SPACE> + f` Formatting code

**GIT Fugitive**
- `<SPACE> + G` git status

**Fuzzy Finder**
- `<SPACE> + gf` Search in git files

**Telescope.nvim**
- `ff` Open finder files
- `fb` Search in open buffers
- `fh` Search in helps

**Commenter**
- `gcc` Comment a line and or a visual block selected


## Extra resources

- [NERDTree](https://github.com/preservim/nerdtree/blob/master/doc/NERDTree.txt#L245) Mappings
