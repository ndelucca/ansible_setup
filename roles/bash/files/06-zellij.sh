# Auto-start Zellij only if:
# - Not already in Zellij
# - Not running over SSH
# - In an interactive shell
if [ -z "$ZELLIJ" ] && [ -z "$SSH_CONNECTION" ] && [ -t 1 ]; then
    zellij
fi

