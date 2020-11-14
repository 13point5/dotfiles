# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"

# zsh config
ZSH_THEME="robbyrussell"
DISABLE_AUTO_TITLE="true"

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(git tmux yarn zsh-autosuggestions zsh-syntax-highlighting) 

source $ZSH/oh-my-zsh.sh

# aliases
source "${HOME}/.bash_aliases"
alias szshrc="source ${HOME}/.zshrc"

# Common dot stuff
source "${HOME}/.commonrc.sh"