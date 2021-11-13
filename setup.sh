# One Dark theme
source terminal_theme.sh

# Essentials
sudo apt install -y git stow curl exa peco zsh tmux neovim

# z by Rupa
wget https://raw.githubusercontent.com/rupa/z/master/z.sh -P $HOME

# oh-my-zsh
# sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# chsh -s $(which zsh)
# git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
# git clone https://github.com/jimeh/zsh-peco-history.git ${ZSH_CUSTOM}/plugins/zsh-peco-history

# NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
