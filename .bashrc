#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

if [ -z "$WAYLAND_DISPLAY" ] && [ -n "$XDG_VTNR" ]; then
    exec niri-session
fi
