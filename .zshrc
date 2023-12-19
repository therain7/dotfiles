# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH="/Users/$USER/.local/bin:$PATH"
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export PATH="/opt/homebrew/opt/make/libexec/gnubin:$PATH"

export LANG="en_US.UTF-8"
export CC=$(which clang)
export CXX=$(which clang++)
export EDITOR="lvim"

alias lg='lazygit'
alias py='python3'
alias o='open'
alias lmrst='(){ limactl stop $1 && limactl start $1 ;}'
alias lm='lima'

alias rmf='rm -rf'
alias l='exa -al'
alias cat='bat'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(zoxide init zsh)"

# opam configuration
[[ ! -r /Users/therain/.opam/opam-init/init.zsh ]] || source /Users/therain/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

