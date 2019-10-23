#!/usr/bin/env bash

source ~/.dotfiles/helpers

source ~/.dotfiles/shell/gitstatus/gitstatus.prompt.sh

shopt -s promptvars

PS_INFO="${GREEN}\u${NC} at ${YELLOW}\h${NC} in ${PURPLE}[\w]${NC}"

PS1="${PS_INFO}${NC}"
PS1+=' ${GITSTATUS_PROMPT}'
PS1+="\n"
PS1+='\[\033[01;$((31+!$?*4))m\]'
PS1+="λ ${NC}"

PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\]$PS1"

export PS1="${PS1}"
