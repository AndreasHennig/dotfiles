#!/bin/bash

SESSION_NAME="dev-env"

tmux has-session -t $SESSION_NAME 2>/dev/null

if [ $? != 0 ]; then
    # 1 wiki
    tmux new-session -d -s $SESSION_NAME -n "wiki"
    tmux send-keys -t $SESSION_NAME:1 'vim' C-m

    # 2 coding
    tmux new-window -t $SESSION_NAME -n 'coding'
    tmux send-keys -t $SESSION_NAME:2 'cd ~/gitRepos' C-m

    # 3 music
    tmux new-window -t $SESSION_NAME -n 'music'
    tmux send-keys -t $SESSION_NAME:3 'ncmpcpp' C-m

    # 4 files
    tmux new-window -t $SESSION_NAME -n 'files'
    tmux split-window -h -t $SESSION_NAME:4
    tmux send-keys -t $SESSION_NAME:4.1 'yazi' C-m
    tmux send-keys -t $SESSION_NAME:4.1 'cd ~/' C-m
    tmux send-keys -t $SESSION_NAME:4.2 'cd ~/' C-m
    tmux send-keys -t $SESSION_NAME:4.2 'yazi' C-m
fi

tmux attach -t $SESSION_NAME
