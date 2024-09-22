# T_STYLE_NORMAL=0 T_STYLE_BOLD=1 T_STYLE_UNDERLINE=4 T_STYLE_BLINK=5 T_STYLE_REVERSE=7
T_STYLE=0

T_MAIN_COLOR="38;2;120;180;240"
T_SECONDARY_COLOR="38;2;120;240;180"

C_RUTA="\[\033[${T_STYLE};${T_MAIN_COLOR}m\]"
C_SIMB="\[\033[${T_STYLE};${T_MAIN_COLOR}m\]"
C_GITB="\[\033[${T_STYLE};${T_SECONDARY_COLOR}m\]"
M_END="\[\033[m\]"

RUTA="${C_RUTA}\w${M_END}"
FIRSTLINE="${C_RUTA}>\n${M_END}"
SIMB="${C_SIMB}☯${M_END}"

GITB="${C_GITB}\`__git_ps1\`${M_END}"

# Activate VI mode
# bind 'set editing-mode vi'
# bind 'set keymap vi-command'
# bind 'set show-mode-in-prompt on'
# bind 'set vi-cmd-mode-string ":"'
# bind "set vi-ins-mode-string ☯"
# export PS1="${RUTA}${GITB} ${FIRSTLINE} "

export PS1="${RUTA}${GITB} ${FIRSTLINE}${SIMB} "
export GIT_SSH_COMMAND="ssh -i ~/.ssh/id_rsa"
