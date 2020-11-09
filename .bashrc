#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
alias ll='ls -la --color=auto'
alias vpn='sudo openvpn /etc/openvpn/hdm_mi_stud.ovpn'

neofetch
