#!/usr/bin/sh

tmux rename-window "#$1"
tmux split-window -l 3 "python $HOME/bin/send.py $1"
clear; python $HOME/bin/chat.py $1 

