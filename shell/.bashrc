#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '


# Added by FastCR installer
export PATH="$HOME/.local/bin:$PATH"
. "$HOME/.cargo/env"
eval "$(starship init bash)"

alias fetch="clear && neofetch"

alias system='sudo pacman -Syu &&
sudo pacman -Rns $(pacman -Qdtq) 2>/dev/null &&
sudo paccache -ruk0 &&
yay -Sua'
