# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"

# zsh config
ZSH_THEME="robbyrussell"
DISABLE_AUTO_TITLE="true"

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(git tmux z yarn npm zsh-autosuggestions zsh-syntax-highlighting zsh-peco-history) 

source $ZSH/oh-my-zsh.sh

# aliases
source "${HOME}/.bash_aliases"

alias szshrc="source ${HOME}/.zshrc"

zsh_hist_fix () {
    mv ~/.zsh_history ~/.zsh_history_bad
    strings ~/.zsh_history_bad > ~/.zsh_history
    fc -R ~/.zsh_history
    rm ~/.zsh_history_bad
}

# Common dot stuff
source "${HOME}/.commonrc.sh"

# WSL
win10_username="13point5"
export win10="/mnt/c/Users/${win10_username}"
