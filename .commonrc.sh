# common env vars
export LANG=en_US.UTF-8
export EDITOR='vim'

# NeoVim
if ! command -v "nvim" >/dev/null 2>&1; then
    sudo apt-get install -y neovim 
    sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
fi

# Base16 Shell
BASE16_SHELL=$HOME/.config/base16-shell/
source $BASE16_SHELL/scripts/base16-oceanicnext.sh

# nvm stuff
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
