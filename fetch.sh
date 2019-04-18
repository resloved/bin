#!/usr/bin/sh

# DISPLAY FETCH

bold=$(tput bold)
norm=$(tput sgr0)
base=$(tput setaf 6)

KERN=$(uname -rv | awk '{print $1;}')
VER="$HOME/bin/ver.sh"

echo -e "${bold}DISTRO\t${base}  ${norm}Arch Linux"
sleep 0.5
echo -e "${bold}WM\t$($VER i3-gaps)"
sleep 0.5
echo -e "${bold}KERNEL\t$($VER linux-zen)"
sleep 0.5
echo -e "${bold}ZSH${norm}\t$($VER zsh)"
sleep 0.5
echo -e "${bold}EMACS${norm}\t$($VER emacs)"
sleep 3
echo -e ""
