#!/usr/bin/env bash

# Directory to use
DIR="$(pwd)"

# Session name
SESSION_NAME="dev-env"

# Create a new tmux session with the first window in the specified directory
if tmux has-session -t "$SESSION_NAME" 2>/dev/null; then
    if [[ -z $TMUX ]]; then 
        # Attach to the session
        tmux attach-session -t "$SESSION_NAME"
    else 
        tmux switch-client -t "$SESSION_NAME"
    fi
else 
    tmux new-session -d -s "$SESSION_NAME" -c "$DIR" -n "vim" "nvim ."
    # Create the second window for lazygit
    tmux new-window -d -t "$SESSION_NAME" -c "$DIR" -n "git" "lazygit"

    # Create the third window for a regular terminal
    tmux new-window -d -t "$SESSION_NAME" -c "$DIR" -n "commands"

    if [[ -z $TMUX ]]; then 
        # Attach to the session
        tmux attach-session -t "$SESSION_NAME"
    else 
        tmux switch-client -t "$SESSION_NAME"
    fi
fi
