#! /bin/bash
source ~/.profile
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="lambda"
plugins=(git nvm)

source $ZSH/oh-my-zsh.sh

eval "$(gh completion -s zsh)"

eval "$(direnv hook zsh)"

# pnpm
export PNPM_HOME="/home/adrisongomez/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end
#
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/adrisongomez/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/adrisongomez/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/adrisongomez/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/adrisongomez/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

