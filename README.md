# dotfiles — minimal

Minimal zsh + git + tmux setup, symlinked via [GNU stow](https://www.gnu.org/software/stow/).

## Install

```sh
# prereqs
brew install stow git neovim tmux fzf

# clone + symlink into $HOME
git clone git@github.com:13point5/dotfiles.git ~/dotfiles
cd ~/dotfiles
stow zsh git tmux

# make zsh the default shell (if it isn't already)
chsh -s $(which zsh)

# tmux plugin manager (then inside tmux press: prefix + I)
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

First zsh launch auto-installs [zinit](https://github.com/zdharma-continuum/zinit) and the plugins below.

## What's in here

- **zsh** — zinit, turbo-loaded plugins (autosuggestions, syntax-highlighting), minimal two-line git-aware prompt, lazy nvm, fzf
- **git** — name/email + nvim as editor
- **tmux** — Ctrl-a prefix, hjkl panes, sane splits, TPM

## Profile startup

Uncomment the `zmodload zsh/zprof` line at the top and `zprof` at the bottom of `~/.zshrc`, then open a new shell.

## Machine-local overrides

Drop machine-specific exports/aliases into `~/.zshrc.local` — it's sourced last and gitignored.
