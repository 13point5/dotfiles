#!/usr/bin/env bash
# Minimal dotfiles setup (macOS).
# Uncomment what you need and run each block.

# --- prerequisites ---
# brew install stow git neovim tmux

# --- symlink configs into $HOME via stow ---
# cd ~/dotfiles
# stow zsh git tmux

# --- make zsh the default shell (if not already) ---
# chsh -s $(which zsh)

# --- tmux plugin manager (for .tmux.conf) ---
# git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# then inside tmux: prefix + I

# zinit installs itself on first zsh startup — no manual step needed.
