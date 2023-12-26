# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="shurgentum"

plugins=(
    git
    aws
    git
    kubectl
    kube-ps1

    # Custom
    # https://github.com/zsh-users/zsh-autosuggestions
    zsh-autosuggestions
    # https://github.com/zsh-users/zsh-syntax-highlighting
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# TFSwitch
path+=('/Users/shurgentum/bin')
# NVM
export NVM_DIR="$HOME/.nvm"
    [ -s "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" ] && \. "$HOMEBREW_PREFIX/opt/nvm/nvm.sh"

alias rosetta=arch -x86_64
