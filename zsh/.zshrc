if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

export COLORTERM=truecolor

plugins=(
  git
  fzf
  docker
  golang
  rust
  python
  sudo
)

source $ZSH/oh-my-zsh.sh

# Powerlevel10k
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Environment
export EDITOR='nvim'
export VISUAL='nvim'
export LANG=en_US.UTF-8

export PATH="$HOME/.local/bin:$HOME/bin:/usr/local/bin:$PATH"
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

# History
export HISTSIZE=100000
export SAVEHIST=100000
setopt SHARE_HISTORY HIST_IGNORE_DUPS HIST_IGNORE_SPACE HIST_FIND_NO_DUPS

# TOOLS
# eza
export EZA_COLORS="di=1;94:ex=1;33"
alias ls='eza --icons --git'
alias ll='eza -lah --icons --git'
alias la='eza -a --icons'
alias lt='eza --tree --level=2 --icons'

# zoxide
eval "$(zoxide init zsh)"

# fzf
export FZF_DEFAULT_OPTS='--height 70% --layout=reverse --border'

# pnpm
alias pn="pnpm"
alias pni="pnpm install"
alias pnd="pnpm dev"
alias pnb="pnpm build"

# uv
alias uvact="source .venv/bin/activate 2>/dev/null || source venv/bin/activate"
alias uvadd="uv add"
alias uvrun="uv run"

# Go
alias gmod="go mod tidy"
alias grun="go run ."
alias gtest="go test ./..."

# Rust
alias rc="cargo check"
alias rb="cargo build"
alias rr="cargo run"

# General
alias cls="clear"
alias mkdir="mkdir -p"
alias zshreload="source ~/.zshrc"

# Git
alias gst="git status"
alias lg="lazygit"

# Docker
alias dcu="docker compose up -d"
alias dcd="docker compose down"

# WSL
if grep -qi microsoft /proc/version; then
  alias explorer='explorer.exe .'
  alias code='zed .'
  alias winhome='cd /mnt/c/Users/$(whoami | tr -d "\r")'
fi

# Light Autosuggestions
if [[ -d ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions ]]; then
  source ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
  ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=cyan'
  ZSH_AUTOSUGGEST_USE_ASYNC=1
  ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=15
  ZSH_AUTOSUGGEST_STRATEGY=(history completion)
fi

unsetopt BEEP
