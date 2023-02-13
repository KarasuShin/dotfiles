# disable homebrew auto update
export HOMEBREW_NO_AUTO_UPDSATE=1
export ZSH="$HOME/.oh-my-zsh"

# clash proxy
export https_proxy=http://127.0.0.1:7890;
export http_proxy=http://127.0.0.1:7890;
export all_proxy=socks5://127.0.0.1:7890;

plugins=(
  fast-syntax-highlighting
  git
  z
  zsh-autosuggestions
  zsh-completions
)

# use starship theme
eval "$(starship init zsh)"

source $ZSH/oh-my-zsh.sh

# alias
alias sz="source ~/.zshrc"
alias ip="ipconfig getifaddr en0"
alias cip="curl cip.cc"
alias vite="pnpm create vite"
alias l='exa -l --icons'
alias ls="exa --icons"
alias la="l -a"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# bun completions
[ -s "/Users/karasushin/.bun/_bun" ] && source "/Users/karasushin/.bun/_bun"

# pnpm
export PNPM_HOME="/Users/karasushin/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

# fnm
eval "$(fnm env --use-on-cd)"
