export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
zstyle ':omz:update' mode auto      # update automatically without asking
plugins=(git)

KUBEPROPMT="$HOME/kubepromt"

autoload -U colors; colors
source $KUBEPROPMT/kubectl.zsh
source $ZSH/oh-my-zsh.sh
source $HOME/.bash_profile

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Kubectl context prompt
RPROMPT='%{$fg[blue]%}($ZSH_KUBECTL_PROMPT)%{$reset_color%}'

eval "$(direnv hook zsh)"
source $HOME/dotfiles/personal_scripts.sh

export GOROOT="/usr/local/go"
export GOPATH="$HOME/go_project/"
export PATH="$GOROOT/bin:$GOPATH/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"


# pnpm
export PNPM_HOME="/Users/adrisongomez/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/adrisongomez/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/adrisongomez/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/adrisongomez/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/adrisongomez/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# autoload -Uz compinit && compinit
# fpath=(~/.zsh $fpath)

# autoload -Uz compinit && compinit

## AUTOLOAD  NVM
## place this after nvm initialization!
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc
