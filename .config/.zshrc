# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

#Fetch Scripts

macchina

#Aliases 

## Package management 
alias pacout='pamac remove'
alias pacin='pamac install'
alias flatout='flatpak remove'
alias flatin='flatpak install'
alias pacup='pamac update'

## Navigation
alias ls='logo-ls -A -X'
alias cl='clear'
alias md='mkdir'
alias tc='touch'

## Shorcuts 
alias ht='htop'
alias rn='ranger'
alias muz='cd Music'
alias gc='git clone'
alias gd='gedit'

## Directory Shortcuts 
alias github='cd Documents/GitHub'
alias root='cd Documents/GitHub/Root'
alias shell='cd Documents/GitHub/shell'
alias cheat='cd Documents/GitHub/WEB-Cheatsheet'
alias program='cd Documents/GitHub/Code'

### Github Shortcuts
alias program-c++='cd Documents/GitHub/Code/C++'
alias program-web='cd Documents/GitHub/Code/Web-Programming'

## Config Shorcuts 
alias ala='cd ~/.config/alacritty/'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
