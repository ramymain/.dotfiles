#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ "$(whoami)" = "root" ]] && return

export DOTFILES="$HOME/.dotfiles"
export CDPATH=.:\
~/code:\
~

[[ -z "$FUNCNEST" ]] && export FUNCNEST=100          # limits recursive functions, see 'man bash'

## Use the up and down arrow keys for finding a command in history
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

__ps1() {
  local P="$"
  local pink="\[\033[38;5;197m\]"
  local gray="\[\033[38;5;60m\]"
  local green="\[\033[38;5;154m\]"
  local blue="\[\033[38;5;81m\]"
  local orange="\[\033[38;5;214m\]"
  local x="\[$(tput sgr0)\]"
  local B=$(git branch --show-current 2>/dev/null)

  test -n "$B" && B="$gray($orange$B$gray)"
  PS1="$pink\u$gray$g@$green\h$gray:$blue\W$B$pink$ $x"
}
PROMPT_COMMAND=__ps1

#------------------------------------------------------------

alias ls='ls --color=auto'
alias ll='ls -lav --ignore=..'   # show long listing of all except ".."
alias l='ls -lav --ignore=.?*'   # show long listing but no hidden dotfiles except "."

alias g=git
alias d=docker
alias dc=docker-compose
alias c=clear
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias dot="cd $DOTFILES"
################################################################################
