#!/bin/bash

function has-session {
    tmux has-session -t $1 2>/dev/null
}

if has-session $1; then
    echo "Session already exists"
else
    cd ~/projects/t3bs/alas/neo-alas/
    tmux new-session -s $1\; split-window -h -p 30 \;
fi
