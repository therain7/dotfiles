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

export PATH=~/.local/bin:$PATH
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export PATH="/opt/homebrew/opt/make/libexec/gnubin:$PATH"

export LANG="en_US.UTF-8"
export EDITOR="lvim"
export BAT_THEME="Dracula"
export LIMA_WORKDIR=/home/therain

alias lg="lazygit"
alias py="python3"

alias o="open"
alias pdf="open -a sioyek"

alias rmf="rm -rf"
alias l="eza -al --group-directories-first"
alias cat="bat"
alias rgi="rg -i"

alias lm="lima"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(zoxide init zsh)"

# opam configuration
[[ ! -r /Users/therain/.opam/opam-init/init.zsh ]] || source /Users/therain/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

