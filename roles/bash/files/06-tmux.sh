# Auto-start TMUX only if:
# - Not already in TMUX
# - Not running over SSH
# - In an interactive shell
if [ -z "$TMUX" ] && [ -z "$SSH_CONNECTION" ] && [ -t 1 ]; then
    tmux attach-session -t main || tmux new-session -s main
fi

