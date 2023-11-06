C_GRAY="\[\e[0;90m\]"
C_L_GRAY="\[\e[0;37m\]"
C_WHITE="\[\e[0;97m\]"
C_BLACK="\[\e[0;30m\]"
C_RED="\[\e[0;31m\]"
C_L_RED="\[\e[1;91m\]"
C_GREEN="\[\e[0;32m\]"
C_L_GREEN="\[\e[0;92m\]"
C_BROWN="\[\e[0;33m\]"
C_YELLOW="\[\e[0;93m\]"
C_BLUE="\[\e[0;34m\]"
C_L_BLUE="\[\e[0;94m\]"
C_PURPLE="\[\e[0;35m\]"
C_L_PURPLE="\[\e[0;95m\]"
C_CYAN="\[\e[0;36m\]"
C_L_CYAN="\[\e[0;96m\]"
C_ORANGE="\[\e[0;38;5;208m\]"
M_END="\[\e[m\]"

RUTA="${C_BROWN}\w${M_END}"
FIRSTLINE="${C_BROWN} >${M_END}"
SIMB="${C_ORANGE}☯${M_END}"

# Git Prompt Configuration
GIT_PS1_SHOWCONFLICTSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUPSTREAM=1
GITB="${C_ORANGE}\`__git_ps1\`${M_END}"

export PS1="${RUTA}${GITB} ${FIRSTLINE}\n${SIMB} "
export GIT_SSH_COMMAND="ssh -i ~/.ssh/id_rsa"
