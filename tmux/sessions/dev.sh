#!/bin/bash

echo $1

function has-session {
    tmux has-session -t $1 2>/dev/null
}

if has-session $1; then
    echo "Session already exists"
else
    cd ~/projects/
    tmux new-session -d -s $1 'vim'
    tmux split-window -h -p 35
    tmux attach-session -d -t $1
fi
