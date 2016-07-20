#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias la='ls -al'
alias emacs='emacsclient -c -a ""'
alias edit=emacs
alias plaidchat='plaidchat --force-device-scale-factor=2'

PS1='[\u@\h \W]\$ '

# 256 color support
[ -n "$FBTERM" ] && export TERM=fbterm

export ALTERNATE_EDITOR=""
export EDITOR=emacsclient
