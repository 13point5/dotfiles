# common env vars
export LANG=en_US.UTF-8
export EDITOR='vim'

# Base16 Shell
BASE16_SHELL=$HOME/.config/base16-shell/
source $BASE16_SHELL/scripts/base16-oceanicnext.sh

# nvm stuff
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
