local ret_status="%(?:%{$fg[green]%}✔ :%{$fg[red]%}✗ %s)"

function get_pwd() {
  echo "${PWD/$HOME/~}"
}

PR_RESET="%{$reset_color%}"

for COLOR in CYAN WHITE YELLOW MAGENTA BLACK BLUE RED DEFAULT GREEN GREY; do
	eval PR_$COLOR='%{$fg[${(L)COLOR}]%}'
 	eval PR_BRIGHT_$COLOR='%{$fg_bold[${(L)COLOR}]%}'
 done

VCS_DIRTY_COLOR="${PR_RESET}${PR_YELLOW}"
VCS_CLEAN_COLOR="${PR_RESET}${PR_GREEN}"
VCS_SUFIX_COLOR="${PR_RESET}${PR_RED}› ${PR_RESET}"

ZSH_THEME_GIT_PROMPT_PREFIX="${PR_RESET}${PR_RED}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="${VCS_DIRTY_COLOR} ✗${VCS_SUFIX_COLOR}"
ZSH_THEME_GIT_PROMPT_CLEAN="${VCS_CLEAN_COLOR} ✔${VCS_SUFIX_COLOR}"

ZSH_THEME_GIT_PROMPT_STAGED="%{$fg[red]%}%{●%G%}"
ZSH_THEME_GIT_PROMPT_CONFLICTS="%{$fg[red]%}%{✖%G%}"
ZSH_THEME_GIT_PROMPT_CHANGED="%{$fg[blue]%}%{✚%G%}"
ZSH_THEME_GIT_PROMPT_BEHIND="%{↓%G%}"
ZSH_THEME_GIT_PROMPT_AHEAD="%{↑%G%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{…%G%}"

PROMPT='${ret_status}${PR_GREEN}buckmin@${PR_BLUE}local: ${PR_CYAN}$(get_pwd) $(git_prompt_info)${PR_RESET}%# '


