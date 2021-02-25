export STYLE_BOLD=$(tput bold)
export STYLE_UL=$(tput smul)

# export STYLE_DIM=
export FG_BLACK=$(tput setaf 0)
export FG_RED=$(tput setaf 1)
export FG_GREEN=$(tput setaf 2)
export FG_YELLOW=$(tput setaf 3)
export FG_BLUE=$(tput setaf 4)
export FG_MAGENTA=$(tput setaf 5)
export FG_CYAN=$(tput setaf 6)
export FG_WHITE=$(tput setaf 7)

export BG_BLACK=$(tput setab 0)
export BG_RED=$(tput setab 1)
export BG_GREEN=$(tput setab 2)
export BG_YELLOW=$(tput setab 3)
export BG_BLUE=$(tput setab 4)
export BG_MAGENTA=$(tput setab 5)
export BG_CYAN=$(tput setab 6)
export BG_WHITE=$(tput setab 7)

export STYLE_COL_RESET=$(tput sgr0)

export X="${STYLE_COL_RESET}"
export B="${STYLE_BOLD}"
export U="${STYLE_UL}"
# export D= - A shortcut for $STYLE_DIM
# export W= - A style for warnings.
# export E= - A style for errors.

