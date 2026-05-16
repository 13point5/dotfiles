# Uncomment the next two lines (top + zprof at bottom) to profile startup
# zmodload zsh/zprof

# ---- History ----
HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000
setopt SHARE_HISTORY HIST_IGNORE_DUPS HIST_IGNORE_SPACE HIST_VERIFY \
       EXTENDED_HISTORY HIST_REDUCE_BLANKS INC_APPEND_HISTORY

# ---- Shell behaviour ----
setopt AUTO_CD            # type a dir name (or path) to cd into it
setopt INTERACTIVE_COMMENTS  # allow # comments at the prompt

# ---- Completion (rebuild dump at most once per day) ----
autoload -Uz compinit
if [ "$(date +'%j')" != "$(stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)" ]; then
    compinit
else
    compinit -C
fi

# ---- zinit (auto-install on first run) ----
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
if [ ! -d "$ZINIT_HOME/.git" ]; then
    mkdir -p "$(dirname "$ZINIT_HOME")"
    git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi
source "${ZINIT_HOME}/zinit.zsh"

# Plugins — turbo-loaded (async, after prompt shows)
zinit ice wait lucid atload"_zsh_autosuggest_start"
zinit light zsh-users/zsh-autosuggestions

# syntax-highlighting must be loaded last
zinit ice wait lucid atinit"zicompinit; zicdreplay"
zinit light zsh-users/zsh-syntax-highlighting

# ---- Plugin tuning ----
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
ZSH_AUTOSUGGEST_USE_ASYNC=1
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# ---- Two-line prompt: [path] on <branch> [indicator]  /  > ----
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' stagedstr   ' %F{green}+%f'
zstyle ':vcs_info:*' unstagedstr ' %F{red}✗%f'
zstyle ':vcs_info:git:*' formats       ' on %F{magenta}%b%f%c%u'
zstyle ':vcs_info:git:*' actionformats ' on %F{magenta}%b|%a%f%c%u'
setopt PROMPT_SUBST
PROMPT='%F{cyan}%~%f${vcs_info_msg_0_}
%F{green}>%f '

# ---- Env ----
export LANG=en_US.UTF-8
export EDITOR='nvim'
ulimit -n 4096

# ---- PATH ----
export PATH="$HOME/.local/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# ---- Lazy nvm (loads only when node/npm/npx/nvm is first called) ----
export NVM_DIR="$HOME/.nvm"
_load_nvm() {
    unset -f nvm node npm npx
    [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"
    [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \
        . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"
}
nvm()  { _load_nvm; nvm  "$@"; }
node() { _load_nvm; node "$@"; }
npm()  { _load_nvm; npm  "$@"; }
npx()  { _load_nvm; npx  "$@"; }

# ---- fzf (Ctrl-R fuzzy history, Ctrl-T file finder, Alt-C cd) ----
command -v fzf &>/dev/null && source <(fzf --zsh)

# ---- Aliases ----
[ -f ~/.zsh_aliases ] && source ~/.zsh_aliases

# ---- Local overrides (gitignored, machine-specific) ----
[ -f ~/.zshrc.local ] && source ~/.zshrc.local

# zprof  # uncomment with zmodload line at top to profile
