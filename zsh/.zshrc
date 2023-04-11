# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"

# zsh config
ZSH_THEME="robbyrussell"
DISABLE_AUTO_TITLE="true"

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(git tmux rust z yarn npm zsh-autosuggestions zsh-syntax-highlighting zsh-peco-history) 

source $ZSH/oh-my-zsh.sh

# my dotfiles thingies
source "${HOME}/.bash_aliases"
source "${HOME}/.common.sh"

# zsh aliases and funcs
alias szshrc="source ${HOME}/.zshrc"

zsh_hist_fix () {
    mv ~/.zsh_history ~/.zsh_history_bad
    strings ~/.zsh_history_bad > ~/.zsh_history
    fc -R ~/.zsh_history
    rm ~/.zsh_history_bad
}

# Added by Amplify CLI binary installer
export PATH="$HOME/.amplify/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
