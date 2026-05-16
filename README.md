# dotfiles — minimal

Minimal zsh + git + tmux setup, symlinked via [GNU stow](https://www.gnu.org/software/stow/).

## Install

```sh
brew install stow
git clone git@github.com:13point5/dotfiles.git ~/dotfiles
cd ~/dotfiles
git checkout minimal
stow zsh git tmux
```

First zsh launch will auto-install [zinit](https://github.com/zdharma-continuum/zinit) and the three plugins below.

## What's in here

- **zsh** — zinit, turbo-loaded plugins (autosuggestions, history-substring-search, syntax-highlighting), minimal git-aware prompt, lazy nvm
- **git** — name/email + nvim as editor
- **tmux** — Ctrl-a prefix, hjkl panes, sane splits, TPM

## Profile startup

Uncomment the `zmodload zsh/zprof` line at the top and `zprof` at the bottom of `~/.zshrc`, then open a new shell.

## Machine-local overrides

Drop machine-specific exports/aliases into `~/.zshrc.local` — it's sourced last and gitignored.
